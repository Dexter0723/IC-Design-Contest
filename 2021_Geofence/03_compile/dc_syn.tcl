source .synopsys_dc.setup
#Read All Files

read_file -format verilog  /home/C109152323/Dexter/IC_Contest/2021_Geofence/01_rtl/geofence.v
read_file -format verilog  /home/C109152323/Dexter/IC_Contest/2021_Geofence/01_rtl/c_sqrt.v
read_file -format verilog  /home/C109152323/Dexter/IC_Contest/2021_Geofence/01_rtl/s_sqrt.v
#read_file -format sverilog  geofence.v
current_design geofence
link

#Setting Clock Constraints
source -echo -verbose /home/C109152323/Dexter/IC_Contest/2021_Geofence/03_compile/geofence.sdc
check_design
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

#Synthesis all design
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc
compile

write -format ddc     -hierarchy -output "/home/C109152323/Dexter/IC_Contest/2021_Geofence/04_gate_level/geofence_syn.ddc"
write_sdf -version 1.0  "/home/C109152323/Dexter/IC_Contest/2021_Geofence/04_gate_level/geofence_syn.sdf"
write -format verilog -hierarchy -output "/home/C109152323/Dexter/IC_Contest/2021_Geofence/04_gate_level/geofence_syn.v"
report_area > "/home/C109152323/Dexter/IC_Contest/2021_Geofence/04_gate_level/area.log"
report_timing > "/home/C109152323/Dexter/IC_Contest/2021_Geofence/04_gate_level/timing.log"
report_qor   >  "/home/C109152323/Dexter/IC_Contest/2021_Geofence/04_gate_level/geofence_syn.qor"

exit