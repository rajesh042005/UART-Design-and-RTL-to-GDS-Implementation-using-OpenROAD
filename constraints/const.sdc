current_design uart_top

set clk_name core_clock
set clock_port_name clk

set clk_period 1.5
set clk_io_pct 0.2

set clk_port [get_ports clk]
create_clock -name core_clock -period 1.5 [get_ports clk]

set non_clock_inputs [all_inputs -no_clocks]

set_input_delay [expr $clk_period * $clk_io_pct] -clock $clk_name $non_clock_inputs
set_output_delay [expr $clk_period * $clk_io_pct] -clock $clk_name [all_outputs]
