# set company "CIC"
# set designer "Student"
# set search_path      "/usr/cad/designkit/CBDK_IC_Contest_v2.5/SynopsysDC/db/ $search_path"
# set target_library   "slow.db"
# set link_library     "* $target_library dw_foundation.sldb"
# set symbol_library   "generic.sdb"
# set synthetic_library "dw_foundation.sldb"

# set hdlin_translate_off_skip_text "TRUE"
# set edifout_netlist_only "TRUE"
# set verilogout_no_tri true

# set hdlin_enable_presto_for_vhdl "TRUE"
# set sh_enable_line_editing true
# set sh_line_editing_mode emacs
# history keep 100
# alias h history

source .synopsys_dc.setup

#Path_Top:Verilog放置的位置
#Path_Syn:合成後report.txt檔案要放置的根位置，需自行在目錄下創建名為dc_out_file之資料夾
#Dump_file_name:合成後產生檔案之名字
set Path_Top		"./"
set Path_Syn		"../04_gate_level/"
set Dump_file_name "CONV_syn"

#設定Top module 名稱，需跟自行設計之電路的top module name相同
set Top				"CONV"
#Specify Clock，clock名需和top module中clk port相同
set Clk_pin			"clk"
# area-optimization之period
#set Clk_period		"5.778045"

# [ Read Design File ]
#如果設計有parameter設計，read_file指定不能用，需使用analyze + elaborate指令並自行更改路徑
# read_file -format verilog {/home/m103040049/HDL_HW/multiplier.v}
# current_design $Top
analyze -format verilog {
        /home/C109152323/Dexter/IC_Contest/2019_CONV/01_rtl/CONV.v
    }

elaborate $Top
current_design $Top

#檢查是否讀取成功
link

#讀取外部約束檔
source CONV.sdc

# [ Setting Clock Constraints, Combinational Circurt USED ]
# set_max_delay $Clk_period  -from [all_inputs] -to [all_outputs]
# create_clock -name $Clk_pin -period $Clk_period
                     
# [ Setting Clock Constraints ]
# create_clock -name $Clk_pin -period $Clk_period [get_ports $Clk_pin]
# set_fix_hold									[get_clocks $Clk_pin]
# set_dont_touch_network						    [get_clocks $Clk_pin]
# set_ideal_network								[get_ports $Clk_pin]

# Area Optimization
set_max_area 0

compile

#Change Naming Rule
# set bus_inference_style {%s[%d]}
# set bus_naming_style {%s[%d]}
# set hdlout_internal_busses true
# define_name_rules name_rule -allowed "A-Z a-z 0-9 _" -max_length 255 -type cell
# define_name_rules name_rule -allowed "A-Z a-z 0-9 _[]" -max_length 255 -type net
# define_name_rules name_rule -map {{"\\*cell\\*""cell"}} 
change_names -hierarchy -rule verilog
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule
remove_unconnected_ports -blast_buses [get_cells -hierarchical *]

report_area -hier -nosplit
report_timing -significant_digits 6 -sort_by group
report_power -analysis_effort low

#Report
report_timing -path full -delay max -significant_digits 6 -sort_by group > $Path_Syn/1.timing_report_${Dump_file_name}.txt
report_area -hier -nosplit > $Path_Syn/2.area_report_${Dump_file_name}.txt
report_power -analysis_effort low > $Path_Syn/3.power_report_${Dump_file_name}.txt
report_qor  >  $Path_Syn/CONV.qor 

#Write out
write -hierarchy -format ddc -output $Path_Syn/${Dump_file_name}.ddc
write -format verilog -hierarchy -output $Path_Syn/${Dump_file_name}.v
write_sdf -version 2.1 -context verilog $Path_Syn/${Dump_file_name}.sdf
write_sdc $Path_Syn/${Dump_file_name}.sdc


exit
