#!/bin/tcsh

vcs -R -debug_access+all +define+TB1\
/home/C109152323/Dexter/IC_Contest/2017_DT/02_tb/pre_sim/testfixture.v \
/home/C109152323/Dexter/IC_Contest/2017_DT/01_rtl/DT.v \
-full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+DT.fsdb +v2k 

