#!/bin/tcsh

vcs -R -debug_access+all \
/home/C109152323/Dexter/IC_Contest/2015_SET/02_tb/pre_sim/testfixture.v \
/home/C109152323/Dexter/IC_Contest/2015_SET/01_rtl/SET.v \
-full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+SET.fsdb +v2k +define+MD4

# /home/C109152323/Dexter/NSYSU/HW5/02_tb/pre_sim/pre_sim.v \
# /home/C109152323/Dexter/NSYSU/HW5/01_rtl/Convolution_Accelerator.v \

# /home/C109152323/Dexter/NSYSU/HW5/02_tb/pre_sim/LB_tb.v \
# /home/C109152323/Dexter/NSYSU/HW5/01_rtl/LB.v \

# /home/C109152323/Dexter/NSYSU/HW5/02_tb/pre_sim/PE_tb.v \
# /home/C109152323/Dexter/NSYSU/HW5/01_rtl/PE.v \

# /home/C109152323/Dexter/NSYSU/HW5/02_tb/pre_sim/AT_tb.v \
# /home/C109152323/Dexter/NSYSU/HW5/01_rtl/AT.v \

# /home/C109152323/Dexter/NSYSU/HW5/02_tb/pre_sim/ReLU_tb.v \
# /home/C109152323/Dexter/NSYSU/HW5/01_rtl/ReLU.v \


