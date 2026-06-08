source .synopsys_dc.setup
#Read All Files

read_file -format verilog  /home/C109152323/Dexter/IC_Contest/2022_JAM/01_rtl/JAM.v
#read_file -format sverilog  geofence.v
current_design JAM
link

#Setting Clock Constraints
source -echo -verbose /home/C109152323/Dexter/IC_Contest/2022_JAM/03_compile/JAM.sdc
check_design
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

#Synthesis all design
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc
change_names -rules verilog -hierarchy
set_fix_hold [all_clocks]
compile

write -format ddc     -hierarchy -output "/home/C109152323/Dexter/IC_Contest/2022_JAM/04_gate_level/JAM_syn.ddc"
write_sdf -version 1.0  "/home/C109152323/Dexter/IC_Contest/2022_JAM/04_gate_level/JAM_syn.sdf"
write -format verilog -hierarchy -output "/home/C109152323/Dexter/IC_Contest/2022_JAM/04_gate_level/JAM_syn.v"

report_area > "/home/C109152323/Dexter/IC_Contest/2022_JAM/04_gate_level/area.log"
report_timing > "/home/C109152323/Dexter/IC_Contest/2022_JAM/04_gate_level/timing.log"
report_timing -delay max > /home/C109152323/Dexter/IC_Contest/2022_JAM/04_gate_level/setup_timing.log 
report_timing -delay min > /home/C109152323/Dexter/IC_Contest/2022_JAM/04_gate_level/hold_timing.log 
report_qor   >  "/home/C109152323/Dexter/IC_Contest/2022_JAM/04_gate_level/JAM_syn.qor"

exit