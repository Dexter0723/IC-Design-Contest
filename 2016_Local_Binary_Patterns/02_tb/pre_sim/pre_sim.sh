#!/bin/tcsh

vcs -R -debug_access+all \
/home/C109152323/Dexter/IC_Contest/2016_Local_Binary_Patterns/02_tb/pre_sim/testfixture.v \
/home/C109152323/Dexter/IC_Contest/2016_Local_Binary_Patterns/01_rtl/LBP.v \
-full64 \

+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+LBP.fsdb +v2k +access+r

