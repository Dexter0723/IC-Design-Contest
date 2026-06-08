#!/bin/tcsh

vcs -R -debug_access+all +define+P3\
/home/C109152323/Dexter/IC_Contest/2022_JAM/02_tb/pre_sim/tb.sv \
/home/C109152323/Dexter/IC_Contest/2022_JAM/01_rtl/JAM.v \
-full64 -sverilog\
+access+r  +vcs+fsdbon +fsdb+mda +fsdbfile+JAM.fsdb +v2k 