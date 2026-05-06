# set search_path      "/usr/cad/designkit/CBDK_IC_Contest_v2.5/SynopsysDC/db/ $search_path"
source .synopsys_dc.setup

#Path_Top:Verilog放置的位置
#Path_Syn:合成後report.txt檔案要放置的根位置，需自行在目錄下創建名為dc_out_file之資料夾
#Dump_file_name:合成後產生檔案之名字
set Path_Top		"./"
set Path_Syn		"../04_gate_level"
set Dump_file_name "SET_syn"

#設定Top module 名稱，需跟自行設計之電路的top module name相同
set Top				"SET"

# [ Read Design File ]
#如果設計有parameter設計，read_file指定不能用，需使用analyze + elaborate指令並自行更改路徑
# read_file -format verilog {/home/m103040049/HDL_HW/multiplier.v}
# current_design $Top
analyze -format verilog {
        /home/C109152323/Dexter/IC_Contest/2015_SET/01_rtl/SET.v
    }

elaborate $Top
current_design $Top
#檢查是否讀取成功
link

source SET.sdc

# Area Optimization
set_max_area 0

compile

#Change Naming Rule
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
report_qor  >  $Path_Syn/SET.qor 

#Write out
write -hierarchy -format ddc -output $Path_Syn/${Dump_file_name}.ddc
write -format verilog -hierarchy -output $Path_Syn/${Dump_file_name}.v
write_sdf -version 2.1 -context verilog $Path_Syn/${Dump_file_name}.sdf
write_sdc $Path_Syn/${Dump_file_name}.sdc

exit
