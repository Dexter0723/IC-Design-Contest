#!/bin/tcsh

vcs -R -debug_access+all +define+tb3\
/home/C109152323/Dexter/IC_Contest/2018_Huffman_Coding/02_tb/pre_sim/tb.v \
/home/C109152323/Dexter/IC_Contest/2018_Huffman_Coding/01_rtl/huffman.v \
-full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+Huffman.fsdb +v2k 

