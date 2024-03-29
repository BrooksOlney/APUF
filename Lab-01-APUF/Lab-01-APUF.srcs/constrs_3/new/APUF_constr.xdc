set_property LOC SLICE_X3Y26 [get_cells A/PCSPUF/bot7/muxOut]
set_property LOC SLICE_X3Y26 [get_cells A/PCSPUF/bot7/c6LUT]
set_property LOC SLICE_X3Y26 [get_cells A/PCSPUF/bot7/d6LUT]
set_property BEL A6LUT [get_cells A/PCSPUF/bot7/c6LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/bot7/d6LUT]
set_property BEL F7AMUX [get_cells A/PCSPUF/bot7/muxOut]
#set_property PACKAGE_PIN M9 [get_ports clk]

# clock pin
set_property -dict {PACKAGE_PIN M9 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 83.333 -name sys_clk_pin -waveform {0.000 41.667} [get_ports clk]

## USB UART
## Note: Port names are from the perspoctive of the FPGA.
set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports rx]
set_property -dict {PACKAGE_PIN L12 IOSTANDARD LVCMOS33} [get_ports tx]


#create_pblock pblock_A
#add_cells_to_pblock [get_pblocks pblock_A] [get_cells -quiet [list A]]
#resize_pblock [get_pblocks pblock_A] -add {SLICE_X0Y7:SLICE_X41Y49}
#resize_pblock [get_pblocks pblock_A] -add {DSP48_X0Y4:DSP48_X1Y19}
#resize_pblock [get_pblocks pblock_A] -add {RAMB18_X0Y4:RAMB18_X2Y19}
#resize_pblock [get_pblocks pblock_A] -add {RAMB36_X0Y2:RAMB36_X2Y9}


#set_max_delay -from [get_cells signal_reg] -to [get_pins -hierarchical {*tx_data_reg[*]/D*}] 10.000
#report_timing -from [get_pins *signal_reg/C] -to [get_pins A/A*/DFF/Q_reg/D] -delay_type min_max -max_paths 10 -sort_by group -input_pins -routable_nets
set_property BEL A6LUT [get_cells A/PCSPUF/*/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/*/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/*/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/*/dbar_LUT]

set_property BEL A6LUT [get_cells A/PCSPUF/*7/c6LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/*7/d6LUT]
set_property BEL F7AMUX [get_cells A/PCSPUF/*7/muxOut]

set_property BEL D6LUT [get_cells A/topEnableLUT]
set_property LOC SLICE_X1Y32 [get_cells A/topEnableLUT]
set_property BEL F7AMUX [get_cells A/topEnableMUX]
set_property LOC SLICE_X1Y32 [get_cells A/topEnableMUX]
set_property BEL D6LUT [get_cells A/botEnableLUT]
set_property LOC SLICE_X1Y30 [get_cells A/botEnableLUT]
set_property BEL F7AMUX [get_cells A/botEnableMUX]
set_property LOC SLICE_X1Y30 [get_cells A/botEnableMUX]
set_property BEL C6LUT [get_cells A/primaryEnableLUT]
set_property LOC SLICE_X2Y31 [get_cells A/primaryEnableLUT]
set_property BEL F7AMUX [get_cells A/primaryEnableMUX]
set_property LOC SLICE_X2Y31 [get_cells A/primaryEnableMUX]
set_property BEL A6LUT [get_cells A/PCSPUF/top0/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/top0/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top0/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top0/dbar_LUT]
set_property LOC SLICE_X2Y32 [get_cells A/PCSPUF/top0/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top0/c6LUT]
set_property LOC SLICE_X3Y32 [get_cells A/PCSPUF/top0/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top0/d6LUT]
set_property LOC SLICE_X3Y32 [get_cells A/PCSPUF/top0/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/top0/muxOut]
set_property LOC SLICE_X3Y32 [get_cells A/PCSPUF/top0/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/bot0/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/bot0/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot0/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot0/dbar_LUT]
set_property LOC SLICE_X2Y30 [get_cells A/PCSPUF/bot0/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot0/c6LUT]
set_property LOC SLICE_X3Y30 [get_cells A/PCSPUF/bot0/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot0/d6LUT]
set_property LOC SLICE_X3Y30 [get_cells A/PCSPUF/bot0/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/bot0/muxOut]
set_property LOC SLICE_X3Y30 [get_cells A/PCSPUF/bot0/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/top1/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/top1/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top1/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top1/dbar_LUT]
set_property LOC SLICE_X4Y32 [get_cells A/PCSPUF/top1/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top1/c6LUT]
set_property LOC SLICE_X5Y32 [get_cells A/PCSPUF/top1/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top1/d6LUT]
set_property LOC SLICE_X5Y32 [get_cells A/PCSPUF/top1/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/top1/muxOut]
set_property LOC SLICE_X5Y32 [get_cells A/PCSPUF/top1/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/bot1/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/bot1/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot1/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot1/dbar_LUT]
set_property LOC SLICE_X4Y30 [get_cells A/PCSPUF/bot1/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot1/c6LUT]
set_property LOC SLICE_X5Y30 [get_cells A/PCSPUF/bot1/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot1/d6LUT]
set_property LOC SLICE_X5Y30 [get_cells A/PCSPUF/bot1/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/bot1/muxOut]
set_property LOC SLICE_X5Y30 [get_cells A/PCSPUF/bot1/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/top2/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/top2/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top2/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top2/dbar_LUT]
set_property LOC SLICE_X6Y32 [get_cells A/PCSPUF/top2/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top2/c6LUT]
set_property LOC SLICE_X7Y32 [get_cells A/PCSPUF/top2/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top2/d6LUT]
set_property LOC SLICE_X7Y32 [get_cells A/PCSPUF/top2/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/top2/muxOut]
set_property LOC SLICE_X7Y32 [get_cells A/PCSPUF/top2/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/bot2/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/bot2/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot2/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot2/dbar_LUT]
set_property LOC SLICE_X6Y30 [get_cells A/PCSPUF/bot2/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot2/c6LUT]
set_property LOC SLICE_X7Y30 [get_cells A/PCSPUF/bot2/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot2/d6LUT]
set_property LOC SLICE_X7Y30 [get_cells A/PCSPUF/bot2/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/bot2/muxOut]
set_property LOC SLICE_X7Y30 [get_cells A/PCSPUF/bot2/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/top3/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/top3/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top3/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top3/dbar_LUT]
set_property LOC SLICE_X8Y32 [get_cells A/PCSPUF/top3/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top3/c6LUT]
set_property LOC SLICE_X9Y32 [get_cells A/PCSPUF/top3/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top3/d6LUT]
set_property LOC SLICE_X9Y32 [get_cells A/PCSPUF/top3/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/top3/muxOut]
set_property LOC SLICE_X9Y32 [get_cells A/PCSPUF/top3/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/bot3/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/bot3/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot3/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot3/dbar_LUT]
set_property LOC SLICE_X8Y30 [get_cells A/PCSPUF/bot3/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot3/c6LUT]
set_property LOC SLICE_X9Y30 [get_cells A/PCSPUF/bot3/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot3/d6LUT]
set_property LOC SLICE_X9Y30 [get_cells A/PCSPUF/bot3/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/bot3/muxOut]
set_property LOC SLICE_X9Y30 [get_cells A/PCSPUF/bot3/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/top4/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/top4/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top4/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top4/dbar_LUT]
set_property LOC SLICE_X8Y28 [get_cells A/PCSPUF/top4/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top4/c6LUT]
set_property LOC SLICE_X9Y28 [get_cells A/PCSPUF/top4/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top4/d6LUT]
set_property LOC SLICE_X9Y28 [get_cells A/PCSPUF/top4/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/top4/muxOut]
set_property LOC SLICE_X9Y28 [get_cells A/PCSPUF/top4/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/bot4/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/bot4/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot4/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot4/dbar_LUT]
set_property LOC SLICE_X8Y26 [get_cells A/PCSPUF/bot4/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot4/c6LUT]
set_property LOC SLICE_X9Y26 [get_cells A/PCSPUF/bot4/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot4/d6LUT]
set_property LOC SLICE_X9Y26 [get_cells A/PCSPUF/bot4/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/bot4/muxOut]
set_property LOC SLICE_X9Y26 [get_cells A/PCSPUF/bot4/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/top5/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/top5/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top5/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top5/dbar_LUT]
set_property LOC SLICE_X6Y28 [get_cells A/PCSPUF/top5/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top5/c6LUT]
set_property LOC SLICE_X7Y28 [get_cells A/PCSPUF/top5/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top5/d6LUT]
set_property LOC SLICE_X7Y28 [get_cells A/PCSPUF/top5/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/top5/muxOut]
set_property LOC SLICE_X7Y28 [get_cells A/PCSPUF/top5/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/bot5/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/bot5/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot5/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot5/dbar_LUT]
set_property LOC SLICE_X6Y26 [get_cells A/PCSPUF/bot5/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot5/c6LUT]
set_property LOC SLICE_X7Y26 [get_cells A/PCSPUF/bot5/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot5/d6LUT]
set_property LOC SLICE_X7Y26 [get_cells A/PCSPUF/bot5/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/bot5/muxOut]
set_property LOC SLICE_X7Y26 [get_cells A/PCSPUF/bot5/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/top6/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/top6/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top6/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top6/dbar_LUT]
set_property LOC SLICE_X4Y28 [get_cells A/PCSPUF/top6/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top6/c6LUT]
set_property LOC SLICE_X5Y28 [get_cells A/PCSPUF/top6/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top6/d6LUT]
set_property LOC SLICE_X5Y28 [get_cells A/PCSPUF/top6/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/top6/muxOut]
set_property LOC SLICE_X5Y28 [get_cells A/PCSPUF/top6/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/bot6/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/bot6/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot6/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot6/dbar_LUT]
set_property LOC SLICE_X4Y26 [get_cells A/PCSPUF/bot6/*bar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot6/c6LUT]
set_property LOC SLICE_X5Y26 [get_cells A/PCSPUF/bot6/c6LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot6/d6LUT]
set_property LOC SLICE_X5Y26 [get_cells A/PCSPUF/bot6/d6LUT]
set_property BEL F7BMUX [get_cells A/PCSPUF/bot6/muxOut]
set_property LOC SLICE_X5Y26 [get_cells A/PCSPUF/bot6/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/top7/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/top7/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/top7/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/top7/dbar_LUT]
set_property LOC SLICE_X2Y28 [get_cells A/PCSPUF/top7/*bar_LUT]
set_property BEL A6LUT [get_cells A/PCSPUF/top7/c6LUT]
set_property LOC SLICE_X3Y28 [get_cells A/PCSPUF/top7/c6LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/top7/d6LUT]
set_property LOC SLICE_X3Y28 [get_cells A/PCSPUF/top7/d6LUT]
set_property BEL F7AMUX [get_cells A/PCSPUF/top7/muxOut]
set_property LOC SLICE_X3Y28 [get_cells A/PCSPUF/top7/muxOut]
set_property BEL A6LUT [get_cells A/PCSPUF/bot7/abar_LUT]
set_property BEL B6LUT [get_cells A/PCSPUF/bot7/bbar_LUT]
set_property BEL C6LUT [get_cells A/PCSPUF/bot7/cbar_LUT]
set_property BEL D6LUT [get_cells A/PCSPUF/bot7/dbar_LUT]
set_property LOC SLICE_X2Y26 [get_cells A/PCSPUF/bot7/*bar_LUT]


#set_property BEL B5LUT [get_cells A/PCSPUF/r_INST_0_i_1]
#set_property LOC SLICE_X1Y27 [get_cells A/PCSPUF/r_INST_0_i_1]
#set_property BEL B6LUT [get_cells A/PCSPUF/r_INST_0]
#set_property LOC SLICE_X1Y27 [get_cells A/PCSPUF/r_INST_0]

#set_property BEL A5LUT [get_cells A/PCSPUF/r_INST_0_i_1]
#set_property LOC SLICE_X1Y27 [get_cells A/PCSPUF/r_INST_0_i_1]
#set_property BEL A6LUT [get_cells A/PCSPUF/r_INST_0]
#set_property LOC SLICE_X1Y27 [get_cells A/PCSPUF/r_INST_0]


set_property BEL AFF [get_cells A/PCSPUF/DFF/Q_reg]
set_property LOC SLICE_X1Y27 [get_cells A/PCSPUF/DFF/Q_reg]
