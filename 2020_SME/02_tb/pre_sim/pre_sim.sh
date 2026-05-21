#!/bin/tcsh

vcs -R -debug_access+all \
/home/C109152323/Dexter/IC_Contest/2020_SME/02_tb/pre_sim/tb_term.sv \
#/home/C109152323/Dexter/IC_Contest/2020_SME/01_rtl/SME_eric.v \
/home/C109152323/Dexter/IC_Contest/2020_SME/01_rtl/SME.v \
-full64 -sverilog\
+access+r  +vcs+fsdbon +fsdb+mda +fsdbfile+SME.fsdb +v2k 