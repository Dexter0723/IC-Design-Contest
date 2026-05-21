source .synopsys_dc.setup
#Read All Files
read_file /home/C109152323/Dexter/IC_Contest/2020_SME/01_rtl/SME.v
current_design SME
link

#Setting Clock Constraints
source -echo -verbose SME.sdc
check_design
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

#Synthesis all design
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc
compile

write -format ddc     -hierarchy -output "/home/C109152323/Dexter/IC_Contest/2020_SME/04_gate_level/SME_syn.ddc"
write_sdf -version 1.0  "/home/C109152323/Dexter/IC_Contest/2020_SME/04_gate_level/SME_syn.sdf"
write -format verilog -hierarchy -output "/home/C109152323/Dexter/IC_Contest/2020_SME/04_gate_level/SME_syn.v"
report_area > "/home/C109152323/Dexter/IC_Contest/2020_SME/04_gate_level/area.log"
report_timing > "/home/C109152323/Dexter/IC_Contest/2020_SME/04_gate_level/timing.log"
report_qor   >  "/home/C109152323/Dexter/IC_Contest/2020_SME/04_gate_level/SME_syn.qor"

exit