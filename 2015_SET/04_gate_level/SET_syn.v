/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Wed Apr 29 00:54:53 2026
/////////////////////////////////////////////////////////////


module SET_DW01_inc_0_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2XL U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, N141,
         N144, N145, N177, N180, N181, N210, N213, N216, N217, N232, N233,
         N234, N235, N240, N241, N242, N243, N263, N264, N265, N266, N267,
         N268, N269, N270, N335, N336, N337, N338, N339, N340, N341, N342,
         N343, n58, n60, n63, n65, n66, n69, n70, n75, n77, n78, n79, n80, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n92, n93, n96, n97, n98, n100,
         n101, n104, n105, n107, n108, n112, n114, n115, n117, n118, n119,
         n123, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n139, n140, n1410, n1450, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n162, n163, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n1770, n178, n179,
         n184, n185, n189, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n209, n2100, n211, n215, n2170, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n2320, n2330, n237,
         n239, n2400, n2410, n2420, n2430, n244, n245, n246, n247, n248, n249,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n2630, n2640, n2650, n2660, n2670, n2680, n2690, n2700, n271, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n3370, N2090,
         N208, N206, N205, N204, N202, N1730, N1720, N1700, N1690, N1680, N166,
         N137, N1360, N1340, N1330, N1320, N1300, mult_124_3_n3, mult_124_3_n1,
         mult_128_3_n3, mult_128_3_n1, mult_132_3_n3, mult_132_3_n1,
         mult_132_2_n3, mult_132_2_n1, mult_132_n3, mult_132_n1, mult_128_2_n3,
         mult_128_2_n1, mult_128_n3, mult_128_n1, mult_124_2_n3, mult_124_2_n1,
         mult_124_n3, mult_124_n1, n347, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433;
  wire   [2:0] state;
  wire   [2:0] next_state;
  wire   [3:0] x;
  wire   [2:0] y;
  wire   [2:1] dx_A;
  wire   [2:1] dy_A;
  wire   [2:1] dx_B;
  wire   [2:1] dy_B;
  wire   [2:1] dx_C;
  wire   [2:1] dy_C;

  DFFRX4 candidate_reg_1_ ( .D(n281), .CK(clk), .RN(n399), .Q(n442), .QN(n258)
         );
  DFFRX4 candidate_reg_0_ ( .D(n280), .CK(clk), .RN(n399), .Q(n443), .QN(n259)
         );
  DFFRX4 candidate_reg_2_ ( .D(n279), .CK(clk), .RN(n399), .Q(n441), .QN(n260)
         );
  DFFRX4 candidate_reg_3_ ( .D(n278), .CK(clk), .RN(n399), .Q(n440), .QN(n261)
         );
  DFFRX4 candidate_reg_4_ ( .D(n277), .CK(clk), .RN(n399), .Q(n439), .QN(n262)
         );
  DFFRX4 candidate_reg_5_ ( .D(n276), .CK(clk), .RN(n399), .Q(n438), .QN(n2630) );
  DFFRX4 candidate_reg_6_ ( .D(n275), .CK(clk), .RN(n399), .Q(n437), .QN(n2640) );
  DFFRX4 candidate_reg_7_ ( .D(n274), .CK(clk), .RN(n399), .Q(n436), .QN(n2650) );
  OAI2BB2X4 U20 ( .B0(n2650), .B1(n362), .A0N(N270), .A1N(n78), .Y(n274) );
  OAI2BB2X4 U21 ( .B0(n2640), .B1(n362), .A0N(N269), .A1N(n78), .Y(n275) );
  OAI2BB2X4 U22 ( .B0(n2630), .B1(n362), .A0N(N268), .A1N(n78), .Y(n276) );
  OAI2BB2X4 U23 ( .B0(n262), .B1(n362), .A0N(N267), .A1N(n78), .Y(n277) );
  OAI2BB2X4 U24 ( .B0(n261), .B1(n362), .A0N(N266), .A1N(n78), .Y(n278) );
  OAI2BB2X4 U25 ( .B0(n260), .B1(n362), .A0N(N265), .A1N(n78), .Y(n279) );
  OAI2BB2X4 U26 ( .B0(n259), .B1(n362), .A0N(N263), .A1N(n78), .Y(n280) );
  OAI2BB2X4 U27 ( .B0(n258), .B1(n362), .A0N(N264), .A1N(n78), .Y(n281) );
  OAI22X4 U32 ( .A0(n401), .A1(state[0]), .B0(n82), .B1(n424), .Y(n84) );
  OA22X4 U34 ( .A0(state[1]), .A1(n85), .B0(n86), .B1(n428), .Y(n82) );
  OA21X4 U45 ( .A0(n85), .A1(n96), .B0(n87), .Y(n86) );
  NAND2X4 U46 ( .A(n85), .B(n96), .Y(n87) );
  AOI2BB2X4 U47 ( .B0(n97), .B1(N177), .A0N(N181), .A1N(n98), .Y(n96) );
  OAI22X4 U49 ( .A0(N180), .A1(n431), .B0(n100), .B1(n101), .Y(n97) );
  AOI2BB2X4 U55 ( .B0(n104), .B1(N141), .A0N(N145), .A1N(n105), .Y(n85) );
  OAI22X4 U82 ( .A0(n411), .A1(n132), .B0(n119), .B1(n133), .Y(dy_C[1]) );
  XOR2X4 U84 ( .A(n130), .B(n135), .Y(n132) );
  OAI22X4 U161 ( .A0(n409), .A1(n198), .B0(n185), .B1(n199), .Y(dx_C[1]) );
  SET_DW01_inc_0_DW01_inc_2 r493 ( .A({candidate[7:1], n443}), .SUM({N270, 
        N269, N268, N267, N266, N265, N264, N263}) );
  ADDHXL mult_124_3_U2 ( .A(radius[9]), .B(mult_124_3_n3), .CO(mult_124_3_n1), 
        .S(N144) );
  DFFRX1 state_reg_2_ ( .D(next_state[2]), .CK(clk), .RN(n399), .Q(state[2]), 
        .QN(n387) );
  DFFRX1 valid_reg ( .D(n282), .CK(clk), .RN(n399), .Q(n435), .QN(n347) );
  DFFRX1 busy_reg ( .D(n273), .CK(clk), .RN(n399), .Q(n434), .QN(n2660) );
  DFFSX1 x_reg_0_ ( .D(N335), .CK(clk), .SN(n399), .Q(x[0]), .QN(n418) );
  DFFRX1 state_reg_1_ ( .D(next_state[1]), .CK(clk), .RN(n399), .Q(state[1]), 
        .QN(n428) );
  DFFRX1 x_reg_2_ ( .D(N337), .CK(clk), .RN(n399), .Q(x[2]), .QN(n416) );
  DFFRX1 x_reg_3_ ( .D(N338), .CK(clk), .RN(n399), .Q(x[3]), .QN(n415) );
  DFFRX1 state_reg_0_ ( .D(next_state[0]), .CK(clk), .RN(n399), .Q(state[0]), 
        .QN(n424) );
  DFFSX2 y_reg_0_ ( .D(n2680), .CK(clk), .SN(n399), .Q(y[0]), .QN(n423) );
  DFFRX2 y_reg_3_ ( .D(n271), .CK(clk), .RN(n399), .Q(n2670), .QN(n420) );
  DFFRX2 y_reg_2_ ( .D(n2700), .CK(clk), .RN(n399), .Q(y[2]), .QN(n421) );
  DFFRX2 y_reg_1_ ( .D(n2690), .CK(clk), .RN(n399), .Q(y[1]), .QN(n422) );
  DFFRX2 x_reg_1_ ( .D(N336), .CK(clk), .RN(n399), .Q(x[1]), .QN(n417) );
  INVX1 U309 ( .A(n173), .Y(n405) );
  INVX6 U310 ( .A(n1410), .Y(n407) );
  ADDHX1 U311 ( .A(dx_C[1]), .B(mult_132_n3), .CO(mult_132_n1), .S(N204) );
  OAI21X2 U312 ( .A0(n408), .A1(n156), .B0(n153), .Y(n147) );
  NOR2X2 U313 ( .A(n380), .B(n140), .Y(n150) );
  OR2X4 U314 ( .A(n406), .B(n224), .Y(n359) );
  NOR2BX2 U315 ( .AN(n168), .B(n162), .Y(n172) );
  INVX4 U316 ( .A(n163), .Y(n404) );
  OAI21X2 U317 ( .A0(n410), .A1(n200), .B0(n197), .Y(n191) );
  CLKINVX1 U318 ( .A(n195), .Y(n410) );
  CLKAND2X3 U319 ( .A(N216), .B(n433), .Y(n92) );
  NOR2X4 U320 ( .A(N177), .B(n97), .Y(n98) );
  AND2X2 U321 ( .A(dy_B[1]), .B(N1700), .Y(mult_128_2_n3) );
  AND2X4 U322 ( .A(dx_C[1]), .B(N202), .Y(mult_132_n3) );
  OR2X2 U323 ( .A(n163), .B(n1770), .Y(n366) );
  OAI2BB2X4 U324 ( .B0(n420), .B1(central[19]), .A0N(n369), .A1N(n370), .Y(
        n163) );
  ADDHX1 U325 ( .A(dy_C[1]), .B(mult_132_2_n3), .CO(mult_132_2_n1), .S(N208)
         );
  AND2X4 U326 ( .A(dy_C[1]), .B(N206), .Y(mult_132_2_n3) );
  OR2X2 U327 ( .A(central[9]), .B(n422), .Y(n153) );
  OR2X4 U328 ( .A(central[17]), .B(n422), .Y(n175) );
  INVX3 U329 ( .A(n151), .Y(n408) );
  NAND2X2 U330 ( .A(central[17]), .B(n422), .Y(n173) );
  NOR2X1 U331 ( .A(n381), .B(n118), .Y(n128) );
  NAND2X2 U332 ( .A(central[9]), .B(n422), .Y(n151) );
  CLKINVX1 U333 ( .A(n351), .Y(n221) );
  XOR2X1 U334 ( .A(n222), .B(n227), .Y(n224) );
  AO21X2 U335 ( .A0(n147), .A1(n150), .B0(n140), .Y(n158) );
  CLKINVX1 U336 ( .A(n223), .Y(n364) );
  INVX3 U337 ( .A(n211), .Y(n406) );
  NAND2X1 U338 ( .A(central[1]), .B(n422), .Y(n129) );
  AO21X1 U339 ( .A0(n125), .A1(n128), .B0(n118), .Y(n136) );
  CLKINVX1 U340 ( .A(central[7]), .Y(n354) );
  XOR2X1 U341 ( .A(central[7]), .B(x[3]), .Y(n355) );
  OAI22X1 U342 ( .A0(n404), .A1(n170), .B0(n171), .B1(n163), .Y(dy_A[2]) );
  XNOR2X2 U343 ( .A(N1680), .B(N1720), .Y(n431) );
  CLKXOR2X4 U344 ( .A(n375), .B(n376), .Y(N177) );
  XOR2X1 U345 ( .A(n373), .B(n374), .Y(N213) );
  NAND2X4 U346 ( .A(n371), .B(n372), .Y(n90) );
  NOR2X4 U347 ( .A(N141), .B(n104), .Y(n105) );
  INVX3 U348 ( .A(n119), .Y(n411) );
  CLKINVX1 U349 ( .A(n185), .Y(n409) );
  OR2X1 U350 ( .A(central[13]), .B(n417), .Y(n223) );
  INVX4 U351 ( .A(n77), .Y(n361) );
  INVX12 U352 ( .A(n361), .Y(n362) );
  AND2X2 U353 ( .A(N180), .B(n431), .Y(n100) );
  ADDHX1 U354 ( .A(radius[5]), .B(mult_128_3_n3), .CO(mult_128_3_n1), .S(N180)
         );
  NAND2X1 U355 ( .A(central[18]), .B(n421), .Y(n168) );
  OAI32XL U356 ( .A0(n417), .A1(x[2]), .A2(n418), .B0(n254), .B1(n416), .Y(
        N242) );
  AND2XL U357 ( .A(central[14]), .B(n416), .Y(n382) );
  AND2XL U358 ( .A(central[6]), .B(n416), .Y(n384) );
  CLKAND2X2 U359 ( .A(central[22]), .B(n416), .Y(n383) );
  OAI2BB2X2 U360 ( .B0(n420), .B1(central[11]), .A0N(n139), .A1N(n158), .Y(
        n1410) );
  NAND2BX2 U361 ( .AN(central[16]), .B(y[0]), .Y(n178) );
  NAND2BX2 U362 ( .AN(central[8]), .B(y[0]), .Y(n156) );
  NAND2BX1 U363 ( .AN(central[0]), .B(y[0]), .Y(n134) );
  XNOR2XL U364 ( .A(n422), .B(y[0]), .Y(N233) );
  NAND2X2 U365 ( .A(central[21]), .B(n417), .Y(n2430) );
  OR2X4 U366 ( .A(n211), .B(n225), .Y(n360) );
  XOR2X1 U367 ( .A(n226), .B(n227), .Y(n225) );
  BUFX12 U368 ( .A(n442), .Y(candidate[1]) );
  OR2X2 U369 ( .A(n3370), .B(n397), .Y(N339) );
  BUFX12 U370 ( .A(n434), .Y(busy) );
  BUFX12 U371 ( .A(n437), .Y(candidate[6]) );
  BUFX12 U372 ( .A(n438), .Y(candidate[5]) );
  BUFX12 U373 ( .A(n439), .Y(candidate[4]) );
  BUFX12 U374 ( .A(n440), .Y(candidate[3]) );
  BUFX12 U375 ( .A(n441), .Y(candidate[2]) );
  BUFX12 U376 ( .A(n436), .Y(candidate[7]) );
  BUFX12 U377 ( .A(n443), .Y(candidate[0]) );
  INVX12 U378 ( .A(n347), .Y(valid) );
  OAI22X1 U379 ( .A0(n402), .A1(n2400), .B0(n2410), .B1(n2330), .Y(dx_A[2]) );
  OAI2BB2X4 U380 ( .B0(N217), .B1(n89), .A0N(n90), .A1N(N213), .Y(n88) );
  NOR2X8 U381 ( .A(N213), .B(n90), .Y(n89) );
  OR2X1 U382 ( .A(central[1]), .B(n422), .Y(n131) );
  OR2X8 U383 ( .A(n402), .B(n246), .Y(n349) );
  OR2X4 U384 ( .A(n2330), .B(n247), .Y(n350) );
  NAND2X4 U385 ( .A(n349), .B(n350), .Y(dx_A[1]) );
  INVX6 U386 ( .A(n2330), .Y(n402) );
  XOR2XL U387 ( .A(n248), .B(n249), .Y(n247) );
  AND2X8 U388 ( .A(dx_A[1]), .B(N1300), .Y(mult_124_n3) );
  ADDHX2 U389 ( .A(dx_A[1]), .B(mult_124_n3), .CO(mult_124_n1), .S(N1320) );
  OAI22X1 U390 ( .A0(n406), .A1(n218), .B0(n219), .B1(n211), .Y(dx_B[2]) );
  OAI2BB2X4 U391 ( .B0(n415), .B1(central[15]), .A0N(n209), .A1N(n228), .Y(
        n211) );
  NOR2BX2 U392 ( .AN(central[13]), .B(x[1]), .Y(n351) );
  NOR2X1 U393 ( .A(n403), .B(n248), .Y(n352) );
  CLKINVX1 U394 ( .A(n245), .Y(n353) );
  OR2X2 U395 ( .A(n352), .B(n353), .Y(n239) );
  NAND2BX2 U396 ( .AN(central[20]), .B(x[0]), .Y(n248) );
  OR2X2 U397 ( .A(central[21]), .B(n417), .Y(n245) );
  OR2X8 U398 ( .A(n92), .B(n93), .Y(n372) );
  OR2X2 U399 ( .A(N216), .B(n433), .Y(n371) );
  XNOR2X2 U400 ( .A(N204), .B(N208), .Y(n433) );
  XOR2X1 U401 ( .A(n196), .B(n201), .Y(n198) );
  NAND2X1 U402 ( .A(n195), .B(n197), .Y(n201) );
  OAI2BB2X4 U403 ( .B0(n355), .B1(n356), .A0N(x[3]), .A1N(n354), .Y(n185) );
  AOI21X2 U404 ( .A0(n191), .A1(n194), .B0(n184), .Y(n356) );
  NOR2X2 U405 ( .A(n425), .B(n79), .Y(n357) );
  NOR2X2 U406 ( .A(state[2]), .B(n80), .Y(n358) );
  OR2X6 U407 ( .A(n357), .B(n358), .Y(n78) );
  INVX1 U408 ( .A(n83), .Y(n425) );
  AOI32X4 U409 ( .A0(state[1]), .A1(n424), .A2(n401), .B0(n82), .B1(state[0]), 
        .Y(n80) );
  NAND2X8 U410 ( .A(n359), .B(n360), .Y(dx_B[1]) );
  CLKAND2X12 U411 ( .A(dx_B[1]), .B(N166), .Y(mult_128_n3) );
  ADDHX4 U412 ( .A(dx_B[1]), .B(mult_128_n3), .CO(mult_128_n1), .S(N1680) );
  OAI2BB1XL U413 ( .A0N(n221), .A1N(n222), .B0(n223), .Y(n215) );
  NAND2XL U414 ( .A(n221), .B(n223), .Y(n227) );
  OAI2BB2X2 U415 ( .B0(n86), .B1(n88), .A0N(n88), .A1N(n87), .Y(n79) );
  OR2X2 U416 ( .A(n363), .B(n364), .Y(n2170) );
  OAI22XL U417 ( .A0(n411), .A1(n126), .B0(n127), .B1(n119), .Y(dy_C[2]) );
  XOR2X1 U418 ( .A(n134), .B(n135), .Y(n133) );
  NAND2BX1 U419 ( .AN(central[12]), .B(x[0]), .Y(n226) );
  OAI21X2 U420 ( .A0(n412), .A1(n134), .B0(n131), .Y(n125) );
  XOR2XL U421 ( .A(n128), .B(n125), .Y(n127) );
  XNOR2XL U422 ( .A(n220), .B(n215), .Y(n218) );
  OAI2BB2X2 U423 ( .B0(n420), .B1(central[3]), .A0N(n117), .A1N(n136), .Y(n119) );
  NOR2X1 U424 ( .A(n351), .B(n226), .Y(n363) );
  XOR2XL U425 ( .A(n220), .B(n2170), .Y(n219) );
  ADDHXL U426 ( .A(radius[1]), .B(mult_132_3_n3), .CO(mult_132_3_n1), .S(N216)
         );
  OAI21X1 U427 ( .A0(n405), .A1(n178), .B0(n175), .Y(n169) );
  AO21X2 U428 ( .A0(n2170), .A1(n220), .B0(n2100), .Y(n228) );
  NOR2X1 U429 ( .A(n421), .B(central[18]), .Y(n162) );
  CLKINVX1 U430 ( .A(n87), .Y(n401) );
  XOR2XL U431 ( .A(n194), .B(n191), .Y(n193) );
  NAND2XL U432 ( .A(central[4]), .B(n418), .Y(n196) );
  AO21X2 U433 ( .A0(n169), .A1(n172), .B0(n162), .Y(n370) );
  AOI21X1 U434 ( .A0(n413), .A1(N210), .B0(n379), .Y(n93) );
  XOR2XL U435 ( .A(n2420), .B(n239), .Y(n2410) );
  XNOR2X1 U436 ( .A(central[19]), .B(n2670), .Y(n369) );
  NOR2X1 U437 ( .A(n384), .B(n184), .Y(n194) );
  NOR2X1 U438 ( .A(n382), .B(n2100), .Y(n220) );
  NAND2BX1 U439 ( .AN(central[4]), .B(x[0]), .Y(n200) );
  OR2X4 U440 ( .A(n404), .B(n176), .Y(n365) );
  NAND2X8 U441 ( .A(n365), .B(n366), .Y(dy_A[1]) );
  XOR2XL U442 ( .A(n174), .B(n179), .Y(n176) );
  CLKAND2X12 U443 ( .A(dy_A[1]), .B(N1340), .Y(mult_124_2_n3) );
  ADDHX4 U444 ( .A(dy_A[1]), .B(mult_124_2_n3), .CO(mult_124_2_n1), .S(N1360)
         );
  NAND2XL U445 ( .A(N1720), .B(N1680), .Y(n375) );
  XOR2XL U446 ( .A(N206), .B(N202), .Y(N210) );
  AND2XL U447 ( .A(N206), .B(N202), .Y(n379) );
  XNOR2XL U448 ( .A(n150), .B(n1450), .Y(n148) );
  NAND2XL U449 ( .A(n173), .B(n175), .Y(n179) );
  XOR2XL U450 ( .A(n178), .B(n179), .Y(n1770) );
  XOR2XL U451 ( .A(n150), .B(n147), .Y(n149) );
  OAI2BB1XL U452 ( .A0N(n195), .A1N(n196), .B0(n197), .Y(n189) );
  OAI2BB1XL U453 ( .A0N(n173), .A1N(n174), .B0(n175), .Y(n167) );
  OAI2BB1XL U454 ( .A0N(n151), .A1N(n152), .B0(n153), .Y(n1450) );
  OAI2BB2X4 U455 ( .B0(n415), .B1(central[23]), .A0N(n367), .A1N(n368), .Y(
        n2330) );
  XNOR2X1 U456 ( .A(central[23]), .B(x[3]), .Y(n367) );
  AO21X2 U457 ( .A0(n239), .A1(n2420), .B0(n2320), .Y(n368) );
  NAND2XL U458 ( .A(central[0]), .B(n423), .Y(n130) );
  NAND2XL U459 ( .A(central[16]), .B(n423), .Y(n174) );
  NAND2XL U460 ( .A(central[12]), .B(n418), .Y(n222) );
  NAND2XL U461 ( .A(central[20]), .B(n418), .Y(n244) );
  NOR4X1 U462 ( .A(n420), .B(y[0]), .C(y[1]), .D(y[2]), .Y(n115) );
  NOR2X1 U463 ( .A(state[0]), .B(state[1]), .Y(n63) );
  CLKINVX1 U464 ( .A(state[2]), .Y(n427) );
  NAND2X1 U465 ( .A(N208), .B(N204), .Y(n373) );
  XNOR2X1 U466 ( .A(N2090), .B(N205), .Y(n374) );
  XNOR2X2 U467 ( .A(N1320), .B(N1360), .Y(n429) );
  XNOR2X2 U468 ( .A(N1730), .B(N1690), .Y(n376) );
  CLKXOR2X2 U469 ( .A(n377), .B(n378), .Y(N141) );
  NAND2X1 U470 ( .A(N1360), .B(N1320), .Y(n377) );
  XNOR2X1 U471 ( .A(N137), .B(N1330), .Y(n378) );
  NAND2X1 U472 ( .A(N1700), .B(N166), .Y(n432) );
  NAND2X1 U473 ( .A(N1340), .B(N1300), .Y(n430) );
  OAI22XL U474 ( .A0(n409), .A1(n192), .B0(n193), .B1(n185), .Y(dx_C[2]) );
  XNOR2X1 U475 ( .A(n194), .B(n189), .Y(n192) );
  XOR2X1 U476 ( .A(n152), .B(n157), .Y(n154) );
  XNOR2X1 U477 ( .A(n172), .B(n167), .Y(n170) );
  XOR2X1 U478 ( .A(n244), .B(n249), .Y(n246) );
  NAND2X1 U479 ( .A(n244), .B(n248), .Y(N1300) );
  CLKINVX1 U480 ( .A(n129), .Y(n412) );
  CLKINVX1 U481 ( .A(n2430), .Y(n403) );
  XOR2X1 U482 ( .A(n200), .B(n201), .Y(n199) );
  NAND2X1 U483 ( .A(n152), .B(n156), .Y(N1700) );
  NAND2X1 U484 ( .A(n174), .B(n178), .Y(N1340) );
  XNOR2X1 U485 ( .A(n2420), .B(n237), .Y(n2400) );
  XOR2X1 U486 ( .A(n156), .B(n157), .Y(n155) );
  NAND2X1 U487 ( .A(n151), .B(n153), .Y(n157) );
  NAND2X1 U488 ( .A(n2430), .B(n245), .Y(n249) );
  NAND2X1 U489 ( .A(n129), .B(n131), .Y(n135) );
  NAND2X1 U490 ( .A(n222), .B(n226), .Y(N166) );
  XOR2X1 U491 ( .A(n172), .B(n169), .Y(n171) );
  NAND2X1 U492 ( .A(n196), .B(n200), .Y(N202) );
  NAND2X1 U493 ( .A(n130), .B(n134), .Y(N206) );
  XNOR2X1 U494 ( .A(n128), .B(n123), .Y(n126) );
  OAI2BB1X1 U495 ( .A0N(n2430), .A1N(n244), .B0(n245), .Y(n237) );
  OAI2BB1X1 U496 ( .A0N(n129), .A1N(n130), .B0(n131), .Y(n123) );
  OAI2BB2XL U497 ( .B0(N339), .B1(n420), .A0N(N343), .A1N(N339), .Y(n271) );
  XNOR2X1 U498 ( .A(n420), .B(n256), .Y(N235) );
  NOR2X1 U499 ( .A(n421), .B(n257), .Y(n256) );
  CLKINVX1 U500 ( .A(n397), .Y(n398) );
  OAI21XL U501 ( .A0(n115), .A1(n414), .B0(n418), .Y(n255) );
  NOR2X1 U502 ( .A(n427), .B(n426), .Y(n83) );
  CLKINVX1 U503 ( .A(n3370), .Y(n414) );
  CLKINVX1 U504 ( .A(n63), .Y(n426) );
  NAND2X1 U505 ( .A(n63), .B(n427), .Y(n65) );
  XNOR2X1 U506 ( .A(central[3]), .B(n2670), .Y(n117) );
  XNOR2X1 U507 ( .A(central[15]), .B(x[3]), .Y(n209) );
  AND2X2 U508 ( .A(central[10]), .B(n421), .Y(n380) );
  AND2X2 U509 ( .A(central[2]), .B(n421), .Y(n381) );
  NOR2X1 U510 ( .A(n383), .B(n2320), .Y(n2420) );
  XNOR2X1 U511 ( .A(central[11]), .B(n2670), .Y(n139) );
  NAND2X1 U512 ( .A(central[5]), .B(n417), .Y(n195) );
  NAND2X1 U513 ( .A(central[8]), .B(n423), .Y(n152) );
  NOR2X2 U514 ( .A(n421), .B(central[10]), .Y(n140) );
  NOR2X1 U515 ( .A(n421), .B(central[2]), .Y(n118) );
  NOR2X1 U516 ( .A(n416), .B(central[14]), .Y(n2100) );
  NOR2X1 U517 ( .A(n416), .B(central[22]), .Y(n2320) );
  NOR2X1 U518 ( .A(n416), .B(central[6]), .Y(n184) );
  OR2X1 U519 ( .A(central[5]), .B(n417), .Y(n197) );
  OA21XL U520 ( .A0(radius[4]), .A1(n385), .B0(n432), .Y(n101) );
  XNOR2X1 U521 ( .A(N1700), .B(N166), .Y(n385) );
  OA21XL U522 ( .A0(radius[8]), .A1(n386), .B0(n430), .Y(n108) );
  XNOR2X1 U523 ( .A(N1340), .B(N1300), .Y(n386) );
  CLKINVX1 U524 ( .A(radius[0]), .Y(n413) );
  OAI22XL U525 ( .A0(n347), .A1(n425), .B0(state[2]), .B1(n69), .Y(
        next_state[0]) );
  AOI211XL U526 ( .A0(state[1]), .A1(n435), .B0(state[0]), .C0(n70), .Y(n69)
         );
  NOR3X1 U527 ( .A(n400), .B(state[1]), .C(mode[0]), .Y(n70) );
  OAI33XL U528 ( .A0(n428), .A1(n435), .A2(state[2]), .B0(n65), .B1(n66), .B2(
        n400), .Y(next_state[1]) );
  XNOR2X1 U529 ( .A(mode[0]), .B(mode[1]), .Y(n66) );
  NAND3X1 U530 ( .A(n58), .B(n425), .C(n60), .Y(next_state[2]) );
  NAND3XL U531 ( .A(n426), .B(n427), .C(n435), .Y(n60) );
  NAND4X1 U532 ( .A(mode[1]), .B(mode[0]), .C(en), .D(n63), .Y(n58) );
  CLKINVX1 U533 ( .A(en), .Y(n400) );
  AND3X2 U534 ( .A(n387), .B(n424), .C(n428), .Y(n397) );
  NOR4X2 U535 ( .A(n415), .B(x[0]), .C(x[1]), .D(x[2]), .Y(n3370) );
  OAI32X1 U536 ( .A0(n414), .A1(n112), .A2(n419), .B0(n114), .B1(n347), .Y(
        n282) );
  OA21XL U537 ( .A0(n427), .A1(n428), .B0(n65), .Y(n114) );
  CLKINVX1 U538 ( .A(n115), .Y(n419) );
  AOI2BB1X1 U539 ( .A0N(state[2]), .A1N(n63), .B0(n83), .Y(n112) );
  OAI2BB2XL U540 ( .B0(N339), .B1(n423), .A0N(N340), .A1N(N339), .Y(n2680) );
  NOR2X1 U541 ( .A(y[0]), .B(n115), .Y(N232) );
  OAI2BB2XL U542 ( .B0(N339), .B1(n422), .A0N(N341), .A1N(N339), .Y(n2690) );
  OAI2BB2XL U543 ( .B0(N339), .B1(n421), .A0N(N342), .A1N(N339), .Y(n2700) );
  XNOR2X1 U544 ( .A(y[2]), .B(n257), .Y(N234) );
  OAI22XL U545 ( .A0(x[0]), .A1(n3370), .B0(n115), .B1(n414), .Y(N240) );
  OAI22XL U546 ( .A0(x[1]), .A1(n418), .B0(n417), .B1(n255), .Y(N241) );
  OAI2BB1X1 U547 ( .A0N(x[3]), .A1N(n252), .B0(n253), .Y(N243) );
  NAND4X1 U548 ( .A(x[1]), .B(x[0]), .C(x[2]), .D(n415), .Y(n253) );
  OAI21XL U549 ( .A0(x[2]), .A1(n3370), .B0(n254), .Y(n252) );
  OA21XL U550 ( .A0(x[1]), .A1(n3370), .B0(n255), .Y(n254) );
  NAND2X1 U551 ( .A(y[1]), .B(y[0]), .Y(n257) );
  OAI21XL U552 ( .A0(n2660), .A1(n75), .B0(n65), .Y(n273) );
  NOR3X1 U553 ( .A(n424), .B(state[1]), .C(n427), .Y(n75) );
  INVX4 U554 ( .A(rst), .Y(n399) );
  OAI22X1 U555 ( .A0(n407), .A1(n154), .B0(n1410), .B1(n155), .Y(dy_B[1]) );
  OAI22XL U556 ( .A0(n407), .A1(n148), .B0(n149), .B1(n1410), .Y(dy_B[2]) );
  ADDHX1 U557 ( .A(dy_B[1]), .B(mult_128_2_n3), .CO(mult_128_2_n1), .S(N1720)
         );
  AND2X2 U558 ( .A(N144), .B(n429), .Y(n107) );
  OAI22X2 U559 ( .A0(N144), .A1(n429), .B0(n107), .B1(n108), .Y(n104) );
  AOI222X4 U560 ( .A0(n79), .A1(n83), .B0(n427), .B1(n84), .C0(n425), .C1(n63), 
        .Y(n77) );
  NAND2X1 U561 ( .A(dx_A[2]), .B(N1300), .Y(n388) );
  XNOR2X1 U562 ( .A(mult_124_n1), .B(n388), .Y(N1330) );
  NAND2X1 U563 ( .A(dy_A[2]), .B(N1340), .Y(n389) );
  XNOR2X1 U564 ( .A(mult_124_2_n1), .B(n389), .Y(N137) );
  NAND2X1 U565 ( .A(dx_B[2]), .B(N166), .Y(n390) );
  XNOR2X1 U566 ( .A(mult_128_n1), .B(n390), .Y(N1690) );
  NAND2X1 U567 ( .A(dy_B[2]), .B(N1700), .Y(n391) );
  XNOR2X1 U568 ( .A(mult_128_2_n1), .B(n391), .Y(N1730) );
  NAND2X1 U569 ( .A(dx_C[2]), .B(N202), .Y(n392) );
  XNOR2X1 U570 ( .A(mult_132_n1), .B(n392), .Y(N205) );
  NAND2X1 U571 ( .A(dy_C[2]), .B(N206), .Y(n393) );
  XNOR2X1 U572 ( .A(mult_132_2_n1), .B(n393), .Y(N2090) );
  AND2X1 U573 ( .A(radius[1]), .B(radius[0]), .Y(mult_132_3_n3) );
  NAND2X1 U574 ( .A(radius[2]), .B(radius[0]), .Y(n394) );
  XNOR2X1 U575 ( .A(mult_132_3_n1), .B(n394), .Y(N217) );
  AND2X1 U576 ( .A(radius[5]), .B(radius[4]), .Y(mult_128_3_n3) );
  NAND2X1 U577 ( .A(radius[6]), .B(radius[4]), .Y(n395) );
  XNOR2X1 U578 ( .A(mult_128_3_n1), .B(n395), .Y(N181) );
  AND2X1 U579 ( .A(radius[9]), .B(radius[8]), .Y(mult_124_3_n3) );
  NAND2X1 U580 ( .A(radius[10]), .B(radius[8]), .Y(n396) );
  XNOR2X1 U581 ( .A(mult_124_3_n1), .B(n396), .Y(N145) );
  OR2X1 U582 ( .A(N232), .B(n397), .Y(N340) );
  AND2X1 U583 ( .A(N233), .B(n398), .Y(N341) );
  AND2X1 U584 ( .A(N234), .B(n398), .Y(N342) );
  AND2X1 U585 ( .A(N235), .B(n398), .Y(N343) );
  OR2X1 U586 ( .A(N240), .B(n397), .Y(N335) );
  AND2X1 U587 ( .A(N241), .B(n398), .Y(N336) );
  AND2X1 U588 ( .A(N242), .B(n398), .Y(N337) );
  AND2X1 U589 ( .A(N243), .B(n398), .Y(N338) );
endmodule

