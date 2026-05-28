#!/bin/tcsh

vcs -R -debug_access+all \
/home/C109152323/Dexter/IC_Contest/2021_Geofence/02_tb/pre_sim/tb.sv \
/home/C109152323/Dexter/IC_Contest/2021_Geofence/01_rtl/geofence.v \
/home/C109152323/Dexter/IC_Contest/2021_Geofence/01_rtl/c_sqrt.v \
/home/C109152323/Dexter/IC_Contest/2021_Geofence/01_rtl/s_sqrt.v \
-full64 -sverilog\
+access+r  +vcs+fsdbon +fsdb+mda +fsdbfile+Geofence.fsdb +v2k 