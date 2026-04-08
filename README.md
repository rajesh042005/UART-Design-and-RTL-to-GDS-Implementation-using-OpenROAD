# UART-Design-and-RTL-to-GDS-Implementation-using-OpenROAD
This project implements a UART in Verilog with FSM-based transmitter, receiver, and baud generator. Pipelining improves timing performance. It demonstrates full RTL-to-GDS flow using OpenROAD, including synthesis, placement, CTS, routing, and timing analysis, along with the commands required to run the flow.

---

## UART Module Overview

This project implements a UART (Universal Asynchronous Receiver/Transmitter) in Verilog, designed for easy integration with FPGA or ASIC designs. It supports configurable clock frequency and baud rate via parameters. The top module, uart_top, combines three submodules:

  - Baud Rate Generator (baud_rate_generator) – Produces precise timing ticks based on the system clock and desired baud rate (with 16× oversampling). These ticks  synchronize both the transmitter and receiver.
  
  - Transmitter (uart_transmitter) – Sends 8-bit data serially over the tx line. It has an FSM with four states: IDLE, START, DATA, and STOP. A pipeline stage      ensures accurate sampling at the midpoint of each bit, improving timing reliability. The module also provides tx_busy to indicate ongoing transmission.

  - Receiver (uart_receiver) – Captures serial data from the rx line and outputs 8-bit parallel data. It includes input synchronization and a pipelined sampling stage to reduce metastability issues. The FSM also has IDLE, START, DATA, and STOP states, and asserts rx_done when a full byte is received correctly.

The design uses pipelined stages in both transmission and reception for precise bit sampling, reducing timing errors and making it robust for standard UART communication. Parameters such as CLOCK_FREQ and BAUD_RATE make the module flexible for different system clocks and communication speeds.

---

## Block Diagram

<img width="1202" height="892" alt="image" src="https://github.com/user-attachments/assets/059caabc-88a6-4ff3-b13d-e5f7f06d782c" />

---

## Key Features
- UART design using Verilog (TX + RX + Baud Generator)
- FSM-based architecture
- Pipelined design for improved timing
- 16x oversampling technique
- Full RTL-to-GDS flow using OpenROAD

---

## Architecture
The design consists of:
- Baud Rate Generator
- UART Transmitter (FSM-based)
- UART Receiver (FSM-based with synchronization)
- Top module integrating all blocks

---

## OpenROAD Flow
The design is implemented using OpenROAD RTL-to-GDS flow:

- Synthesis  
- Floorplanning  
- Placement  
- Clock Tree Synthesis (CTS)  
- Routing  
- Timing Analysis  

Technology: Sky130HD  
Platform: Linux  

---

## Project Structure

- `rtl/` → Verilog design  
- `config/` → OpenROAD config  
- `constraints/` → SDC file  
- `results/` → Final outputs  
- `reports/` → Reports

---

## How to Run (Adding UART Design to ORFS)

This section explains how to integrate and run the UART design using OpenROAD-flow-scripts (ORFS).
> (assuming the path - OpenROAD-flow-scripts/flow )

### Step 1: Add Verilog Source Files
```
cd designs/src  
mkdir uart_new  
cd uart_new  
vi uart.v
```

Paste UART RTL code.

---

### Step 2: Create Config File
```
cd ../../sky130hd  
mkdir uart_new  
cd uart_new  
vi config.mk  
```
Add:
```
export PLATFORM = sky130hd
export DESIGN_NAME = uart_top

export VERILOG_FILES = ./designs/src/uart_new/uart.v
export SDC_FILE = ./designs/sky130hd/uart_new/constraint.sdc

export DIE_AREA = 0 0 500 500
export CORE_AREA = 50 50 450 450
```
---

### Step 3: Add Constraints
vi constraint.sdc  

Add:
```
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
```

---

### Step 4: Run Flow
```
make DESIGN_CONFIG=./designs/sky130hd/uart_new/config.mk
```
---

## Results & Design Flow
  
### Floorplan
- Output: `2_floorplan.odb`
  
  <img width="1918" height="1021" alt="image" src="https://github.com/user-attachments/assets/75381812-6930-4f2a-b964-986057974976" />
>Floorplan initialized with placement rows and power distribution grid, prior to standard cell placement.

### Placement
- Output: `3_place.odb`
  
  <img width="1918" height="1021" alt="image" src="https://github.com/user-attachments/assets/302f9e85-b445-4c74-bf3b-8f2558fc60c3" />
>Standard cells placed and globally optimized across the core area, achieving an initial balanced distribution for timing and congestion.

### Clock Tree Synthesis (CTS)
- Output: `4_cts.odb`

  <img width="1919" height="1016" alt="image" src="https://github.com/user-attachments/assets/c94daf9b-c14f-4d23-9ad7-57de5ddbaa78" />
>Clock tree synthesized with buffered clock distribution network, minimizing skew and ensuring balanced timing across all sequential elements.

- Core_Clock_Layout
  
  <img width="602" height="602" alt="image" src="https://github.com/user-attachments/assets/74150322-25d5-4074-a9e5-3087a9dc60b2" />
>Detailed core clock layout illustrating buffered clock paths and balanced branching for uniform clock signal propagation.

### Routing
- Output: `5_route.odb`
   
  <img width="605" height="603" alt="image" src="https://github.com/user-attachments/assets/26c8ecec-8b00-4d68-b5aa-60178b2edd99" />
>Fully routed design with completed global and detailed routing, ensuring all signal connections meet design rules and connectivity requirements.

### Final Design
- Outputs: `6_final.odb` 

  <img width="1919" height="1018" alt="image" src="https://github.com/user-attachments/assets/ffe26331-a35e-4548-b088-cc1c377b158d" />
>Final optimized layout after timing closure, with improved slack and verified design integrity.

- Outputs: `6_final.gds`
  
  <img width="1918" height="1021" alt="image" src="https://github.com/user-attachments/assets/10358681-3269-4032-aaa6-ff3f20501978" />
>Generated GDSII layout representing the tape-out ready physical design for fabrication.

### Final Worst Path
- Output: `final_worst_path.webp`
   
  <img width="603" height="602" alt="image" src="https://github.com/user-attachments/assets/a98422f6-4c29-4c6c-b306-eea40b7e8fab" />
>Visualization of the critical (worst-case) timing path, highlighting delay-sensitive regions across the design.

---

This demonstrates the complete RTL-to-GDS flow using OpenROAD, covering all stages from synthesis to final physical design.

---

## Tools Used
- Verilog HDL  
- OpenROAD  
- OpenROAD-flow-scripts  
- Linux
- Klayout

---


$$\color{red}{\textbf{\textit{Physical Designing}}}$$

---
