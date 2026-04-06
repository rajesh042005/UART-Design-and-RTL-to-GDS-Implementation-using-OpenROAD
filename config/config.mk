export PLATFORM =sky130hd
export DESIGN_NAME = uart_top

export VERILOG_FILES =/home/user/ORFS/OpenROAD-flow-scripts/flow/designs/src/uart_new/uart.v
export SDC_FILE = /home/user/ORFS/OpenROAD-flow-scripts/flow/designs/sky130hd/uart_new/const.sdc

export SYNTH_SIZING = 1
export SYTHN_BUFFERING = 1
export SYNTH_STRATEGY= "DELAY 4"
export HOLD_FIXING = 1

export DIE_AREA = 0 0 100 100
export CORE_AREA = 10 10 90 90

