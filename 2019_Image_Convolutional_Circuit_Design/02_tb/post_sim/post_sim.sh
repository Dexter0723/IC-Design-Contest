#!/bin/tcsh

vcs -R -debug_access=all \
/home/C109152323/Dexter/IC_Contest/2019_CONV/02_tb/post_sim/testfixture.v \
/home/C109152323/Dexter/IC_Contest/2019_CONV/04_gate_level/CONV_syn.v \
/home/C109152323/Dexter/IC_Contest/2019_CONV/tsmc13_neg.v \
-full64 \
+access=r +vcs+fsdbon +fsdb+mda +fsdbfile +CONV.fsdb +v2k +neg_tchk +define+SDF
