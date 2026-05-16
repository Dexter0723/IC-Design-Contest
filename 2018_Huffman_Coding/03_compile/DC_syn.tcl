source .synopsys_dc.setup
# Read all Files
read_verilog /home/C109152323/Dexter/IC_Contest/2018_Huffman_Coding/01_rtl/huffman.v
current_design huffman
link

# Setting Clock Constraits
source -echo -verbose ./huffman.sdc

# Synthesis all design
compile -map_effort high -area_effort high
compile -map_effort high -area_effort high -inc

write -format ddc  -hierarchy -output "/home/C109152323/Dexter/IC_Contest/2018_Huffman_Coding/04_gate_level/huffman_syn.ddc"
write_sdf /home/C109152323/Dexter/IC_Contest/2018_Huffman_Coding/04_gate_level/huffman_syn.sdf
write_file -format verilog -hierarchy -output /home/C109152323/Dexter/IC_Contest/2018_Huffman_Coding/04_gate_level/huffman_syn.v
report_area > /home/C109152323/Dexter/IC_Contest/2018_Huffman_Coding/04_gate_level/area.log
report_timing > /home/C109152323/Dexter/IC_Contest/2018_Huffman_Coding/04_gate_level/timing.log
report_qor > /home/C109152323/Dexter/IC_Contest/2018_Huffman_Coding/04_gate_level/huffman_syn.qor

exit