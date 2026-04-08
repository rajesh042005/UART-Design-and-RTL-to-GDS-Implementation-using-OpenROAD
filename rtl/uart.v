module uart_top #(
    parameter CLOCK_FREQ = 50000000,  // 50 MHz default
    parameter BAUD_RATE = 9600         // 9600 bps default
)(
    input wire clk,               // System clock
    input wire reset_n,           // Active low reset
    
    // UART interface
    input wire rx,                // UART RX
    output wire tx,               // UART TX
    
    // User interface
    input wire [7:0] tx_data,     // Data to transmit
    input wire tx_start,          // Start transmission
    output wire tx_busy,          // Transmitter busy
    
    output wire [7:0] rx_data,    // Received data
    output wire rx_done           // Data received flag
);

    // Internal signals
    wire baud_tick;
    
    // Instantiate baud rate generator
    baud_rate_generator #(
        .CLOCK_FREQ(CLOCK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) baud_gen (
        .clk(clk),
        .reset_n(reset_n),
        .baud_tick(baud_tick)
    );
    
    // Instantiate transmitter
    uart_transmitter tx_module (
        .clk(clk),
        .reset_n(reset_n),
        .baud_tick(baud_tick),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_busy(tx_busy),
        .tx(tx)
    );
    
    // Instantiate receiver
    uart_receiver rx_module (
        .clk(clk),
        .reset_n(reset_n),
        .baud_tick(baud_tick),
        .rx(rx),
        .rx_done(rx_done),
        .rx_data(rx_data)
    );

endmodule


module baud_rate_generator #(
    parameter CLOCK_FREQ = 100000000, // 100 MHz default clock
    parameter BAUD_RATE = 9600        // 9600 bps default baud rate
)(
    input wire clk,           // Input clock
    input wire reset_n,       // Active low reset
    output reg baud_tick      // Tick at baud rate
);

    // Calculate the counter limit based on clock frequency and baud rate
    // For a standard 16x oversampling
    localparam integer BAUD_DIVISOR = CLOCK_FREQ / (BAUD_RATE * 16);
    localparam integer COUNTER_WIDTH = $clog2(BAUD_DIVISOR);
    
    // Counter to generate baud rate
    reg [COUNTER_WIDTH-1:0] counter;
    
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            counter <= 0;
            baud_tick <= 0;
        end else begin
            if (counter == BAUD_DIVISOR - 1) begin
                counter <= 0;
                baud_tick <= 1;
            end else begin
                counter <= counter + 1;
                baud_tick <= 0;
            end
        end
    end

endmodule

module uart_transmitter(

    input wire clk,             

    input wire reset_n,         

    input wire baud_tick,       

    input wire tx_start,        

    input wire [7:0] tx_data,   

    output reg tx_busy,         

    output reg tx               

);



    // State definitions

    localparam IDLE  = 2'b00;

    localparam START = 2'b01;

    localparam DATA  = 2'b10;

    localparam STOP  = 2'b11;



    reg [1:0] state;

    reg [3:0] tick_count;

    reg [2:0] bit_count;

    reg [7:0] data_reg;



    // Pipeline register (Stage-1)

    reg tx_sample_stage;



    // =========================

    // 🔹 STAGE 1: Detect sampling event

    // =========================

    always @(posedge clk or negedge reset_n) begin

        if (!reset_n)

            tx_sample_stage <= 0;

        else if (baud_tick && tick_count == 15)

            tx_sample_stage <= 1;

        else

            tx_sample_stage <= 0;

    end



    // =========================

    // 🔹 STAGE 2: Main FSM

    // =========================

    always @(posedge clk or negedge reset_n) begin

        if (!reset_n) begin

            state <= IDLE;

            tick_count <= 0;

            bit_count <= 0;

            data_reg <= 0;

            tx <= 1;  

            tx_busy <= 0;

        end else begin

            case (state)



                // ================= IDLE =================

                IDLE: begin

                    tx <= 1;

                    tick_count <= 0;

                    bit_count <= 0;



                    if (tx_start && !tx_busy) begin

                        data_reg <= tx_data;

                        state <= START;

                        tx_busy <= 1;

                    end else begin

                        tx_busy <= 0;

                    end

                end



                // ================= START =================

                START: begin

                    tx <= 0;



                    if (baud_tick) begin

                        if (tick_count == 15) begin

                            tick_count <= 0;

                            state <= DATA;

                        end else begin

                            tick_count <= tick_count + 1;

                        end

                    end

                end



                // ================= DATA (PIPELINED) =================

                DATA: begin

                    tx <= data_reg[0];



                    // Stage 1: counter update

                    if (baud_tick) begin

                        tick_count <= tick_count + 1;

                    end



                    // Stage 2: pipelined operations

                    if (tx_sample_stage) begin

                        tick_count <= 0;

                        data_reg <= {1'b0, data_reg[7:1]};



                        if (bit_count == 7) begin

                            bit_count <= 0;

                            state <= STOP;

                        end else begin

                            bit_count <= bit_count + 1;

                        end

                    end

                end



                // ================= STOP =================

                STOP: begin

                    tx <= 1;



                    if (baud_tick) begin

                        if (tick_count == 15) begin

                            tick_count <= 0;

                            state <= IDLE;

                            tx_busy <= 0;

                        end else begin

                            tick_count <= tick_count + 1;

                        end

                    end

                end



                default: state <= IDLE;



            endcase

        end

    end



endmodule
module uart_receiver(
    input wire clk,
    input wire reset_n,
    input wire baud_tick,
    input wire rx,
    output reg rx_done,
    output reg [7:0] rx_data
);

    // State definitions
    localparam IDLE = 2'b00;
    localparam START = 2'b01;
    localparam DATA = 2'b10;
    localparam STOP = 2'b11;
    
    reg [1:0] state;
    reg [3:0] tick_count;
    reg [2:0] bit_count;
    reg [7:0] data_reg;

    reg rx_sync, rx_filtered;

    // NEW PIPELINE REGISTER
    reg sample_stage;   // stage 1 result

    // Synchronizer
    always @(posedge clk) begin
        rx_sync <= rx;
        rx_filtered <= rx_sync;
    end

    // =========================
    // STAGE 1: LIGHT LOGIC
    // =========================
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            sample_stage <= 0;
        end else begin
            if (baud_tick && (tick_count == 15)) begin
                sample_stage <= 1;   // capture sampling event
            end else begin
                sample_stage <= 0;
            end
        end
    end

    // =========================
    // 🔹 STAGE 2: MAIN FSM
    // =========================
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            state <= IDLE;
            tick_count <= 0;
            bit_count <= 0;
            data_reg <= 0;
            rx_done <= 0;
            rx_data <= 0;
        end else begin
            case (state)

                IDLE: begin
                    rx_done <= 0;
                    tick_count <= 0;
                    bit_count <= 0;

                    if (rx_filtered == 0) begin
                        state <= START;
                    end
                end

                START: begin
                    if (baud_tick) begin
                        if (tick_count == 7) begin
                            if (rx_filtered == 0) begin
                                tick_count <= 0;
                                state <= DATA;
                            end else begin
                                state <= IDLE;
                            end
                        end else begin
                            tick_count <= tick_count + 1;
                        end
                    end
                end

                // PIPELINED DATA STATE
                DATA: begin
                    if (baud_tick) begin
                        tick_count <= tick_count + 1;
                    end

                    // Use pipelined signal
                    if (sample_stage) begin
                        tick_count <= 0;
                        data_reg <= {rx_filtered, data_reg[7:1]};

                        if (bit_count == 7) begin
                            bit_count <= 0;
                            state <= STOP;
                        end else begin
                            bit_count <= bit_count + 1;
                        end
                    end
                end

                STOP: begin
                    if (baud_tick) begin
                        if (tick_count == 15) begin
                            if (rx_filtered == 1) begin
                                rx_data <= data_reg;
                                rx_done <= 1;
                            end
                            state <= IDLE;
                        end else begin
                            tick_count <= tick_count + 1;
                        end
                    end
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule
