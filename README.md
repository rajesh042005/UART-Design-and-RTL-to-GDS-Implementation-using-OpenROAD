<h1 align="center">UART RTL-to-GDS Implementation using OpenROAD</h1>

<div align="center">

<img src="https://img.shields.io/badge/Flow-RTL--to--GDS-blue?style=flat&logo=verilog"/>
<img src="https://img.shields.io/badge/Tool-OpenROAD-orange?style=flat"/>
<img src="https://img.shields.io/badge/Language-Verilog-green?style=flat"/>
<img src="https://img.shields.io/badge/Platform-Linux-lightgrey?style=flat"/>
<img src="https://img.shields.io/badge/Tech-Sky130HD-blueviolet?style=flat"/>

<br>

<!-- <img src="https://img.shields.io/github/stars/rajesh042005/UART-Design-and-RTL-to-GDS-Implementation-using-OpenROAD?style=social"/>
<img src="https://img.shields.io/github/forks/rajesh042005/UART-Design-and-RTL-to-GDS-Implementation-using-OpenROAD?style=social"/> -->
<img src="https://img.shields.io/github/issues/rajesh042005/UART-Design-and-RTL-to-GDS-Implementation-using-OpenROAD"/>
<img src="https://img.shields.io/github/license/rajesh042005/UART-Design-and-RTL-to-GDS-Implementation-using-OpenROAD"/>

</div>

---

<p align="center">
A complete RTL-to-GDS implementation of a UART in Verilog using OpenROAD, demonstrating synthesis, placement, CTS, routing, and timing closure in an ASIC design flow.
</p>

<!-- # UART-Design-and-RTL-to-GDS-Implementation-using-OpenROAD
This project implements a UART in Verilog with FSM-based transmitter, receiver, and baud generator. Pipelining improves timing performance. It demonstrates full RTL-to-GDS flow using OpenROAD, including synthesis, placement, CTS, routing, and timing analysis, along with the commands required to run the flow. -->

---

## UART Module Overview

This UART design is modular and consists of three key blocks:

- **Baud Rate Generator**  
  Generates timing ticks using 16× oversampling based on system clock and baud rate.

- **UART Transmitter**  
  FSM-based design with states: `IDLE → START → DATA → STOP`.  
  Uses pipelining to ensure accurate bit sampling and reliable transmission.

- **UART Receiver**  
  Includes input synchronization and pipelined sampling to reduce metastability.  
  Outputs valid data using `rx_done` signal after successful reception.

The design is parameterized (`CLOCK_FREQ`, `BAUD_RATE`) for flexibility across different systems.

---

## Block Diagram

<p align="center">
  <img src="https://github.com/user-attachments/assets/059caabc-88a6-4ff3-b13d-e5f7f06d782c" width="70%">
</p>

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

<div align="center">
  <pre>
Verilog RTL  
↓  
Synthesis (Yosys)  
↓  
Floorplanning  
↓  
Placement  
↓  
Clock Tree Synthesis (CTS)  
↓  
Routing  
↓  
GDSII (Final Layout) 
  </pre>
</div>

---

## Project Structure

- `rtl/` → Verilog source code  
- `config/` → OpenROAD configuration  
- `constraints/` → Timing constraints (SDC)  
- `results/` → Final physical design outputs  
- `reports/` → Timing and synthesis reports  

---

## How to Run (Adding UART Design to ORFS)

This section explains how to integrate and run the UART design using OpenROAD-flow-scripts (ORFS).
> (assuming the path - OpenROAD-flow-scripts/flow )

### 🔹 Step 1: Add Verilog Source Files
```
cd designs/src  
mkdir uart_new  
cd uart_new  
vi uart.v
```

Paste UART RTL code.

---

### 🔹 Step 2: Create Config File
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

### 🔹 Step 3: Add Constraints
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

### 🔹 Step 4: Run Flow
```
make DESIGN_CONFIG=./designs/sky130hd/uart_new/config.mk
```
---

## Results & Design Flow
  This section shows stage-wise outputs from the OpenROAD physical design flow:
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
>Final optimized layout after timing closure with improved slack and verified design integrity.

- Outputs: `6_final.gds`
  
  <img width="1918" height="1021" alt="image" src="https://github.com/user-attachments/assets/10358681-3269-4032-aaa6-ff3f20501978" />
>Generated GDSII layout representing the tape-out ready physical design for fabrication.

### Final Worst Path
- Output: `final_worst_path.webp`
   
  <img width="603" height="602" alt="image" src="https://github.com/user-attachments/assets/a98422f6-4c29-4c6c-b306-eea40b7e8fab" />
>Visualization of the critical (worst-case) timing path, highlighting delay-sensitive regions across the design.

---

## Tools Used
- Verilog 
- OpenROAD   
- Linux
- Klayout

---
<p align="center">
This demonstrates the complete RTL-to-GDS flow using OpenROAD, covering all stages from synthesis to final physical design.
</p>


