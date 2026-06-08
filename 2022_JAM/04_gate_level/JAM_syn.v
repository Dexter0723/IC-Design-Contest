/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Tue Jun  9 00:47:27 2026
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  AND2X2 U2 ( .A(A[8]), .B(n3), .Y(n2) );
  XOR2XL U3 ( .A(A[8]), .B(n3), .Y(SUM[8]) );
  XOR2XL U4 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2XL U5 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U6 ( .A(A[9]), .B(n2), .Y(SUM[9]) );
  AND2X2 U7 ( .A(A[7]), .B(carry[7]), .Y(n3) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N145, N146, N147, N148, N149, N150, N151, N152, N153, N155, N156,
         N157, N158, N159, N160, N161, N162, n732, n733, n734, n735, n736,
         n737, n738, n739, n740, N269, N270, N271, N378, N379, N380, N381,
         N382, N383, N384, N385, N386, N387, N512, N513, N514, N620, N621,
         N622, N631, N632, N633, n38, n40, n43, n45, n46, n47, n48, n49, n50,
         n56, n57, n59, n61, n62, n63, n64, n65, n66, n67, n70, n71, n72, n73,
         n74, n75, n76, n77, n79, n82, n83, n84, n86, n87, n89, n90, n91, n93,
         n94, n95, n97, n98, n99, n100, n101, n103, n105, n106, n108, n109,
         n110, n112, n113, n114, n115, n116, n117, n119, n123, n124, n125,
         n126, n127, n131, n133, n134, n136, n137, n139, n141, n144, n145,
         n146, n147, n148, n150, n154, n156, n157, n159, n160, n162, n163,
         n164, n165, n166, n167, n168, n170, n172, n174, n176, n178, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n191, n192, n194,
         n195, n197, n198, n199, n200, n201, n202, n203, n205, n206, n207,
         n208, n210, n211, n212, n213, n215, n216, n217, n218, n219, n221,
         n225, n226, n228, n229, n231, n232, n233, n234, n235, n236, n240,
         n241, n242, n243, n245, n246, n247, n249, n250, n251, n255, n256,
         n257, n258, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n273, n274, n278, n279, n280, n282, n283, n284, n285,
         n286, n287, n288, n289, n291, n292, n293, n296, n297, n299, n300,
         n301, n302, n303, n304, n306, n307, n308, n309, n311, n313, n314,
         n316, n317, n319, n320, n322, n323, n324, n325, n326, n328, n329,
         n332, n333, n337, n338, n339, n340, n341, n342, n344, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n407, n408, n411, n412, n413, n414, n415, n416, n417,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n516, n517, n518, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597,
         n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608,
         n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619,
         n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630,
         n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, n641,
         n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, n652,
         n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663,
         n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731;
  wire   [23:0] J_count;
  wire   [4:0] state;
  wire   [4:0] next_state;
  wire   [9:0] Min_cost_reg;
  wire   [2:0] switch_reg;
  wire   [2:0] switch_count_reg;

  OAI211X2 U198 ( .A0(n240), .A1(n241), .B0(n242), .C0(n236), .Y(n67) );
  JAM_DW01_add_0 r501 ( .A(Min_cost_reg), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(
        1'b0), .SUM({N387, N386, N385, N384, N383, N382, N381, N380, N379, 
        N378}) );
  DFFRX1 compare_flag_reg ( .D(n472), .CK(CLK), .RN(n534), .Q(n507), .QN(n387)
         );
  DFFRX1 done_flag_reg ( .D(n392), .CK(CLK), .RN(n536), .QN(n390) );
  DFFSX1 switch_reg_reg_2_ ( .D(n461), .CK(CLK), .SN(n537), .QN(n721) );
  DFFSX1 switch_reg_reg_0_ ( .D(n460), .CK(CLK), .SN(n537), .Q(switch_reg[0]), 
        .QN(n506) );
  DFFSX1 switch_reg_reg_1_ ( .D(n459), .CK(CLK), .SN(n537), .Q(switch_reg[1]), 
        .QN(n504) );
  DFFSX1 switch_count_reg_reg_2_ ( .D(n394), .CK(CLK), .SN(n536), .Q(
        switch_count_reg[2]), .QN(n505) );
  DFFRX1 left_reg_2_ ( .D(n463), .CK(CLK), .RN(n534), .Q(N162), .QN(n423) );
  DFFRX1 compare_reg_reg_0_ ( .D(n475), .CK(CLK), .RN(n535), .QN(n412) );
  DFFRX1 Min_cost_reg_reg_7_ ( .D(n495), .CK(CLK), .RN(n533), .Q(
        Min_cost_reg[7]), .QN(n401) );
  DFFRX1 Min_cost_reg_reg_6_ ( .D(n496), .CK(CLK), .RN(n533), .Q(
        Min_cost_reg[6]), .QN(n402) );
  DFFRX1 compare_reg_reg_2_ ( .D(n474), .CK(CLK), .RN(n533), .QN(n411) );
  DFFRX1 Min_cost_reg_reg_8_ ( .D(n494), .CK(CLK), .RN(n533), .Q(
        Min_cost_reg[8]), .QN(n400) );
  DFFRX1 left_reg_1_ ( .D(n462), .CK(CLK), .RN(n535), .Q(N161), .QN(n424) );
  DFFRX1 Min_cost_reg_reg_0_ ( .D(n502), .CK(CLK), .RN(n649), .Q(
        Min_cost_reg[0]), .QN(n355) );
  DFFRX1 Min_cost_reg_reg_5_ ( .D(n497), .CK(CLK), .RN(n533), .Q(
        Min_cost_reg[5]), .QN(n403) );
  DFFRX1 Min_cost_reg_reg_2_ ( .D(n500), .CK(CLK), .RN(n533), .Q(
        Min_cost_reg[2]), .QN(n404) );
  DFFRX1 Min_cost_reg_reg_1_ ( .D(n501), .CK(CLK), .RN(n533), .Q(
        Min_cost_reg[1]), .QN(n405) );
  DFFRX1 Min_cost_reg_reg_4_ ( .D(n498), .CK(CLK), .RN(n533), .Q(
        Min_cost_reg[4]), .QN(n358) );
  DFFSX1 compare_count_reg_2_ ( .D(n478), .CK(CLK), .SN(n537), .Q(N156), .QN(
        n611) );
  DFFRX1 Min_cost_reg_reg_3_ ( .D(n499), .CK(CLK), .RN(n533), .Q(
        Min_cost_reg[3]), .QN(n357) );
  DFFSX1 compare_count_reg_0_ ( .D(n477), .CK(CLK), .SN(n536), .Q(n574), .QN(
        N148) );
  DFFSX1 switch_count_reg_2_ ( .D(n468), .CK(CLK), .SN(n536), .Q(N153), .QN(
        n363) );
  DFFSX1 i_reg_2_ ( .D(n469), .CK(CLK), .SN(n536), .Q(N147), .QN(n555) );
  DFFSX1 switch_count_reg_0_ ( .D(n458), .CK(CLK), .SN(n537), .Q(N151), .QN(
        n593) );
  DFFRX1 J_count_reg_0__2_ ( .D(n431), .CK(CLK), .RN(n533), .Q(J_count[23]), 
        .QN(n385) );
  DFFRX1 J_count_reg_4__2_ ( .D(n443), .CK(CLK), .RN(n536), .Q(J_count[11]), 
        .QN(n373) );
  DFFRX1 J_count_reg_4__1_ ( .D(n444), .CK(CLK), .RN(n534), .Q(J_count[10]), 
        .QN(n372) );
  DFFRX1 J_count_reg_4__0_ ( .D(n445), .CK(CLK), .RN(n535), .Q(J_count[9]), 
        .QN(n371) );
  DFFRX1 J_count_reg_1__2_ ( .D(n434), .CK(CLK), .RN(n535), .Q(J_count[20]), 
        .QN(n382) );
  DFFRX1 J_count_reg_5__2_ ( .D(n446), .CK(CLK), .RN(n535), .Q(J_count[8]), 
        .QN(n370) );
  DFFRX1 J_count_reg_5__1_ ( .D(n447), .CK(CLK), .RN(n535), .Q(J_count[7]), 
        .QN(n369) );
  DFFRX1 J_count_reg_5__0_ ( .D(n448), .CK(CLK), .RN(n535), .Q(J_count[6]), 
        .QN(n368) );
  DFFRX1 J_count_reg_2__2_ ( .D(n437), .CK(CLK), .RN(n535), .Q(J_count[17]), 
        .QN(n379) );
  DFFRX1 J_count_reg_6__2_ ( .D(n449), .CK(CLK), .RN(n536), .Q(J_count[5]), 
        .QN(n367) );
  DFFRX1 J_count_reg_6__1_ ( .D(n450), .CK(CLK), .RN(n536), .Q(J_count[4]), 
        .QN(n366) );
  DFFRX1 J_count_reg_6__0_ ( .D(n451), .CK(CLK), .RN(n536), .Q(J_count[3]), 
        .QN(n365) );
  DFFRX1 J_count_reg_3__2_ ( .D(n440), .CK(CLK), .RN(n535), .Q(J_count[14]), 
        .QN(n376) );
  DFFRX1 J_count_reg_2__1_ ( .D(n438), .CK(CLK), .RN(n535), .Q(J_count[16]), 
        .QN(n378) );
  DFFRX1 J_count_reg_2__0_ ( .D(n439), .CK(CLK), .RN(n535), .Q(J_count[15]), 
        .QN(n377) );
  DFFRX1 J_count_reg_3__1_ ( .D(n441), .CK(CLK), .RN(n535), .Q(J_count[13]), 
        .QN(n375) );
  DFFRX1 J_count_reg_3__0_ ( .D(n442), .CK(CLK), .RN(n535), .Q(J_count[12]), 
        .QN(n374) );
  DFFSX1 i_reg_1_ ( .D(n470), .CK(CLK), .SN(n537), .Q(N146), .QN(n554) );
  DFFSX1 i_reg_0_ ( .D(n471), .CK(CLK), .SN(n537), .Q(N145), .QN(n556) );
  DFFRX1 J_count_reg_0__1_ ( .D(n432), .CK(CLK), .RN(n533), .Q(J_count[22]), 
        .QN(n384) );
  DFFRX1 J_count_reg_0__0_ ( .D(n433), .CK(CLK), .RN(n536), .Q(J_count[21]), 
        .QN(n383) );
  DFFRX1 J_count_reg_1__1_ ( .D(n435), .CK(CLK), .RN(n535), .Q(J_count[19]), 
        .QN(n381) );
  DFFRX1 J_count_reg_1__0_ ( .D(n436), .CK(CLK), .RN(n535), .Q(J_count[18]), 
        .QN(n380) );
  DFFSX1 switch_count_reg_reg_0_ ( .D(n456), .CK(CLK), .SN(n536), .Q(
        switch_count_reg[0]), .QN(n723) );
  DFFSX1 switch_count_reg_reg_1_ ( .D(n455), .CK(CLK), .SN(n536), .Q(
        switch_count_reg[1]), .QN(n722) );
  DFFRX1 left_reg_0_ ( .D(n503), .CK(CLK), .RN(n534), .Q(N160), .QN(n425) );
  DFFRX1 right_reg_0_ ( .D(n465), .CK(CLK), .RN(n535), .Q(N157), .QN(n408) );
  DFFQX1 J_count_reg_7__1_ ( .D(n452), .CK(CLK), .Q(J_count[1]) );
  DFFQX1 J_count_reg_7__0_ ( .D(n454), .CK(CLK), .Q(J_count[0]) );
  DFFQX1 J_count_reg_7__2_ ( .D(n453), .CK(CLK), .Q(J_count[2]) );
  DFFRX1 right_reg_1_ ( .D(n464), .CK(CLK), .RN(n533), .Q(N158), .QN(n407) );
  DFFRX1 Min_cost_reg_reg_9_ ( .D(n493), .CK(CLK), .RN(n533), .Q(
        Min_cost_reg[9]), .QN(n399) );
  DFFSX1 W_count_reg_0_ ( .D(n430), .CK(CLK), .SN(n536), .Q(n734), .QN(n386)
         );
  DFFSX1 W_count_reg_1_ ( .D(n429), .CK(CLK), .SN(n536), .Q(n733), .QN(n427)
         );
  DFFSX1 W_count_reg_2_ ( .D(n428), .CK(CLK), .SN(n536), .Q(n732), .QN(n426)
         );
  DFFRX1 MinCost_reg_8_ ( .D(n480), .CK(CLK), .RN(n534), .QN(n361) );
  DFFRX1 MatchCount_reg_2_ ( .D(n666), .CK(CLK), .RN(n534), .QN(n396) );
  DFFRX1 MatchCount_reg_3_ ( .D(n492), .CK(CLK), .RN(n533), .Q(n736), .QN(n395) );
  DFFRX1 MatchCount_reg_1_ ( .D(n490), .CK(CLK), .RN(n533), .QN(n397) );
  DFFRX1 MatchCount_reg_0_ ( .D(n491), .CK(CLK), .RN(n533), .Q(n737), .QN(n398) );
  DFFRX1 MinCost_reg_9_ ( .D(n479), .CK(CLK), .RN(n534), .QN(n362) );
  DFFRX1 MinCost_reg_5_ ( .D(n483), .CK(CLK), .RN(n534), .QN(n359) );
  DFFRX1 MinCost_reg_0_ ( .D(n488), .CK(CLK), .RN(n534), .QN(n417) );
  DFFRX1 MinCost_reg_3_ ( .D(n485), .CK(CLK), .RN(n534), .QN(n415) );
  DFFRX1 MinCost_reg_2_ ( .D(n486), .CK(CLK), .RN(n534), .QN(n416) );
  DFFRX1 Valid_reg ( .D(n391), .CK(CLK), .RN(n534), .Q(n740), .QN(n388) );
  DFFRX1 MinCost_reg_1_ ( .D(n487), .CK(CLK), .RN(n534), .QN(n356) );
  DFFRX1 MinCost_reg_4_ ( .D(n484), .CK(CLK), .RN(n534), .Q(n739), .QN(n414)
         );
  DFFRX1 MinCost_reg_6_ ( .D(n482), .CK(CLK), .RN(n534), .QN(n413) );
  DFFRX1 MinCost_reg_7_ ( .D(n481), .CK(CLK), .RN(n534), .Q(n738), .QN(n360)
         );
  DFFRX1 state_reg_2_ ( .D(next_state[2]), .CK(CLK), .RN(n649), .Q(n389), .QN(
        n699) );
  DFFRX1 state_reg_4_ ( .D(next_state[4]), .CK(CLK), .RN(n649), .Q(state[4]), 
        .QN(n702) );
  DFFRX1 state_reg_1_ ( .D(next_state[1]), .CK(CLK), .RN(n649), .Q(state[1]), 
        .QN(n697) );
  DFFRX1 state_reg_3_ ( .D(next_state[3]), .CK(CLK), .RN(n649), .Q(state[3]), 
        .QN(n701) );
  DFFRX1 state_reg_0_ ( .D(next_state[0]), .CK(CLK), .RN(n649), .Q(state[0])
         );
  DFFRX1 switch_flag_reg ( .D(n467), .CK(CLK), .RN(n649), .QN(n696) );
  DFFRX1 compare_reg_reg_1_ ( .D(n473), .CK(CLK), .RN(n649), .Q(n364), .QN(
        n704) );
  DFFRX2 right_reg_2_ ( .D(n466), .CK(CLK), .RN(n649), .Q(N159), .QN(n628) );
  DFFSX2 compare_count_reg_1_ ( .D(n476), .CK(CLK), .SN(n537), .Q(N155), .QN(
        n610) );
  DFFSX2 switch_count_reg_1_ ( .D(n457), .CK(CLK), .SN(n536), .Q(N152), .QN(
        n592) );
  NOR2X2 U408 ( .A(n592), .B(n593), .Y(n588) );
  NOR2X2 U409 ( .A(n592), .B(N151), .Y(n589) );
  AOI211XL U410 ( .A0(n592), .A1(n524), .B0(n717), .C0(n593), .Y(n352) );
  NOR2XL U411 ( .A(n592), .B(n524), .Y(n353) );
  NOR2X2 U412 ( .A(n610), .B(N148), .Y(n606) );
  NOR2X2 U413 ( .A(n610), .B(n530), .Y(n607) );
  INVX3 U414 ( .A(RST), .Y(n649) );
  OAI22X1 U415 ( .A0(n363), .A1(n583), .B0(N153), .B1(n582), .Y(N270) );
  BUFX12 U416 ( .A(n738), .Y(MinCost[7]) );
  INVX12 U417 ( .A(n413), .Y(MinCost[6]) );
  BUFX12 U418 ( .A(n739), .Y(MinCost[4]) );
  INVX12 U419 ( .A(n356), .Y(MinCost[1]) );
  BUFX12 U420 ( .A(n740), .Y(Valid) );
  INVX16 U421 ( .A(n416), .Y(MinCost[2]) );
  INVX16 U422 ( .A(n415), .Y(MinCost[3]) );
  INVX12 U423 ( .A(n417), .Y(MinCost[0]) );
  INVX12 U424 ( .A(n359), .Y(MinCost[5]) );
  INVX12 U425 ( .A(n362), .Y(MinCost[9]) );
  BUFX12 U426 ( .A(n737), .Y(MatchCount[0]) );
  INVX16 U427 ( .A(n397), .Y(MatchCount[1]) );
  BUFX12 U428 ( .A(n736), .Y(MatchCount[3]) );
  INVX16 U429 ( .A(n396), .Y(MatchCount[2]) );
  INVX12 U430 ( .A(n361), .Y(MinCost[8]) );
  BUFX12 U431 ( .A(n732), .Y(W[2]) );
  BUFX12 U432 ( .A(n733), .Y(W[1]) );
  BUFX12 U433 ( .A(n734), .Y(W[0]) );
  OAI22X1 U434 ( .A0(n591), .A1(n363), .B0(N153), .B1(n590), .Y(N269) );
  OAI21XL U435 ( .A0(n688), .A1(n278), .B0(n70), .Y(n270) );
  NOR2X1 U436 ( .A(n261), .B(n682), .Y(n97) );
  NOR3X1 U437 ( .A(n525), .B(n530), .C(n524), .Y(n106) );
  NOR3X1 U438 ( .A(n525), .B(n530), .C(n573), .Y(n157) );
  NOR3X1 U439 ( .A(n573), .B(n525), .C(n717), .Y(n134) );
  OAI21XL U440 ( .A0(n307), .A1(n308), .B0(n309), .Y(n301) );
  CLKBUFX3 U441 ( .A(n574), .Y(n530) );
  OAI21XL U442 ( .A0(n363), .A1(n525), .B0(n351), .Y(n261) );
  NOR3X1 U443 ( .A(n683), .B(n389), .C(n65), .Y(n63) );
  CLKBUFX3 U444 ( .A(N150), .Y(n525) );
  NAND3X1 U445 ( .A(n389), .B(n683), .C(n286), .Y(n45) );
  CLKINVX1 U446 ( .A(n408), .Y(n727) );
  NAND2X1 U447 ( .A(n97), .B(switch_count_reg[2]), .Y(n188) );
  NOR2X1 U448 ( .A(n682), .B(n412), .Y(n94) );
  NOR3X1 U449 ( .A(n699), .B(state[4]), .C(n701), .Y(n50) );
  NOR3X1 U450 ( .A(n389), .B(n531), .C(n65), .Y(n57) );
  NOR3X1 U451 ( .A(n408), .B(n628), .C(n731), .Y(n192) );
  NOR3X1 U452 ( .A(n408), .B(n407), .C(N159), .Y(n160) );
  NOR4X1 U453 ( .A(n697), .B(n701), .C(n531), .D(state[4]), .Y(n38) );
  NOR3X2 U454 ( .A(n407), .B(n628), .C(n727), .Y(n207) );
  NAND3X1 U455 ( .A(n531), .B(n389), .C(n286), .Y(n70) );
  NAND2X1 U456 ( .A(n685), .B(n687), .Y(n274) );
  AOI21X1 U457 ( .A0(n306), .A1(n705), .B0(n667), .Y(n299) );
  CLKINVX1 U458 ( .A(n257), .Y(n650) );
  CLKINVX1 U459 ( .A(n270), .Y(n685) );
  INVX3 U460 ( .A(n529), .Y(n667) );
  NAND2X1 U461 ( .A(n681), .B(n526), .Y(n257) );
  CLKINVX1 U462 ( .A(n154), .Y(n654) );
  INVX3 U463 ( .A(n174), .Y(n726) );
  NAND2X1 U464 ( .A(n673), .B(n257), .Y(n249) );
  CLKINVX1 U465 ( .A(n134), .Y(n691) );
  CLKINVX1 U466 ( .A(n157), .Y(n692) );
  INVX3 U467 ( .A(n97), .Y(n681) );
  INVX3 U468 ( .A(n527), .Y(n687) );
  NOR2X2 U469 ( .A(n684), .B(n527), .Y(n40) );
  NOR2X1 U470 ( .A(n306), .B(n527), .Y(n262) );
  NOR2X1 U471 ( .A(n48), .B(n683), .Y(n306) );
  INVX3 U472 ( .A(n344), .Y(n668) );
  CLKINVX1 U473 ( .A(n95), .Y(n679) );
  CLKINVX1 U474 ( .A(n109), .Y(n730) );
  CLKINVX1 U475 ( .A(n137), .Y(n724) );
  OA21XL U476 ( .A0(n683), .A1(n79), .B0(n687), .Y(n71) );
  CLKINVX1 U477 ( .A(n91), .Y(n675) );
  CLKINVX1 U478 ( .A(n86), .Y(n677) );
  CLKINVX1 U479 ( .A(n106), .Y(n690) );
  CLKINVX1 U480 ( .A(n304), .Y(n705) );
  CLKINVX1 U481 ( .A(n90), .Y(n674) );
  CLKINVX1 U482 ( .A(n87), .Y(n689) );
  CLKINVX1 U483 ( .A(n221), .Y(n695) );
  NAND2BX1 U484 ( .AN(n268), .B(n79), .Y(next_state[4]) );
  CLKINVX1 U485 ( .A(n178), .Y(n693) );
  CLKINVX1 U486 ( .A(n195), .Y(n694) );
  CLKBUFX3 U487 ( .A(n342), .Y(n528) );
  NAND2X1 U488 ( .A(n344), .B(n262), .Y(n342) );
  CLKBUFX3 U489 ( .A(n649), .Y(n536) );
  CLKBUFX3 U490 ( .A(n649), .Y(n535) );
  CLKBUFX3 U491 ( .A(n649), .Y(n534) );
  CLKBUFX3 U492 ( .A(n649), .Y(n533) );
  CLKINVX1 U493 ( .A(n67), .Y(n680) );
  OAI221XL U494 ( .A0(n718), .A1(n67), .B0(n680), .B1(n506), .C0(n40), .Y(n460) );
  OAI221XL U495 ( .A0(n719), .A1(n67), .B0(n680), .B1(n504), .C0(n40), .Y(n459) );
  OAI221XL U496 ( .A0(n720), .A1(n67), .B0(n680), .B1(n721), .C0(n40), .Y(n461) );
  INVXL U497 ( .A(N269), .Y(n720) );
  INVXL U498 ( .A(N270), .Y(n719) );
  CLKINVX1 U499 ( .A(n217), .Y(n648) );
  CLKBUFX3 U500 ( .A(n532), .Y(n537) );
  CLKBUFX3 U501 ( .A(n649), .Y(n532) );
  CLKINVX1 U502 ( .A(N271), .Y(n718) );
  CLKINVX1 U503 ( .A(n279), .Y(n688) );
  NAND2X1 U504 ( .A(n57), .B(n274), .Y(n273) );
  OAI22XL U505 ( .A0(n516), .A1(n273), .B0(n704), .B1(n274), .Y(n473) );
  INVX3 U506 ( .A(n530), .Y(n717) );
  CLKINVX1 U507 ( .A(n524), .Y(n573) );
  OAI21XL U508 ( .A0(MatchCount[1]), .A1(n304), .B0(n297), .Y(n296) );
  NOR2BX1 U509 ( .AN(n284), .B(n530), .Y(n282) );
  NOR2X1 U510 ( .A(n279), .B(n278), .Y(n284) );
  CLKBUFX3 U511 ( .A(n291), .Y(n529) );
  NAND2X1 U512 ( .A(n306), .B(n301), .Y(n291) );
  NAND2X1 U513 ( .A(n283), .B(n40), .Y(n477) );
  XNOR2X1 U514 ( .A(n284), .B(n530), .Y(n283) );
  OAI221X1 U515 ( .A0(n681), .A1(n692), .B0(n526), .B1(n728), .C0(n166), .Y(
        n154) );
  AOI211X1 U516 ( .A0(n167), .A1(n98), .B0(n527), .C0(n168), .Y(n166) );
  NOR3X1 U517 ( .A(n722), .B(n101), .C(n723), .Y(n168) );
  OAI211X1 U518 ( .A0(n531), .A1(n79), .B0(n669), .C0(n267), .Y(n76) );
  NOR2X1 U519 ( .A(n268), .B(n38), .Y(n267) );
  INVX3 U520 ( .A(n531), .Y(n683) );
  NAND2X1 U521 ( .A(n63), .B(n257), .Y(n251) );
  NAND2X1 U522 ( .A(n97), .B(n505), .Y(n101) );
  CLKINVX1 U523 ( .A(n82), .Y(n657) );
  CLKINVX1 U524 ( .A(n203), .Y(n651) );
  CLKINVX1 U525 ( .A(n189), .Y(n652) );
  CLKINVX1 U526 ( .A(n131), .Y(n655) );
  CLKINVX1 U527 ( .A(n103), .Y(n656) );
  CLKINVX1 U528 ( .A(n170), .Y(n653) );
  NOR2X1 U529 ( .A(n731), .B(n727), .Y(n174) );
  NOR2BX1 U530 ( .AN(n261), .B(n682), .Y(n236) );
  NAND2X1 U531 ( .A(n286), .B(n699), .Y(n48) );
  NOR2X1 U532 ( .A(n526), .B(N162), .Y(n98) );
  CLKINVX1 U533 ( .A(n147), .Y(n662) );
  CLKINVX1 U534 ( .A(n269), .Y(n669) );
  CLKINVX1 U535 ( .A(n116), .Y(n663) );
  CLKINVX1 U536 ( .A(n112), .Y(n664) );
  CLKINVX1 U537 ( .A(n146), .Y(n672) );
  INVX3 U538 ( .A(n63), .Y(n682) );
  CLKINVX1 U539 ( .A(n110), .Y(n670) );
  CLKINVX1 U540 ( .A(n115), .Y(n671) );
  INVX3 U541 ( .A(n45), .Y(n673) );
  CLKINVX1 U542 ( .A(n50), .Y(n698) );
  CLKBUFX3 U543 ( .A(n126), .Y(n527) );
  NOR2X1 U544 ( .A(n48), .B(n531), .Y(n126) );
  CLKBUFX3 U545 ( .A(n123), .Y(n526) );
  OAI21XL U546 ( .A0(n658), .A1(n61), .B0(n673), .Y(n123) );
  CLKINVX1 U547 ( .A(n525), .Y(n575) );
  AOI211X1 U548 ( .A0(n683), .A1(n64), .B0(next_state[4]), .C0(n269), .Y(n344)
         );
  NOR2X2 U549 ( .A(n704), .B(n682), .Y(n90) );
  NOR3X2 U550 ( .A(n524), .B(n525), .C(n717), .Y(n87) );
  NOR2X1 U551 ( .A(n504), .B(n682), .Y(n91) );
  NOR2X1 U552 ( .A(n721), .B(n682), .Y(n86) );
  NAND3X2 U553 ( .A(n524), .B(n525), .C(n530), .Y(n206) );
  NOR2X1 U554 ( .A(N159), .B(n727), .Y(n137) );
  NOR2X1 U555 ( .A(N159), .B(n731), .Y(n109) );
  NAND4BX1 U556 ( .AN(n323), .B(n326), .C(n339), .D(n340), .Y(n304) );
  NOR3X1 U557 ( .A(n338), .B(n328), .C(n329), .Y(n339) );
  NOR4X1 U558 ( .A(n319), .B(n316), .C(n314), .D(n337), .Y(n340) );
  OAI31XL U559 ( .A0(n45), .A1(n658), .A2(n61), .B0(n62), .Y(n59) );
  NOR2X1 U560 ( .A(n506), .B(n682), .Y(n95) );
  NAND3X1 U561 ( .A(n525), .B(n717), .C(n524), .Y(n221) );
  OAI211X1 U562 ( .A0(n726), .A1(n249), .B0(n256), .C0(n251), .Y(n464) );
  OAI21XL U563 ( .A0(n650), .A1(n727), .B0(n731), .Y(n256) );
  NAND3X1 U564 ( .A(n573), .B(n525), .C(n530), .Y(n178) );
  NAND3X1 U565 ( .A(n525), .B(n717), .C(n573), .Y(n195) );
  NOR3X1 U566 ( .A(n683), .B(n698), .C(n697), .Y(n268) );
  CLKINVX1 U567 ( .A(n57), .Y(n686) );
  NOR2X1 U568 ( .A(N161), .B(n659), .Y(n99) );
  NAND2X1 U569 ( .A(n64), .B(n697), .Y(n79) );
  CLKINVX1 U570 ( .A(n192), .Y(n729) );
  CLKINVX1 U571 ( .A(n160), .Y(n728) );
  CLKINVX1 U572 ( .A(n94), .Y(n678) );
  NAND2X1 U573 ( .A(n57), .B(n66), .Y(n278) );
  CLKINVX1 U574 ( .A(n84), .Y(n676) );
  NAND2X1 U575 ( .A(n50), .B(n683), .Y(n62) );
  OAI21XL U576 ( .A0(n684), .A1(n696), .B0(n681), .Y(n467) );
  NAND3BX1 U577 ( .AN(n38), .B(n669), .C(n40), .Y(next_state[3]) );
  AOI21X1 U578 ( .A0(n696), .A1(n63), .B0(n38), .Y(n46) );
  CLKINVX1 U579 ( .A(n70), .Y(n684) );
  NAND4X1 U580 ( .A(n46), .B(n47), .C(n48), .D(n686), .Y(next_state[1]) );
  OAI211X1 U581 ( .A0(n49), .A1(n50), .B0(n697), .C0(n531), .Y(n47) );
  OA21XL U582 ( .A0(n699), .A1(n702), .B0(n701), .Y(n49) );
  INVX12 U583 ( .A(n520), .Y(J[0]) );
  AOI2BB2X1 U584 ( .B0(n555), .B1(n521), .A0N(n555), .A1N(n541), .Y(n520) );
  CLKINVX1 U585 ( .A(n540), .Y(n521) );
  INVX12 U586 ( .A(n522), .Y(J[1]) );
  AOI2BB2X1 U587 ( .B0(n555), .B1(n523), .A0N(n555), .A1N(n545), .Y(n522) );
  CLKINVX1 U588 ( .A(n544), .Y(n523) );
  OAI2BB1XL U589 ( .A0N(N269), .A1N(n411), .B0(n243), .Y(n242) );
  NOR2XL U590 ( .A(N269), .B(n721), .Y(n241) );
  AOI221XL U591 ( .A0(N270), .A1(n504), .B0(N269), .B1(n721), .C0(n247), .Y(
        n240) );
  OAI221XL U592 ( .A0(n593), .A1(n67), .B0(n680), .B1(n723), .C0(n70), .Y(n456) );
  OAI221XL U593 ( .A0(n592), .A1(n67), .B0(n680), .B1(n722), .C0(n70), .Y(n455) );
  OAI221XL U594 ( .A0(n363), .A1(n67), .B0(n680), .B1(n505), .C0(n70), .Y(n394) );
  OAI2BB2XL U595 ( .B0(n399), .B1(n528), .A0N(N387), .A1N(n668), .Y(n493) );
  OAI2BB2XL U596 ( .B0(n400), .B1(n528), .A0N(N386), .A1N(n668), .Y(n494) );
  OAI2BB2XL U597 ( .B0(n401), .B1(n528), .A0N(N385), .A1N(n668), .Y(n495) );
  OAI31X1 U598 ( .A0(n231), .A1(n527), .A2(n232), .B0(n537), .Y(n217) );
  NOR4X1 U599 ( .A(n628), .B(n407), .C(n408), .D(n526), .Y(n232) );
  OAI32X1 U600 ( .A0(n188), .A1(n723), .A2(n722), .B0(n681), .B1(n221), .Y(
        n231) );
  OAI22XL U601 ( .A0(n703), .A1(n245), .B0(N269), .B1(n411), .Y(n243) );
  CLKINVX1 U602 ( .A(n246), .Y(n703) );
  NOR2X1 U603 ( .A(n364), .B(n719), .Y(n245) );
  OAI211XL U604 ( .A0(n704), .A1(N270), .B0(n412), .C0(N271), .Y(n246) );
  OAI2BB1X1 U605 ( .A0N(J_count[0]), .A1N(n217), .B0(n228), .Y(n454) );
  OAI31XL U606 ( .A0(n229), .A1(n527), .A2(n662), .B0(n648), .Y(n228) );
  OAI22XL U607 ( .A0(n679), .A1(n221), .B0(n695), .B1(n678), .Y(n229) );
  AOI211X1 U608 ( .A0(switch_reg[1]), .A1(n719), .B0(n718), .C0(switch_reg[0]), 
        .Y(n247) );
  OAI2BB2XL U609 ( .B0(n358), .B1(n528), .A0N(N382), .A1N(n668), .Y(n498) );
  OAI2BB2XL U610 ( .B0(n404), .B1(n528), .A0N(N380), .A1N(n668), .Y(n500) );
  OAI2BB2XL U611 ( .B0(n357), .B1(n528), .A0N(N381), .A1N(n668), .Y(n499) );
  OAI2BB2XL U612 ( .B0(n402), .B1(n528), .A0N(N384), .A1N(n668), .Y(n496) );
  OAI2BB2XL U613 ( .B0(n403), .B1(n528), .A0N(N383), .A1N(n668), .Y(n497) );
  OAI2BB1X1 U614 ( .A0N(J_count[2]), .A1N(n217), .B0(n225), .Y(n453) );
  OAI31XL U615 ( .A0(n226), .A1(n527), .A2(n664), .B0(n648), .Y(n225) );
  OAI22XL U616 ( .A0(n677), .A1(n221), .B0(n695), .B1(n676), .Y(n226) );
  OAI2BB1X1 U617 ( .A0N(J_count[1]), .A1N(n217), .B0(n218), .Y(n452) );
  OAI31XL U618 ( .A0(n219), .A1(n527), .A2(n663), .B0(n648), .Y(n218) );
  OAI22XL U619 ( .A0(n675), .A1(n221), .B0(n695), .B1(n674), .Y(n219) );
  OAI211X1 U620 ( .A0(N513), .A1(n516), .B0(n518), .C0(N514), .Y(n289) );
  OA22X1 U621 ( .A0(n575), .A1(n564), .B0(n525), .B1(n563), .Y(n516) );
  OAI22XL U622 ( .A0(n273), .A1(n518), .B0(n412), .B1(n274), .Y(n475) );
  OAI22XL U623 ( .A0(n517), .A1(n273), .B0(n411), .B1(n274), .Y(n474) );
  OAI2BB1X1 U624 ( .A0N(n517), .A1N(N512), .B0(n287), .Y(n279) );
  OAI21XL U625 ( .A0(N512), .A1(n517), .B0(n288), .Y(n287) );
  OAI2BB1X1 U626 ( .A0N(n516), .A1N(N513), .B0(n289), .Y(n288) );
  OAI2BB2XL U627 ( .B0(n405), .B1(n528), .A0N(N379), .A1N(n668), .Y(n501) );
  OAI2BB2XL U628 ( .B0(n355), .B1(n528), .A0N(N378), .A1N(n668), .Y(n502) );
  CLKBUFX3 U629 ( .A(N149), .Y(n524) );
  XNOR2X1 U630 ( .A(n610), .B(n717), .Y(N149) );
  XNOR2X1 U631 ( .A(MinCost[3]), .B(n357), .Y(n328) );
  OA22X1 U632 ( .A0(n572), .A1(n575), .B0(n525), .B1(n571), .Y(n517) );
  NAND4X1 U633 ( .A(n395), .B(n396), .C(n397), .D(n398), .Y(n309) );
  OAI32X1 U634 ( .A0(MinCost[8]), .A1(n400), .A2(n311), .B0(n399), .B1(
        MinCost[9]), .Y(n308) );
  NOR2X1 U635 ( .A(n313), .B(n314), .Y(n307) );
  AOI32X1 U636 ( .A0(n324), .A1(n325), .A2(n326), .B0(n414), .B1(
        Min_cost_reg[4]), .Y(n322) );
  OAI21XL U637 ( .A0(n328), .A1(n329), .B0(n706), .Y(n325) );
  OAI211X1 U638 ( .A0(n405), .A1(MinCost[1]), .B0(n332), .C0(n706), .Y(n324)
         );
  AOI21X1 U639 ( .A0(n398), .A1(n705), .B0(n299), .Y(n297) );
  OA22X1 U640 ( .A0(n575), .A1(n560), .B0(n525), .B1(n559), .Y(n518) );
  OAI22XL U641 ( .A0(n387), .A1(n270), .B0(n685), .B1(n686), .Y(n472) );
  AOI2BB2X1 U642 ( .B0(n360), .B1(Min_cost_reg[7]), .A0N(n316), .A1N(n317), 
        .Y(n313) );
  OA22X1 U643 ( .A0(n402), .A1(MinCost[6]), .B0(n319), .B1(n320), .Y(n317) );
  OA22X1 U644 ( .A0(n403), .A1(MinCost[5]), .B0(n322), .B1(n323), .Y(n320) );
  CLKINVX1 U645 ( .A(n333), .Y(n706) );
  OAI32X1 U646 ( .A0(MinCost[2]), .A1(n404), .A2(n328), .B0(n357), .B1(
        MinCost[3]), .Y(n333) );
  OAI21XL U647 ( .A0(n611), .A1(n285), .B0(n40), .Y(n478) );
  AND2X2 U648 ( .A(n282), .B(n610), .Y(n285) );
  OAI21XL U649 ( .A0(n395), .A1(n302), .B0(n303), .Y(n492) );
  NAND4X1 U650 ( .A(n293), .B(n395), .C(MatchCount[1]), .D(MatchCount[2]), .Y(
        n303) );
  AOI21X1 U651 ( .A0(n396), .A1(n705), .B0(n296), .Y(n302) );
  NAND2X1 U652 ( .A(n40), .B(n280), .Y(n476) );
  XNOR2X1 U653 ( .A(N155), .B(n282), .Y(n280) );
  CLKINVX1 U654 ( .A(n292), .Y(n666) );
  AOI32X1 U655 ( .A0(n293), .A1(MatchCount[1]), .A2(n396), .B0(MatchCount[2]), 
        .B1(n296), .Y(n292) );
  NAND2X1 U656 ( .A(N633), .B(n673), .Y(n147) );
  NAND2X1 U657 ( .A(N621), .B(n673), .Y(n115) );
  NAND2X1 U658 ( .A(N620), .B(n673), .Y(n110) );
  AOI221X1 U659 ( .A0(n97), .A1(n87), .B0(n98), .B1(n99), .C0(n100), .Y(n82)
         );
  OAI31XL U660 ( .A0(switch_count_reg[0]), .A1(switch_count_reg[1]), .A2(n101), 
        .B0(n687), .Y(n100) );
  OAI221X1 U661 ( .A0(n681), .A1(n195), .B0(n526), .B1(n729), .C0(n201), .Y(
        n189) );
  AOI211X1 U662 ( .A0(n186), .A1(n125), .B0(n527), .C0(n202), .Y(n201) );
  NOR3X1 U663 ( .A(n188), .B(switch_count_reg[1]), .C(n723), .Y(n202) );
  OAI221X1 U664 ( .A0(n681), .A1(n691), .B0(n526), .B1(n724), .C0(n148), .Y(
        n131) );
  AOI31X1 U665 ( .A0(n425), .A1(N161), .A2(n98), .B0(n150), .Y(n148) );
  OAI31XL U666 ( .A0(n722), .A1(switch_count_reg[0]), .A2(n101), .B0(n687), 
        .Y(n150) );
  OAI221X1 U667 ( .A0(n681), .A1(n690), .B0(n526), .B1(n730), .C0(n124), .Y(
        n103) );
  AOI211X1 U668 ( .A0(n125), .A1(n98), .B0(n527), .C0(n127), .Y(n124) );
  NOR3X1 U669 ( .A(n723), .B(switch_count_reg[1]), .C(n101), .Y(n127) );
  OAI221X1 U670 ( .A0(n681), .A1(n178), .B0(n526), .B1(n726), .C0(n185), .Y(
        n170) );
  AOI211X1 U671 ( .A0(n186), .A1(n99), .B0(n527), .C0(n187), .Y(n185) );
  NOR3X1 U672 ( .A(n188), .B(switch_count_reg[1]), .C(switch_count_reg[0]), 
        .Y(n187) );
  OAI211X1 U673 ( .A0(state[1]), .A1(n698), .B0(n346), .C0(n62), .Y(n269) );
  NAND4X1 U674 ( .A(state[1]), .B(n531), .C(n347), .D(state[3]), .Y(n346) );
  NOR2X1 U675 ( .A(state[4]), .B(n389), .Y(n347) );
  OAI222XL U676 ( .A0(n717), .A1(n251), .B0(n659), .B1(n249), .C0(n425), .C1(
        n257), .Y(n503) );
  OAI222XL U677 ( .A0(n661), .A1(n249), .B0(n423), .B1(n255), .C0(n611), .C1(
        n251), .Y(n463) );
  CLKINVX1 U678 ( .A(n167), .Y(n661) );
  NOR2X1 U679 ( .A(n650), .B(n673), .Y(n255) );
  OAI222XL U680 ( .A0(n660), .A1(n249), .B0(n424), .B1(n250), .C0(n610), .C1(
        n251), .Y(n462) );
  CLKINVX1 U681 ( .A(n125), .Y(n660) );
  AOI2BB1X1 U682 ( .A0N(n659), .A1N(n45), .B0(n650), .Y(n250) );
  NAND2X1 U683 ( .A(N632), .B(n673), .Y(n116) );
  NAND2X1 U684 ( .A(N631), .B(n673), .Y(n112) );
  NAND2X1 U685 ( .A(N622), .B(n673), .Y(n146) );
  XNOR2X1 U686 ( .A(MinCost[2]), .B(n404), .Y(n329) );
  XOR2X1 U687 ( .A(n417), .B(n355), .Y(n337) );
  XOR2X1 U688 ( .A(n356), .B(n405), .Y(n338) );
  NOR3X1 U689 ( .A(state[3]), .B(state[4]), .C(state[1]), .Y(n286) );
  XNOR2X1 U690 ( .A(n414), .B(n358), .Y(n326) );
  OAI221X1 U691 ( .A0(n681), .A1(n206), .B0(n526), .B1(n725), .C0(n215), .Y(
        n203) );
  CLKINVX1 U692 ( .A(n207), .Y(n725) );
  AOI211X1 U693 ( .A0(n186), .A1(N161), .B0(n527), .C0(n216), .Y(n215) );
  NOR3X1 U694 ( .A(n188), .B(switch_count_reg[0]), .C(n722), .Y(n216) );
  XOR2X1 U695 ( .A(n359), .B(n403), .Y(n323) );
  NOR3X1 U696 ( .A(n299), .B(n398), .C(n304), .Y(n293) );
  NAND2X1 U697 ( .A(n556), .B(n76), .Y(n265) );
  OAI22XL U698 ( .A0(n383), .A1(n657), .B0(n82), .B1(n93), .Y(n433) );
  AOI221XL U699 ( .A0(n94), .A1(n689), .B0(n95), .B1(n87), .C0(n672), .Y(n93)
         );
  OAI22XL U700 ( .A0(n384), .A1(n657), .B0(n82), .B1(n89), .Y(n432) );
  AOI221XL U701 ( .A0(n90), .A1(n689), .B0(n91), .B1(n87), .C0(n671), .Y(n89)
         );
  OAI22XL U702 ( .A0(n385), .A1(n657), .B0(n82), .B1(n83), .Y(n431) );
  AOI221XL U703 ( .A0(n84), .A1(n689), .B0(n86), .B1(n87), .C0(n670), .Y(n83)
         );
  CLKINVX1 U704 ( .A(n407), .Y(n731) );
  OAI22XL U705 ( .A0(n382), .A1(n103), .B0(n656), .B1(n105), .Y(n434) );
  AOI221XL U706 ( .A0(n106), .A1(n86), .B0(n84), .B1(n690), .C0(n108), .Y(n105) );
  OAI22XL U707 ( .A0(n109), .A1(n110), .B0(n730), .B1(n112), .Y(n108) );
  NAND3X1 U708 ( .A(n610), .B(n717), .C(n611), .Y(n66) );
  OAI22XL U709 ( .A0(n365), .A1(n203), .B0(n651), .B1(n212), .Y(n451) );
  AOI221XL U710 ( .A0(n94), .A1(n206), .B0(n207), .B1(n662), .C0(n213), .Y(
        n212) );
  OAI22XL U711 ( .A0(n679), .A1(n206), .B0(n207), .B1(n146), .Y(n213) );
  OAI22XL U712 ( .A0(n366), .A1(n203), .B0(n651), .B1(n210), .Y(n450) );
  AOI221XL U713 ( .A0(n90), .A1(n206), .B0(n207), .B1(n663), .C0(n211), .Y(
        n210) );
  OAI221XL U714 ( .A0(n207), .A1(n115), .B0(n675), .B1(n206), .C0(n687), .Y(
        n211) );
  OAI22XL U715 ( .A0(n367), .A1(n203), .B0(n651), .B1(n205), .Y(n449) );
  AOI221XL U716 ( .A0(n84), .A1(n206), .B0(n207), .B1(n664), .C0(n208), .Y(
        n205) );
  OAI221XL U717 ( .A0(n207), .A1(n110), .B0(n677), .B1(n206), .C0(n687), .Y(
        n208) );
  OAI22XL U718 ( .A0(n368), .A1(n189), .B0(n652), .B1(n199), .Y(n448) );
  AOI221XL U719 ( .A0(n192), .A1(n662), .B0(n672), .B1(n729), .C0(n200), .Y(
        n199) );
  OAI221XL U720 ( .A0(n679), .A1(n195), .B0(n694), .B1(n678), .C0(n687), .Y(
        n200) );
  OAI22XL U721 ( .A0(n369), .A1(n189), .B0(n652), .B1(n197), .Y(n447) );
  AOI221XL U722 ( .A0(n694), .A1(n91), .B0(n90), .B1(n195), .C0(n198), .Y(n197) );
  OAI22XL U723 ( .A0(n192), .A1(n115), .B0(n116), .B1(n729), .Y(n198) );
  OAI22XL U724 ( .A0(n370), .A1(n189), .B0(n652), .B1(n191), .Y(n446) );
  AOI221XL U725 ( .A0(n192), .A1(n664), .B0(n670), .B1(n729), .C0(n194), .Y(
        n191) );
  OAI221XL U726 ( .A0(n677), .A1(n195), .B0(n694), .B1(n676), .C0(n687), .Y(
        n194) );
  OAI22XL U727 ( .A0(n374), .A1(n154), .B0(n654), .B1(n164), .Y(n442) );
  AOI221XL U728 ( .A0(n160), .A1(n662), .B0(n672), .B1(n728), .C0(n165), .Y(
        n164) );
  OAI221XL U729 ( .A0(n679), .A1(n692), .B0(n157), .B1(n678), .C0(n687), .Y(
        n165) );
  OAI22XL U730 ( .A0(n375), .A1(n154), .B0(n654), .B1(n162), .Y(n441) );
  AOI221XL U731 ( .A0(n160), .A1(n663), .B0(n671), .B1(n728), .C0(n163), .Y(
        n162) );
  OAI221XL U732 ( .A0(n675), .A1(n692), .B0(n157), .B1(n674), .C0(n687), .Y(
        n163) );
  OAI22XL U733 ( .A0(n376), .A1(n154), .B0(n654), .B1(n156), .Y(n440) );
  AOI221XL U734 ( .A0(n157), .A1(n86), .B0(n84), .B1(n692), .C0(n159), .Y(n156) );
  OAI22XL U735 ( .A0(n160), .A1(n110), .B0(n112), .B1(n728), .Y(n159) );
  OAI22XL U736 ( .A0(n377), .A1(n131), .B0(n655), .B1(n144), .Y(n439) );
  AOI221XL U737 ( .A0(n134), .A1(n95), .B0(n94), .B1(n691), .C0(n145), .Y(n144) );
  OAI22XL U738 ( .A0(n137), .A1(n146), .B0(n147), .B1(n724), .Y(n145) );
  OAI22XL U739 ( .A0(n378), .A1(n131), .B0(n655), .B1(n139), .Y(n438) );
  AOI221XL U740 ( .A0(n137), .A1(n663), .B0(n671), .B1(n724), .C0(n141), .Y(
        n139) );
  OAI221XL U741 ( .A0(n675), .A1(n691), .B0(n134), .B1(n674), .C0(n687), .Y(
        n141) );
  OAI22XL U742 ( .A0(n379), .A1(n131), .B0(n655), .B1(n133), .Y(n437) );
  AOI221XL U743 ( .A0(n134), .A1(n86), .B0(n84), .B1(n691), .C0(n136), .Y(n133) );
  OAI22XL U744 ( .A0(n137), .A1(n110), .B0(n112), .B1(n724), .Y(n136) );
  OAI22XL U745 ( .A0(n380), .A1(n103), .B0(n656), .B1(n117), .Y(n436) );
  AOI221XL U746 ( .A0(n662), .A1(n109), .B0(n672), .B1(n730), .C0(n119), .Y(
        n117) );
  OAI221XL U747 ( .A0(n679), .A1(n690), .B0(n106), .B1(n678), .C0(n687), .Y(
        n119) );
  OAI22XL U748 ( .A0(n381), .A1(n103), .B0(n656), .B1(n113), .Y(n435) );
  AOI221XL U749 ( .A0(n106), .A1(n91), .B0(n90), .B1(n690), .C0(n114), .Y(n113) );
  OAI22XL U750 ( .A0(n109), .A1(n115), .B0(n730), .B1(n116), .Y(n114) );
  OAI22XL U751 ( .A0(n371), .A1(n170), .B0(n653), .B1(n183), .Y(n445) );
  AOI221XL U752 ( .A0(n693), .A1(n95), .B0(n94), .B1(n178), .C0(n184), .Y(n183) );
  OAI22XL U753 ( .A0(n147), .A1(n726), .B0(n174), .B1(n146), .Y(n184) );
  OAI22XL U754 ( .A0(n372), .A1(n170), .B0(n653), .B1(n181), .Y(n444) );
  AOI221XL U755 ( .A0(n693), .A1(n91), .B0(n90), .B1(n178), .C0(n182), .Y(n181) );
  OAI22XL U756 ( .A0(n116), .A1(n726), .B0(n174), .B1(n115), .Y(n182) );
  OAI22XL U757 ( .A0(n373), .A1(n170), .B0(n653), .B1(n172), .Y(n443) );
  AOI221XL U758 ( .A0(n670), .A1(n726), .B0(n174), .B1(n664), .C0(n176), .Y(
        n172) );
  OAI221XL U759 ( .A0(n677), .A1(n178), .B0(n693), .B1(n676), .C0(n687), .Y(
        n176) );
  NAND3X1 U760 ( .A(n701), .B(n702), .C(state[1]), .Y(n65) );
  OAI22XL U761 ( .A0(n398), .A1(n665), .B0(n299), .B1(n300), .Y(n491) );
  NOR2X1 U762 ( .A(n398), .B(n301), .Y(n300) );
  CLKINVX1 U763 ( .A(n299), .Y(n665) );
  NOR2X1 U764 ( .A(n526), .B(n423), .Y(n186) );
  OAI22XL U765 ( .A0(n414), .A1(n667), .B0(n358), .B1(n529), .Y(n484) );
  OAI22XL U766 ( .A0(n356), .A1(n667), .B0(n405), .B1(n529), .Y(n487) );
  OAI22XL U767 ( .A0(n416), .A1(n667), .B0(n404), .B1(n529), .Y(n486) );
  OAI22XL U768 ( .A0(n361), .A1(n667), .B0(n400), .B1(n529), .Y(n480) );
  OAI22XL U769 ( .A0(n362), .A1(n667), .B0(n399), .B1(n529), .Y(n479) );
  OAI22XL U770 ( .A0(n415), .A1(n667), .B0(n357), .B1(n529), .Y(n485) );
  OAI22XL U771 ( .A0(n359), .A1(n667), .B0(n403), .B1(n529), .Y(n483) );
  OAI22XL U772 ( .A0(n413), .A1(n667), .B0(n402), .B1(n529), .Y(n482) );
  OAI22XL U773 ( .A0(n417), .A1(n667), .B0(n355), .B1(n529), .Y(n488) );
  OAI22XL U774 ( .A0(n360), .A1(n667), .B0(n401), .B1(n529), .Y(n481) );
  OAI2BB2XL U775 ( .B0(n352), .B1(n353), .A0N(n525), .A1N(n363), .Y(n351) );
  OAI2BB2XL U776 ( .B0(n397), .B1(n297), .A0N(n397), .A1N(n293), .Y(n490) );
  CLKINVX1 U777 ( .A(n348), .Y(n658) );
  OAI211X1 U778 ( .A0(n99), .A1(n349), .B0(n726), .C0(n350), .Y(n348) );
  NOR2X1 U779 ( .A(n167), .B(n407), .Y(n349) );
  AOI2BB2X1 U780 ( .B0(n628), .B1(N162), .A0N(n727), .A1N(n424), .Y(n350) );
  NAND2X1 U781 ( .A(n66), .B(n354), .Y(N150) );
  AO21X1 U782 ( .A0(n717), .A1(n610), .B0(n611), .Y(n354) );
  CLKBUFX3 U783 ( .A(state[0]), .Y(n531) );
  NAND2X1 U784 ( .A(n262), .B(n263), .Y(n469) );
  XOR2X1 U785 ( .A(n555), .B(n264), .Y(n263) );
  NOR2BX1 U786 ( .AN(n554), .B(n265), .Y(n264) );
  CLKINVX1 U787 ( .A(N158), .Y(n629) );
  CLKINVX1 U788 ( .A(N160), .Y(n647) );
  CLKINVX1 U789 ( .A(N157), .Y(n630) );
  AO21X1 U790 ( .A0(MinCost[0]), .A1(n337), .B0(n338), .Y(n332) );
  NOR2X2 U791 ( .A(n682), .B(n411), .Y(n84) );
  XOR2X1 U792 ( .A(n413), .B(n402), .Y(n319) );
  XNOR2X1 U793 ( .A(n360), .B(Min_cost_reg[7]), .Y(n316) );
  OAI221XL U794 ( .A0(n727), .A1(n249), .B0(n408), .B1(n257), .C0(n251), .Y(
        n465) );
  OAI211X1 U795 ( .A0(n556), .A1(n76), .B0(n265), .C0(n262), .Y(n471) );
  XOR2X1 U796 ( .A(n362), .B(n399), .Y(n311) );
  NOR3X1 U797 ( .A(n389), .B(state[3]), .C(n702), .Y(n64) );
  OAI211X1 U798 ( .A0(n682), .A1(n696), .B0(n669), .C0(n43), .Y(next_state[2])
         );
  OA21XL U799 ( .A0(n686), .A1(n390), .B0(n45), .Y(n43) );
  OAI211X1 U800 ( .A0(n531), .A1(n700), .B0(n46), .C0(n56), .Y(next_state[0])
         );
  CLKINVX1 U801 ( .A(n64), .Y(n700) );
  AOI31X1 U802 ( .A0(n57), .A1(n507), .A2(n390), .B0(n59), .Y(n56) );
  NAND2X1 U803 ( .A(n77), .B(n71), .Y(n430) );
  XOR2X1 U804 ( .A(n76), .B(n386), .Y(n77) );
  NOR2X1 U805 ( .A(n425), .B(n424), .Y(n167) );
  NAND2X1 U806 ( .A(n71), .B(n75), .Y(n429) );
  XNOR2X1 U807 ( .A(n427), .B(n74), .Y(n75) );
  NAND2X1 U808 ( .A(n386), .B(n76), .Y(n74) );
  NOR2X1 U809 ( .A(N161), .B(n425), .Y(n125) );
  NAND2BX1 U810 ( .AN(n311), .B(n341), .Y(n314) );
  XNOR2X1 U811 ( .A(n361), .B(n400), .Y(n341) );
  NOR2X1 U812 ( .A(N162), .B(n628), .Y(n61) );
  OAI21XL U813 ( .A0(n628), .A1(n258), .B0(n251), .Y(n466) );
  NOR2X1 U814 ( .A(n650), .B(n726), .Y(n258) );
  NAND2X1 U815 ( .A(n593), .B(n236), .Y(n234) );
  CLKINVX1 U816 ( .A(n425), .Y(n659) );
  NAND2X1 U817 ( .A(n71), .B(n72), .Y(n428) );
  XOR2X1 U818 ( .A(n426), .B(n73), .Y(n72) );
  NOR2BX1 U819 ( .AN(n427), .B(n74), .Y(n73) );
  OAI21XL U820 ( .A0(n363), .A1(n260), .B0(n40), .Y(n468) );
  NOR2BX1 U821 ( .AN(n592), .B(n234), .Y(n260) );
  NAND2X1 U822 ( .A(n40), .B(n233), .Y(n457) );
  XNOR2X1 U823 ( .A(n592), .B(n234), .Y(n233) );
  NAND2X1 U824 ( .A(n40), .B(n235), .Y(n458) );
  XOR2X1 U825 ( .A(n593), .B(n236), .Y(n235) );
  NAND2X1 U826 ( .A(n262), .B(n266), .Y(n470) );
  XNOR2X1 U827 ( .A(n554), .B(n265), .Y(n266) );
  OAI31XL U828 ( .A0(n65), .A1(n531), .A2(n699), .B0(n388), .Y(n391) );
  OAI21XL U829 ( .A0(n686), .A1(n66), .B0(n390), .Y(n392) );
  BUFX12 U830 ( .A(n735), .Y(J[2]) );
  NOR2X1 U831 ( .A(n554), .B(N145), .Y(n551) );
  NOR2X1 U832 ( .A(n554), .B(n556), .Y(n550) );
  NOR2X1 U833 ( .A(n556), .B(N146), .Y(n548) );
  NOR2X1 U834 ( .A(N145), .B(N146), .Y(n547) );
  AO22X1 U835 ( .A0(J_count[6]), .A1(n548), .B0(J_count[9]), .B1(n547), .Y(
        n538) );
  AOI221XL U836 ( .A0(J_count[3]), .A1(n551), .B0(J_count[0]), .B1(n550), .C0(
        n538), .Y(n541) );
  AO22X1 U837 ( .A0(J_count[18]), .A1(n548), .B0(J_count[21]), .B1(n547), .Y(
        n539) );
  AOI221XL U838 ( .A0(J_count[15]), .A1(n551), .B0(J_count[12]), .B1(n550), 
        .C0(n539), .Y(n540) );
  AO22X1 U839 ( .A0(J_count[7]), .A1(n548), .B0(J_count[10]), .B1(n547), .Y(
        n542) );
  AOI221XL U840 ( .A0(J_count[4]), .A1(n551), .B0(J_count[1]), .B1(n550), .C0(
        n542), .Y(n545) );
  AO22X1 U841 ( .A0(J_count[19]), .A1(n548), .B0(J_count[22]), .B1(n547), .Y(
        n543) );
  AOI221XL U842 ( .A0(J_count[16]), .A1(n551), .B0(J_count[13]), .B1(n550), 
        .C0(n543), .Y(n544) );
  AO22X1 U843 ( .A0(J_count[8]), .A1(n548), .B0(J_count[11]), .B1(n547), .Y(
        n546) );
  AOI221XL U844 ( .A0(J_count[5]), .A1(n551), .B0(J_count[2]), .B1(n550), .C0(
        n546), .Y(n553) );
  AO22X1 U845 ( .A0(J_count[20]), .A1(n548), .B0(J_count[23]), .B1(n547), .Y(
        n549) );
  AOI221XL U846 ( .A0(J_count[17]), .A1(n551), .B0(J_count[14]), .B1(n550), 
        .C0(n549), .Y(n552) );
  OAI22XL U847 ( .A0(n553), .A1(n555), .B0(N147), .B1(n552), .Y(n735) );
  NOR2X1 U848 ( .A(n573), .B(N148), .Y(n570) );
  NOR2X1 U849 ( .A(n573), .B(n574), .Y(n569) );
  NOR2X1 U850 ( .A(n574), .B(n524), .Y(n567) );
  NOR2X1 U851 ( .A(N148), .B(n524), .Y(n566) );
  AO22X1 U852 ( .A0(J_count[6]), .A1(n567), .B0(J_count[9]), .B1(n566), .Y(
        n557) );
  AOI221XL U853 ( .A0(J_count[3]), .A1(n570), .B0(J_count[0]), .B1(n569), .C0(
        n557), .Y(n560) );
  AO22X1 U854 ( .A0(J_count[18]), .A1(n567), .B0(J_count[21]), .B1(n566), .Y(
        n558) );
  AOI221XL U855 ( .A0(J_count[15]), .A1(n570), .B0(J_count[12]), .B1(n569), 
        .C0(n558), .Y(n559) );
  AO22X1 U856 ( .A0(J_count[7]), .A1(n567), .B0(J_count[10]), .B1(n566), .Y(
        n561) );
  AOI221XL U857 ( .A0(J_count[4]), .A1(n570), .B0(J_count[1]), .B1(n569), .C0(
        n561), .Y(n564) );
  AO22X1 U858 ( .A0(J_count[19]), .A1(n567), .B0(J_count[22]), .B1(n566), .Y(
        n562) );
  AOI221XL U859 ( .A0(J_count[16]), .A1(n570), .B0(J_count[13]), .B1(n569), 
        .C0(n562), .Y(n563) );
  AO22X1 U860 ( .A0(J_count[8]), .A1(n567), .B0(J_count[11]), .B1(n566), .Y(
        n565) );
  AOI221XL U861 ( .A0(J_count[5]), .A1(n570), .B0(J_count[2]), .B1(n569), .C0(
        n565), .Y(n572) );
  AO22X1 U862 ( .A0(J_count[20]), .A1(n567), .B0(J_count[23]), .B1(n566), .Y(
        n568) );
  AOI221XL U863 ( .A0(J_count[17]), .A1(n570), .B0(J_count[14]), .B1(n569), 
        .C0(n568), .Y(n571) );
  NOR2X1 U864 ( .A(n593), .B(N152), .Y(n586) );
  NOR2X1 U865 ( .A(N151), .B(N152), .Y(n585) );
  AO22X1 U866 ( .A0(J_count[6]), .A1(n586), .B0(J_count[9]), .B1(n585), .Y(
        n576) );
  AOI221XL U867 ( .A0(J_count[3]), .A1(n589), .B0(J_count[0]), .B1(n588), .C0(
        n576), .Y(n579) );
  AO22X1 U868 ( .A0(J_count[18]), .A1(n586), .B0(J_count[21]), .B1(n585), .Y(
        n577) );
  AOI221XL U869 ( .A0(J_count[15]), .A1(n589), .B0(J_count[12]), .B1(n588), 
        .C0(n577), .Y(n578) );
  OAI22XL U870 ( .A0(n363), .A1(n579), .B0(N153), .B1(n578), .Y(N271) );
  AO22X1 U871 ( .A0(J_count[7]), .A1(n586), .B0(J_count[10]), .B1(n585), .Y(
        n580) );
  AOI221XL U872 ( .A0(J_count[4]), .A1(n589), .B0(J_count[1]), .B1(n588), .C0(
        n580), .Y(n583) );
  AO22X1 U873 ( .A0(J_count[19]), .A1(n586), .B0(J_count[22]), .B1(n585), .Y(
        n581) );
  AOI221XL U874 ( .A0(J_count[16]), .A1(n589), .B0(J_count[13]), .B1(n588), 
        .C0(n581), .Y(n582) );
  AO22X1 U875 ( .A0(J_count[8]), .A1(n586), .B0(J_count[11]), .B1(n585), .Y(
        n584) );
  AOI221XL U876 ( .A0(J_count[5]), .A1(n589), .B0(J_count[2]), .B1(n588), .C0(
        n584), .Y(n591) );
  AO22X1 U877 ( .A0(J_count[20]), .A1(n586), .B0(J_count[23]), .B1(n585), .Y(
        n587) );
  AOI221XL U878 ( .A0(J_count[17]), .A1(n589), .B0(J_count[14]), .B1(n588), 
        .C0(n587), .Y(n590) );
  NOR2X1 U879 ( .A(N148), .B(N155), .Y(n604) );
  NOR2X1 U880 ( .A(n530), .B(N155), .Y(n603) );
  AO22X1 U881 ( .A0(J_count[6]), .A1(n604), .B0(J_count[9]), .B1(n603), .Y(
        n594) );
  AOI221XL U882 ( .A0(J_count[3]), .A1(n607), .B0(J_count[0]), .B1(n606), .C0(
        n594), .Y(n597) );
  AO22X1 U883 ( .A0(J_count[18]), .A1(n604), .B0(J_count[21]), .B1(n603), .Y(
        n595) );
  AOI221XL U884 ( .A0(J_count[15]), .A1(n607), .B0(J_count[12]), .B1(n606), 
        .C0(n595), .Y(n596) );
  OAI22XL U885 ( .A0(n611), .A1(n597), .B0(N156), .B1(n596), .Y(N514) );
  AO22X1 U886 ( .A0(J_count[7]), .A1(n604), .B0(J_count[10]), .B1(n603), .Y(
        n598) );
  AOI221XL U887 ( .A0(J_count[4]), .A1(n607), .B0(J_count[1]), .B1(n606), .C0(
        n598), .Y(n601) );
  AO22X1 U888 ( .A0(J_count[19]), .A1(n604), .B0(J_count[22]), .B1(n603), .Y(
        n599) );
  AOI221XL U889 ( .A0(J_count[16]), .A1(n607), .B0(J_count[13]), .B1(n606), 
        .C0(n599), .Y(n600) );
  OAI22XL U890 ( .A0(n611), .A1(n601), .B0(N156), .B1(n600), .Y(N513) );
  AO22X1 U891 ( .A0(J_count[8]), .A1(n604), .B0(J_count[11]), .B1(n603), .Y(
        n602) );
  AOI221XL U892 ( .A0(J_count[5]), .A1(n607), .B0(J_count[2]), .B1(n606), .C0(
        n602), .Y(n609) );
  AO22X1 U893 ( .A0(J_count[20]), .A1(n604), .B0(J_count[23]), .B1(n603), .Y(
        n605) );
  AOI221XL U894 ( .A0(J_count[17]), .A1(n607), .B0(J_count[14]), .B1(n606), 
        .C0(n605), .Y(n608) );
  OAI22XL U895 ( .A0(n609), .A1(n611), .B0(N156), .B1(n608), .Y(N512) );
  NOR2X1 U896 ( .A(n629), .B(N157), .Y(n625) );
  NOR2X1 U897 ( .A(n629), .B(n630), .Y(n624) );
  NOR2X1 U898 ( .A(n630), .B(N158), .Y(n622) );
  NOR2X1 U899 ( .A(N157), .B(N158), .Y(n621) );
  AO22X1 U900 ( .A0(J_count[6]), .A1(n622), .B0(J_count[9]), .B1(n621), .Y(
        n612) );
  AOI221XL U901 ( .A0(J_count[3]), .A1(n625), .B0(J_count[0]), .B1(n624), .C0(
        n612), .Y(n615) );
  AO22X1 U902 ( .A0(J_count[18]), .A1(n622), .B0(J_count[21]), .B1(n621), .Y(
        n613) );
  AOI221XL U903 ( .A0(J_count[15]), .A1(n625), .B0(J_count[12]), .B1(n624), 
        .C0(n613), .Y(n614) );
  OAI22XL U904 ( .A0(n628), .A1(n615), .B0(N159), .B1(n614), .Y(N622) );
  AO22X1 U905 ( .A0(J_count[7]), .A1(n622), .B0(J_count[10]), .B1(n621), .Y(
        n616) );
  AOI221XL U906 ( .A0(J_count[4]), .A1(n625), .B0(J_count[1]), .B1(n624), .C0(
        n616), .Y(n619) );
  AO22X1 U907 ( .A0(J_count[19]), .A1(n622), .B0(J_count[22]), .B1(n621), .Y(
        n617) );
  AOI221XL U908 ( .A0(J_count[16]), .A1(n625), .B0(J_count[13]), .B1(n624), 
        .C0(n617), .Y(n618) );
  OAI22XL U909 ( .A0(n628), .A1(n619), .B0(N159), .B1(n618), .Y(N621) );
  AO22X1 U910 ( .A0(J_count[8]), .A1(n622), .B0(J_count[11]), .B1(n621), .Y(
        n620) );
  AOI221XL U911 ( .A0(J_count[5]), .A1(n625), .B0(J_count[2]), .B1(n624), .C0(
        n620), .Y(n627) );
  AO22X1 U912 ( .A0(J_count[20]), .A1(n622), .B0(J_count[23]), .B1(n621), .Y(
        n623) );
  AOI221XL U913 ( .A0(J_count[17]), .A1(n625), .B0(J_count[14]), .B1(n624), 
        .C0(n623), .Y(n626) );
  OAI22XL U914 ( .A0(n627), .A1(n628), .B0(N159), .B1(n626), .Y(N620) );
  NOR2X1 U915 ( .A(n424), .B(N160), .Y(n644) );
  NOR2X1 U916 ( .A(n424), .B(n647), .Y(n643) );
  NOR2X1 U917 ( .A(n647), .B(N161), .Y(n641) );
  NOR2X1 U918 ( .A(N160), .B(N161), .Y(n640) );
  AO22X1 U919 ( .A0(J_count[6]), .A1(n641), .B0(J_count[9]), .B1(n640), .Y(
        n631) );
  AOI221XL U920 ( .A0(J_count[3]), .A1(n644), .B0(J_count[0]), .B1(n643), .C0(
        n631), .Y(n634) );
  AO22X1 U921 ( .A0(J_count[18]), .A1(n641), .B0(J_count[21]), .B1(n640), .Y(
        n632) );
  AOI221XL U922 ( .A0(J_count[15]), .A1(n644), .B0(J_count[12]), .B1(n643), 
        .C0(n632), .Y(n633) );
  OAI22XL U923 ( .A0(n423), .A1(n634), .B0(N162), .B1(n633), .Y(N633) );
  AO22X1 U924 ( .A0(J_count[7]), .A1(n641), .B0(J_count[10]), .B1(n640), .Y(
        n635) );
  AOI221XL U925 ( .A0(J_count[4]), .A1(n644), .B0(J_count[1]), .B1(n643), .C0(
        n635), .Y(n638) );
  AO22X1 U926 ( .A0(J_count[19]), .A1(n641), .B0(J_count[22]), .B1(n640), .Y(
        n636) );
  AOI221XL U927 ( .A0(J_count[16]), .A1(n644), .B0(J_count[13]), .B1(n643), 
        .C0(n636), .Y(n637) );
  OAI22XL U928 ( .A0(n423), .A1(n638), .B0(N162), .B1(n637), .Y(N632) );
  AO22X1 U929 ( .A0(J_count[8]), .A1(n641), .B0(J_count[11]), .B1(n640), .Y(
        n639) );
  AOI221XL U930 ( .A0(J_count[5]), .A1(n644), .B0(J_count[2]), .B1(n643), .C0(
        n639), .Y(n646) );
  AO22X1 U931 ( .A0(J_count[20]), .A1(n641), .B0(J_count[23]), .B1(n640), .Y(
        n642) );
  AOI221XL U932 ( .A0(J_count[17]), .A1(n644), .B0(J_count[14]), .B1(n643), 
        .C0(n642), .Y(n645) );
  OAI22XL U933 ( .A0(n646), .A1(n423), .B0(N162), .B1(n645), .Y(N631) );
endmodule

