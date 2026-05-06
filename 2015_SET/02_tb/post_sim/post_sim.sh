#!/bin/tcsh

vcs -R -debug_access+all \
/home/C109152323/Dexter/IC_Contest/2015_SET/02_tb/post_sim/testfixture.v \
/home/C109152323/Dexter/IC_Contest/2015_SET/04_gate_level/SET_syn.v \
/usr/cad/designkit/CBDK_IC_Contest_v2.5/Verilog/tsmc13_neg.v \
-full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+SET.fsdb +v2k +neg_tchk +define+SDF +define+MD1
#+vcs+fsdbon +fsdb+mda +fsdbfile+FLP.fsdb 
# +notimingcheck 
#-R Compile 後立刻 Run
#-debug_access+all 允許模擬器在模擬期間存取所有的訊號與變數

#-full64 以 64 位元模式 執行 VCS 編譯器與模擬器
#+access+r 允許模擬器在模擬期間讀取所有的訊號與變數
#+vcs+fsdbon 啟用 VCS 的 FSDB 波形輸出功能
#+fsdb+mda 啟用 FSDB 的 MDA（Multi-Dimensional Analysis）功能，允許在波形檔中儲存多維度的訊號資料
#+fsdbfile+FLP.fsdb 指定 FSDB 波形檔的名稱為 FLP.fsdb
#+v2k 告訴模擬器啟用 Verilog-2001 的語法支援
#+neg_tchk 允許模擬器在讀取 SDF
