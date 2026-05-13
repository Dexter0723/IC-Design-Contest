/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Thu May 14 02:07:18 2026
/////////////////////////////////////////////////////////////


module DT_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module DT_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_3 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module DT_DW01_inc_4 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n1, n2;
  wire   [7:4] carry;

  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(n1), .CO(carry[4]), .S(SUM[3]) );
  XOR2X1 U1 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  AND2X2 U2 ( .A(A[2]), .B(n2), .Y(n1) );
  AND2X2 U3 ( .A(A[1]), .B(A[0]), .Y(n2) );
  XOR2XL U4 ( .A(A[2]), .B(n2), .Y(SUM[2]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U6 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd;
  wire   N46, N47, N48, N49, N115, N182, N183, N184, N185, N186, N187, N188,
         N189, N190, N191, N192, N193, N194, N195, N197, N198, N199, N200,
         N201, N202, N203, N204, N205, N206, N207, N208, N209, N210, N211,
         N212, N213, N214, N215, N216, N218, N219, N220, N221, N222, N223,
         N235, N236, N237, N238, N239, N240, N241, N242, N243, N244, N245,
         N246, N247, N261, N262, N263, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N287, N288, N289, N290,
         N291, N292, N293, N294, N295, N296, N297, N298, N299, N300, N318,
         N319, N320, N321, N322, N323, N324, N325, N326, N327, N377, N378,
         N379, N380, N381, N382, N383, N384, N385, N386, N387, N388, N389,
         N400, N401, N402, N403, N404, N405, N406, N407, N425, N426, N427,
         N428, N429, N430, N459, N460, N461, N462, N463, N464, N465, N466,
         N467, N468, N469, N470, N471, N527, N528, N529, N530, N531, N532,
         N533, N534, N535, N536, N537, N538, N539, N540, N698, n251, n252,
         n253, n254, n255, n256, n259, n260, n2610, n2620, n2630, n2640, n2650,
         n2660, n2670, n2680, n2690, n2700, n2710, n2720, n2740, n2750, n2760,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n2870,
         n2880, n2900, n2910, n2920, n2930, n2940, n2950, n2960, n2970, n2980,
         n2990, n3000, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n3180, n3190, n3200,
         n3210, n3220, n3230, n3240, n3250, n3260, n3270, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350,
         add_164_carry_2_, add_164_carry_3_, add_164_carry_4_,
         add_164_carry_5_, add_164_carry_6_, add_164_carry_7_,
         add_164_carry_8_, add_164_carry_9_, add_164_carry_10_,
         add_164_carry_11_, add_164_carry_12_, add_164_carry_13_,
         add_156_carry_2_, add_156_carry_3_, add_156_carry_4_,
         add_156_carry_5_, add_156_carry_6_, add_156_carry_7_,
         add_156_carry_8_, add_156_carry_9_, add_156_carry_10_,
         add_156_carry_11_, add_156_carry_12_, add_156_carry_13_,
         sub_124_carry_2_, sub_124_carry_3_, sub_124_carry_4_,
         sub_124_carry_5_, sub_124_carry_6_, sub_124_carry_7_,
         sub_124_carry_8_, sub_124_carry_9_, sub_124_carry_10_,
         sub_124_carry_11_, sub_124_carry_12_, sub_124_carry_13_,
         sub_116_carry_2_, sub_116_carry_3_, sub_116_carry_4_,
         sub_116_carry_5_, sub_116_carry_6_, sub_116_carry_7_,
         sub_116_carry_8_, sub_116_carry_9_, sub_116_carry_10_,
         sub_116_carry_11_, sub_116_carry_12_, sub_116_carry_13_, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n3770, n3780, n3790, n3800, n3810, n3820, n3830, n3840,
         n3850, n3860, n3870, n3880, n3890, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n4000, n4010, n4020, n4030, n4040, n4050,
         n4060, n4070, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n4250, n4260, n4270,
         n4280, n4290, n4300, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n4590, n4600,
         n4610, n4620, n4630, n4640, n4650, n4660, n4670, n4680, n4690, n4700,
         n4710, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n5270, n5280, n5290, n5300, n5310, n5320, n5330, n5340, n5350,
         n5360, n5370, n5380, n5390, n5400, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622;
  wire   [3:0] state;
  wire   [13:7] count;
  wire   [3:0] next_state;
  wire   [7:3] compare;
  wire   [13:1] sub_175_aco_carry;
  wire   [13:9] add_160_carry;
  wire   [13:9] sub_120_carry;
  wire   [13:1] sub_113_aco_carry;

  DT_DW01_inc_0 add_141 ( .A(sti_addr), .SUM({N327, N326, N325, N324, N323, 
        N322, N321, N320, N319, N318}) );
  DT_DW01_inc_1 add_128_2 ( .A({compare[7:5], n4700, compare[3], n4630, n455, 
        n4590}), .SUM({N276, N275, N274, N273, N272, N271, N270, N269}) );
  DT_DW01_inc_2 r453 ( .A(res_di), .SUM({N407, N406, N405, N404, N403, N402, 
        N401, N400}) );
  DT_DW01_inc_3 r448 ( .A({count[13], n3840, n3830, n373, n374, n375, n376, 
        n3770, n3780, n3790, n3800, n3810, n3820, n3850}), .SUM({N300, N299, 
        N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287}) );
  DT_DW01_inc_4 r446 ( .A(res_di), .SUM({N268, N267, N266, N265, N264, N263, 
        N262, N261}) );
  DFFSX1 pixel_reg_0_ ( .D(n303), .CK(clk), .SN(reset), .Q(N46), .QN(n4060) );
  DFFSX1 pixel_reg_1_ ( .D(n302), .CK(clk), .SN(reset), .Q(N47), .QN(n4050) );
  DFFSX1 pixel_reg_2_ ( .D(n301), .CK(clk), .SN(reset), .Q(N48), .QN(n4040) );
  DFFSX1 pixel_reg_3_ ( .D(n3000), .CK(clk), .SN(reset), .Q(N49), .QN(n2880)
         );
  DFFRX1 FB_Flag_reg ( .D(n348), .CK(clk), .RN(reset), .Q(n622), .QN(n443) );
  DFFRX1 state_reg_1_ ( .D(next_state[1]), .CK(clk), .RN(reset), .Q(state[1]), 
        .QN(n413) );
  DFFRX1 state_reg_0_ ( .D(next_state[0]), .CK(clk), .RN(reset), .Q(state[0]), 
        .QN(n600) );
  DFFRX1 count_reg_0_ ( .D(n350), .CK(clk), .RN(reset), .Q(N210), .QN(n2870)
         );
  DFFRX1 count_reg_7_ ( .D(n3240), .CK(clk), .RN(n3860), .Q(count[7]), .QN(
        n280) );
  DFFRX1 count_reg_6_ ( .D(n3230), .CK(clk), .RN(n3860), .Q(N216), .QN(n281)
         );
  DFFRX1 count_reg_5_ ( .D(n3220), .CK(clk), .RN(n3860), .Q(N215), .QN(n282)
         );
  DFFRX1 count_reg_4_ ( .D(n3210), .CK(clk), .RN(n3860), .Q(N214), .QN(n283)
         );
  DFFRX1 count_reg_3_ ( .D(n3200), .CK(clk), .RN(reset), .Q(N213), .QN(n284)
         );
  DFFRX1 count_reg_2_ ( .D(n3190), .CK(clk), .RN(reset), .Q(N212), .QN(n285)
         );
  DFFRX1 count_reg_1_ ( .D(n3180), .CK(clk), .RN(reset), .Q(N211), .QN(n286)
         );
  DFFRX1 count_reg_8_ ( .D(n3250), .CK(clk), .RN(n3860), .Q(count[8]), .QN(
        n279) );
  DFFRX1 count_reg_9_ ( .D(n3260), .CK(clk), .RN(n3860), .Q(count[9]), .QN(
        n278) );
  DFFRX1 count_reg_10_ ( .D(n3270), .CK(clk), .RN(n3860), .Q(count[10]), .QN(
        n277) );
  DFFRX1 count_reg_11_ ( .D(n328), .CK(clk), .RN(reset), .Q(count[11]), .QN(
        n2760) );
  DFFRX1 count_reg_12_ ( .D(n329), .CK(clk), .RN(reset), .Q(count[12]), .QN(
        n2750) );
  DFFRX1 compare_reg_7_ ( .D(n338), .CK(clk), .RN(n3860), .Q(compare[7]), .QN(
        n2650) );
  DFFRX1 compare_reg_6_ ( .D(n339), .CK(clk), .RN(n3860), .Q(compare[6]), .QN(
        n2660) );
  DFFRX1 compare_reg_5_ ( .D(n340), .CK(clk), .RN(n3860), .Q(compare[5]), .QN(
        n2670) );
  DFFRX1 compare_reg_4_ ( .D(n341), .CK(clk), .RN(n3870), .Q(n4700), .QN(n2680) );
  DFFRX1 compare_reg_3_ ( .D(n342), .CK(clk), .RN(n3870), .Q(compare[3]), .QN(
        n2690) );
  DFFRX1 compare_reg_2_ ( .D(n343), .CK(clk), .RN(n3870), .Q(n4630), .QN(n2700) );
  DFFRX1 compare_reg_1_ ( .D(n345), .CK(clk), .RN(n3860), .Q(n455), .QN(n2710)
         );
  DFFRX1 compare_reg_0_ ( .D(n344), .CK(clk), .RN(n3860), .Q(n4590), .QN(n2720) );
  DFFRX2 count_reg_13_ ( .D(n349), .CK(clk), .RN(n3870), .Q(count[13]), .QN(
        n2740) );
  DFFRX2 sti_addr_reg_0_ ( .D(n2990), .CK(clk), .RN(n3860), .Q(sti_addr[0]) );
  DFFRX2 sti_addr_reg_9_ ( .D(n2900), .CK(clk), .RN(reset), .Q(sti_addr[9]) );
  DFFRX2 sti_addr_reg_6_ ( .D(n2930), .CK(clk), .RN(n3880), .Q(sti_addr[6]) );
  DFFRX2 sti_addr_reg_4_ ( .D(n2950), .CK(clk), .RN(n3870), .Q(sti_addr[4]) );
  DFFRX2 sti_addr_reg_5_ ( .D(n2940), .CK(clk), .RN(n3860), .Q(sti_addr[5]) );
  DFFRX2 sti_addr_reg_7_ ( .D(n2920), .CK(clk), .RN(n3880), .Q(sti_addr[7]) );
  DFFRX2 sti_addr_reg_2_ ( .D(n2970), .CK(clk), .RN(n3870), .Q(sti_addr[2]) );
  DFFRX2 sti_addr_reg_1_ ( .D(n2980), .CK(clk), .RN(n3860), .Q(sti_addr[1]) );
  DFFRX2 sti_addr_reg_8_ ( .D(n2910), .CK(clk), .RN(reset), .Q(sti_addr[8]) );
  DFFRX2 sti_addr_reg_3_ ( .D(n2960), .CK(clk), .RN(n3880), .Q(sti_addr[3]) );
  DFFRX2 state_reg_2_ ( .D(next_state[2]), .CK(clk), .RN(n3860), .Q(state[2]), 
        .QN(n490) );
  DFFRX2 res_addr_reg_12_ ( .D(n305), .CK(clk), .RN(n3870), .Q(res_addr[12])
         );
  DFFRX2 res_addr_reg_11_ ( .D(n306), .CK(clk), .RN(n3870), .Q(res_addr[11])
         );
  DFFRX2 res_addr_reg_10_ ( .D(n307), .CK(clk), .RN(n3870), .Q(res_addr[10])
         );
  DFFRX2 res_addr_reg_9_ ( .D(n308), .CK(clk), .RN(n3870), .Q(res_addr[9]) );
  DFFRX2 res_addr_reg_8_ ( .D(n309), .CK(clk), .RN(n3880), .Q(res_addr[8]) );
  DFFRX2 res_addr_reg_7_ ( .D(n310), .CK(clk), .RN(n3880), .Q(res_addr[7]) );
  DFFRX2 res_addr_reg_6_ ( .D(n311), .CK(clk), .RN(n3880), .Q(res_addr[6]) );
  DFFRX2 res_addr_reg_5_ ( .D(n312), .CK(clk), .RN(n3880), .Q(res_addr[5]) );
  DFFRX2 res_addr_reg_4_ ( .D(n313), .CK(clk), .RN(n3880), .Q(res_addr[4]) );
  DFFRX2 res_addr_reg_3_ ( .D(n314), .CK(clk), .RN(n3880), .Q(res_addr[3]) );
  DFFRX2 res_addr_reg_2_ ( .D(n315), .CK(clk), .RN(n3880), .Q(res_addr[2]) );
  DFFRX2 res_addr_reg_1_ ( .D(n316), .CK(clk), .RN(n3880), .Q(res_addr[1]) );
  DFFRX2 res_addr_reg_0_ ( .D(n317), .CK(clk), .RN(n3880), .Q(res_addr[0]) );
  DFFRX2 res_addr_reg_13_ ( .D(n304), .CK(clk), .RN(n3870), .Q(res_addr[13])
         );
  DFFRX2 sti_rd_reg ( .D(n2640), .CK(clk), .RN(reset), .Q(sti_rd), .QN(n2630)
         );
  DFFRX2 res_do_reg_7_ ( .D(n336), .CK(clk), .RN(n3870), .Q(res_do[7]), .QN(
        n2620) );
  DFFRX2 res_do_reg_6_ ( .D(n335), .CK(clk), .RN(n3870), .Q(res_do[6]), .QN(
        n251) );
  DFFRX2 res_do_reg_5_ ( .D(n334), .CK(clk), .RN(n3860), .Q(res_do[5]), .QN(
        n252) );
  DFFRX2 res_do_reg_4_ ( .D(n333), .CK(clk), .RN(n3880), .Q(res_do[4]), .QN(
        n253) );
  DFFRX2 res_do_reg_3_ ( .D(n332), .CK(clk), .RN(n3880), .Q(res_do[3]), .QN(
        n254) );
  DFFRX2 res_do_reg_2_ ( .D(n331), .CK(clk), .RN(n3880), .Q(res_do[2]), .QN(
        n255) );
  DFFRX2 res_do_reg_1_ ( .D(n330), .CK(clk), .RN(n3880), .Q(res_do[1]), .QN(
        n256) );
  DFFRX2 res_do_reg_0_ ( .D(n337), .CK(clk), .RN(n3870), .Q(res_do[0]), .QN(
        n2610) );
  DFFRX2 res_wr_reg ( .D(n346), .CK(clk), .RN(n3870), .Q(res_wr), .QN(n260) );
  DFFRX2 res_rd_reg ( .D(n347), .CK(clk), .RN(n3870), .Q(res_rd), .QN(n259) );
  DFFRX2 state_reg_3_ ( .D(next_state[3]), .CK(clk), .RN(reset), .Q(state[3]), 
        .QN(n489) );
  AOI2BB1X2 U299 ( .A0N(n476), .A1N(compare[7]), .B0(n491), .Y(n486) );
  AOI222X1 U300 ( .A0(N406), .A1(n452), .B0(N275), .B1(n453), .C0(n454), .C1(
        compare[6]), .Y(n475) );
  AOI222X1 U301 ( .A0(N405), .A1(n452), .B0(N274), .B1(n453), .C0(n454), .C1(
        compare[5]), .Y(n473) );
  AOI222X1 U302 ( .A0(N403), .A1(n452), .B0(N272), .B1(n453), .C0(n454), .C1(
        compare[3]), .Y(n4660) );
  AOI222X1 U303 ( .A0(N401), .A1(n452), .B0(N270), .B1(n453), .C0(n454), .C1(
        n455), .Y(n451) );
  AOI32X1 U304 ( .A0(n492), .A1(n493), .A2(n494), .B0(n495), .B1(n496), .Y(
        n491) );
  NAND2X2 U305 ( .A(N266), .B(n2670), .Y(n493) );
  OAI221X1 U306 ( .A0(n476), .A1(n448), .B0(n449), .B1(n477), .C0(n478), .Y(
        n338) );
  OAI221X1 U307 ( .A0(n448), .A1(n456), .B0(n449), .B1(n457), .C0(n458), .Y(
        n344) );
  OAI221X1 U308 ( .A0(n4670), .A1(n448), .B0(n449), .B1(n4680), .C0(n4690), 
        .Y(n341) );
  OAI221X1 U309 ( .A0(n4600), .A1(n448), .B0(n449), .B1(n4610), .C0(n4620), 
        .Y(n343) );
  CLKINVX1 U310 ( .A(n497), .Y(n355) );
  OR2X1 U311 ( .A(n486), .B(n487), .Y(n351) );
  AOI32X2 U312 ( .A0(n493), .A1(n4700), .A2(n4670), .B0(compare[5]), .B1(n4710), .Y(n497) );
  NAND2X6 U313 ( .A(n479), .B(n480), .Y(n454) );
  CLKINVX1 U314 ( .A(N266), .Y(n4710) );
  CLKMX2X2 U315 ( .A(n351), .B(n352), .S0(n483), .Y(n479) );
  OR4X1 U316 ( .A(n369), .B(n484), .C(n4270), .D(n485), .Y(n352) );
  AOI2BB1X2 U317 ( .A0N(n487), .A1N(n486), .B0(n483), .Y(n452) );
  NOR2X1 U318 ( .A(n489), .B(state[2]), .Y(n411) );
  NAND3XL U319 ( .A(n601), .B(state[0]), .C(state[3]), .Y(n4290) );
  NOR3XL U320 ( .A(state[1]), .B(state[3]), .C(n414), .Y(n421) );
  NOR3XL U321 ( .A(state[2]), .B(state[3]), .C(n412), .Y(n422) );
  NAND4XL U322 ( .A(state[3]), .B(state[2]), .C(state[0]), .D(state[1]), .Y(
        n597) );
  AND2XL U323 ( .A(sti_addr[3]), .B(sti_addr[4]), .Y(n615) );
  AND3XL U324 ( .A(sti_addr[7]), .B(sti_addr[5]), .C(sti_addr[6]), .Y(n614) );
  AND2XL U325 ( .A(sti_addr[8]), .B(sti_addr[9]), .Y(n613) );
  AND3XL U326 ( .A(sti_addr[2]), .B(sti_addr[0]), .C(sti_addr[1]), .Y(n616) );
  NOR2X2 U327 ( .A(N698), .B(n598), .Y(done) );
  NAND2XL U328 ( .A(n497), .B(N267), .Y(n495) );
  NAND3XL U329 ( .A(n600), .B(n489), .C(n601), .Y(n433) );
  CLKINVX1 U330 ( .A(res_di[3]), .Y(n4650) );
  NAND3XL U331 ( .A(state[2]), .B(n489), .C(n519), .Y(n598) );
  NOR2X1 U332 ( .A(n506), .B(n507), .Y(n353) );
  NOR2X1 U333 ( .A(res_di[7]), .B(n2650), .Y(n354) );
  OR2X1 U334 ( .A(n353), .B(n354), .Y(n482) );
  NAND2X2 U335 ( .A(n484), .B(n482), .Y(n448) );
  CLKBUFX3 U336 ( .A(N210), .Y(n3850) );
  CLKBUFX3 U337 ( .A(count[7]), .Y(n376) );
  NAND2X1 U338 ( .A(n355), .B(n356), .Y(n357) );
  NAND2X1 U339 ( .A(n357), .B(n2660), .Y(n496) );
  CLKINVX1 U340 ( .A(N267), .Y(n356) );
  CLKBUFX3 U341 ( .A(n446), .Y(n361) );
  NOR2X1 U342 ( .A(n363), .B(n362), .Y(n446) );
  CLKINVX1 U343 ( .A(N698), .Y(n3890) );
  CLKBUFX3 U344 ( .A(n541), .Y(n360) );
  NOR4BX1 U345 ( .AN(n596), .B(n366), .C(n364), .D(n365), .Y(n541) );
  CLKBUFX3 U346 ( .A(n4300), .Y(n362) );
  CLKINVX1 U347 ( .A(n440), .Y(n4300) );
  CLKBUFX3 U348 ( .A(n420), .Y(n363) );
  CLKINVX1 U349 ( .A(n433), .Y(n420) );
  CLKBUFX3 U350 ( .A(n505), .Y(n368) );
  CLKINVX1 U351 ( .A(n481), .Y(n505) );
  CLKBUFX3 U352 ( .A(n488), .Y(n364) );
  NOR3XL U353 ( .A(n489), .B(n413), .C(n414), .Y(n488) );
  CLKBUFX3 U354 ( .A(n418), .Y(n366) );
  CLKINVX1 U355 ( .A(n409), .Y(n418) );
  CLKBUFX3 U356 ( .A(n419), .Y(n365) );
  CLKINVX1 U357 ( .A(n4290), .Y(n419) );
  CLKBUFX3 U358 ( .A(n542), .Y(n359) );
  NAND2X1 U359 ( .A(n361), .B(n434), .Y(n542) );
  CLKBUFX3 U360 ( .A(n543), .Y(n371) );
  CLKINVX1 U361 ( .A(n410), .Y(n543) );
  CLKBUFX3 U362 ( .A(n439), .Y(n358) );
  AOI2BB1X1 U363 ( .A0N(n442), .A1N(n440), .B0(n361), .Y(n439) );
  CLKBUFX3 U364 ( .A(reset), .Y(n3880) );
  CLKBUFX3 U365 ( .A(reset), .Y(n3870) );
  CLKBUFX3 U366 ( .A(reset), .Y(n3860) );
  CLKBUFX3 U367 ( .A(N211), .Y(n3820) );
  CLKBUFX3 U368 ( .A(N212), .Y(n3810) );
  NAND3X2 U369 ( .A(n597), .B(n598), .C(n361), .Y(n520) );
  CLKBUFX3 U370 ( .A(n422), .Y(n369) );
  CLKBUFX3 U371 ( .A(N213), .Y(n3800) );
  CLKBUFX3 U372 ( .A(N214), .Y(n3790) );
  CLKBUFX3 U373 ( .A(N215), .Y(n3780) );
  CLKBUFX3 U374 ( .A(n504), .Y(n367) );
  NOR3XL U375 ( .A(n489), .B(state[1]), .C(n414), .Y(n504) );
  CLKBUFX3 U376 ( .A(n421), .Y(n370) );
  CLKBUFX3 U377 ( .A(N216), .Y(n3770) );
  CLKBUFX3 U378 ( .A(count[8]), .Y(n375) );
  CLKBUFX3 U379 ( .A(count[9]), .Y(n374) );
  CLKBUFX3 U380 ( .A(count[10]), .Y(n373) );
  CLKBUFX3 U381 ( .A(n608), .Y(n372) );
  NAND4X1 U382 ( .A(n2880), .B(n4050), .C(n4060), .D(n612), .Y(n608) );
  CLKBUFX3 U383 ( .A(count[11]), .Y(n3830) );
  CLKBUFX3 U384 ( .A(count[12]), .Y(n3840) );
  AND3X2 U385 ( .A(n503), .B(n410), .C(n4280), .Y(n449) );
  NOR2X2 U386 ( .A(n4250), .B(n482), .Y(n453) );
  XOR2X1 U387 ( .A(count[13]), .B(add_156_carry_13_), .Y(N389) );
  AND2X1 U388 ( .A(add_156_carry_12_), .B(n3840), .Y(add_156_carry_13_) );
  XOR2X1 U389 ( .A(n3840), .B(add_156_carry_12_), .Y(N388) );
  AND2X1 U390 ( .A(add_156_carry_11_), .B(n3830), .Y(add_156_carry_12_) );
  XOR2X1 U391 ( .A(n3830), .B(add_156_carry_11_), .Y(N387) );
  AND2X1 U392 ( .A(add_156_carry_10_), .B(n373), .Y(add_156_carry_11_) );
  XOR2X1 U393 ( .A(n373), .B(add_156_carry_10_), .Y(N386) );
  AND2X1 U394 ( .A(add_156_carry_9_), .B(n374), .Y(add_156_carry_10_) );
  XOR2X1 U395 ( .A(n374), .B(add_156_carry_9_), .Y(N385) );
  AND2X1 U396 ( .A(add_156_carry_8_), .B(n375), .Y(add_156_carry_9_) );
  XOR2X1 U397 ( .A(n375), .B(add_156_carry_8_), .Y(N384) );
  AND2X1 U398 ( .A(add_156_carry_7_), .B(n376), .Y(add_156_carry_8_) );
  XOR2X1 U399 ( .A(n376), .B(add_156_carry_7_), .Y(N383) );
  OR2X1 U400 ( .A(n3770), .B(add_156_carry_6_), .Y(add_156_carry_7_) );
  XNOR2X1 U401 ( .A(add_156_carry_6_), .B(n3770), .Y(N382) );
  OR2X1 U402 ( .A(n3780), .B(add_156_carry_5_), .Y(add_156_carry_6_) );
  XNOR2X1 U403 ( .A(add_156_carry_5_), .B(n3780), .Y(N381) );
  OR2X1 U404 ( .A(n3790), .B(add_156_carry_4_), .Y(add_156_carry_5_) );
  XNOR2X1 U405 ( .A(add_156_carry_4_), .B(n3790), .Y(N380) );
  OR2X1 U406 ( .A(n3800), .B(add_156_carry_3_), .Y(add_156_carry_4_) );
  XNOR2X1 U407 ( .A(add_156_carry_3_), .B(n3800), .Y(N379) );
  OR2X1 U408 ( .A(n3810), .B(add_156_carry_2_), .Y(add_156_carry_3_) );
  XNOR2X1 U409 ( .A(add_156_carry_2_), .B(n3810), .Y(N378) );
  OR2X1 U410 ( .A(n3820), .B(n3850), .Y(add_156_carry_2_) );
  XNOR2X1 U411 ( .A(n3850), .B(n3820), .Y(N377) );
  XOR2X1 U412 ( .A(count[13]), .B(add_164_carry_13_), .Y(N471) );
  AND2X1 U413 ( .A(add_164_carry_12_), .B(n3840), .Y(add_164_carry_13_) );
  XOR2X1 U414 ( .A(n3840), .B(add_164_carry_12_), .Y(N470) );
  AND2X1 U415 ( .A(add_164_carry_11_), .B(n3830), .Y(add_164_carry_12_) );
  XOR2X1 U416 ( .A(n3830), .B(add_164_carry_11_), .Y(N469) );
  AND2X1 U417 ( .A(add_164_carry_10_), .B(n373), .Y(add_164_carry_11_) );
  XOR2X1 U418 ( .A(n373), .B(add_164_carry_10_), .Y(N468) );
  AND2X1 U419 ( .A(add_164_carry_9_), .B(n374), .Y(add_164_carry_10_) );
  XOR2X1 U420 ( .A(n374), .B(add_164_carry_9_), .Y(N467) );
  AND2X1 U421 ( .A(add_164_carry_8_), .B(n375), .Y(add_164_carry_9_) );
  XOR2X1 U422 ( .A(n375), .B(add_164_carry_8_), .Y(N466) );
  OR2X1 U423 ( .A(n376), .B(add_164_carry_7_), .Y(add_164_carry_8_) );
  XNOR2X1 U424 ( .A(add_164_carry_7_), .B(n376), .Y(N465) );
  AND2X1 U425 ( .A(add_164_carry_6_), .B(n3770), .Y(add_164_carry_7_) );
  XOR2X1 U426 ( .A(n3770), .B(add_164_carry_6_), .Y(N464) );
  AND2X1 U427 ( .A(add_164_carry_5_), .B(n3780), .Y(add_164_carry_6_) );
  XOR2X1 U428 ( .A(n3780), .B(add_164_carry_5_), .Y(N463) );
  AND2X1 U429 ( .A(add_164_carry_4_), .B(n3790), .Y(add_164_carry_5_) );
  XOR2X1 U430 ( .A(n3790), .B(add_164_carry_4_), .Y(N462) );
  AND2X1 U431 ( .A(add_164_carry_3_), .B(n3800), .Y(add_164_carry_4_) );
  XOR2X1 U432 ( .A(n3800), .B(add_164_carry_3_), .Y(N461) );
  AND2X1 U433 ( .A(add_164_carry_2_), .B(n3810), .Y(add_164_carry_3_) );
  XOR2X1 U434 ( .A(n3810), .B(add_164_carry_2_), .Y(N460) );
  AND2X1 U435 ( .A(n3850), .B(n3820), .Y(add_164_carry_2_) );
  XOR2X1 U436 ( .A(n3820), .B(n3850), .Y(N459) );
  XOR2X1 U437 ( .A(count[13]), .B(add_160_carry[13]), .Y(N430) );
  AND2X1 U438 ( .A(add_160_carry[12]), .B(n3840), .Y(add_160_carry[13]) );
  XOR2X1 U439 ( .A(n3840), .B(add_160_carry[12]), .Y(N429) );
  AND2X1 U440 ( .A(add_160_carry[11]), .B(n3830), .Y(add_160_carry[12]) );
  XOR2X1 U441 ( .A(n3830), .B(add_160_carry[11]), .Y(N428) );
  AND2X1 U442 ( .A(add_160_carry[10]), .B(n373), .Y(add_160_carry[11]) );
  XOR2X1 U443 ( .A(n373), .B(add_160_carry[10]), .Y(N427) );
  AND2X1 U444 ( .A(add_160_carry[9]), .B(n374), .Y(add_160_carry[10]) );
  XOR2X1 U445 ( .A(n374), .B(add_160_carry[9]), .Y(N426) );
  AND2X1 U446 ( .A(n376), .B(n375), .Y(add_160_carry[9]) );
  XOR2X1 U447 ( .A(n375), .B(n376), .Y(N425) );
  XNOR2X1 U448 ( .A(count[13]), .B(sub_124_carry_13_), .Y(N247) );
  OR2X1 U449 ( .A(n3840), .B(sub_124_carry_12_), .Y(sub_124_carry_13_) );
  XNOR2X1 U450 ( .A(sub_124_carry_12_), .B(n3840), .Y(N246) );
  OR2X1 U451 ( .A(n3830), .B(sub_124_carry_11_), .Y(sub_124_carry_12_) );
  XNOR2X1 U452 ( .A(sub_124_carry_11_), .B(n3830), .Y(N245) );
  OR2X1 U453 ( .A(n373), .B(sub_124_carry_10_), .Y(sub_124_carry_11_) );
  XNOR2X1 U454 ( .A(sub_124_carry_10_), .B(n373), .Y(N244) );
  OR2X1 U455 ( .A(n374), .B(sub_124_carry_9_), .Y(sub_124_carry_10_) );
  XNOR2X1 U456 ( .A(sub_124_carry_9_), .B(n374), .Y(N243) );
  OR2X1 U457 ( .A(n375), .B(sub_124_carry_8_), .Y(sub_124_carry_9_) );
  XNOR2X1 U458 ( .A(sub_124_carry_8_), .B(n375), .Y(N242) );
  AND2X1 U459 ( .A(sub_124_carry_7_), .B(n376), .Y(sub_124_carry_8_) );
  XOR2X1 U460 ( .A(n376), .B(sub_124_carry_7_), .Y(N241) );
  OR2X1 U461 ( .A(n3770), .B(sub_124_carry_6_), .Y(sub_124_carry_7_) );
  XNOR2X1 U462 ( .A(sub_124_carry_6_), .B(n3770), .Y(N240) );
  OR2X1 U463 ( .A(n3780), .B(sub_124_carry_5_), .Y(sub_124_carry_6_) );
  XNOR2X1 U464 ( .A(sub_124_carry_5_), .B(n3780), .Y(N239) );
  OR2X1 U465 ( .A(n3790), .B(sub_124_carry_4_), .Y(sub_124_carry_5_) );
  XNOR2X1 U466 ( .A(sub_124_carry_4_), .B(n3790), .Y(N238) );
  OR2X1 U467 ( .A(n3800), .B(sub_124_carry_3_), .Y(sub_124_carry_4_) );
  XNOR2X1 U468 ( .A(sub_124_carry_3_), .B(n3800), .Y(N237) );
  OR2X1 U469 ( .A(n3810), .B(sub_124_carry_2_), .Y(sub_124_carry_3_) );
  XNOR2X1 U470 ( .A(sub_124_carry_2_), .B(n3810), .Y(N236) );
  OR2X1 U471 ( .A(n3820), .B(n3850), .Y(sub_124_carry_2_) );
  XNOR2X1 U472 ( .A(n3850), .B(n3820), .Y(N235) );
  XNOR2X1 U473 ( .A(count[13]), .B(sub_120_carry[13]), .Y(N223) );
  OR2X1 U474 ( .A(n3840), .B(sub_120_carry[12]), .Y(sub_120_carry[13]) );
  XNOR2X1 U475 ( .A(sub_120_carry[12]), .B(n3840), .Y(N222) );
  OR2X1 U476 ( .A(n3830), .B(sub_120_carry[11]), .Y(sub_120_carry[12]) );
  XNOR2X1 U477 ( .A(sub_120_carry[11]), .B(n3830), .Y(N221) );
  OR2X1 U478 ( .A(n373), .B(sub_120_carry[10]), .Y(sub_120_carry[11]) );
  XNOR2X1 U479 ( .A(sub_120_carry[10]), .B(n373), .Y(N220) );
  OR2X1 U480 ( .A(n374), .B(sub_120_carry[9]), .Y(sub_120_carry[10]) );
  XNOR2X1 U481 ( .A(sub_120_carry[9]), .B(n374), .Y(N219) );
  OR2X1 U482 ( .A(n375), .B(n376), .Y(sub_120_carry[9]) );
  XNOR2X1 U483 ( .A(n376), .B(n375), .Y(N218) );
  XNOR2X1 U484 ( .A(count[13]), .B(sub_113_aco_carry[13]), .Y(N195) );
  OR2X1 U485 ( .A(n3840), .B(sub_113_aco_carry[12]), .Y(sub_113_aco_carry[13])
         );
  XNOR2X1 U486 ( .A(sub_113_aco_carry[12]), .B(n3840), .Y(N194) );
  OR2X1 U487 ( .A(n3830), .B(sub_113_aco_carry[11]), .Y(sub_113_aco_carry[12])
         );
  XNOR2X1 U488 ( .A(sub_113_aco_carry[11]), .B(n3830), .Y(N193) );
  OR2X1 U489 ( .A(n373), .B(sub_113_aco_carry[10]), .Y(sub_113_aco_carry[11])
         );
  XNOR2X1 U490 ( .A(sub_113_aco_carry[10]), .B(n373), .Y(N192) );
  OR2X1 U491 ( .A(n374), .B(sub_113_aco_carry[9]), .Y(sub_113_aco_carry[10])
         );
  XNOR2X1 U492 ( .A(sub_113_aco_carry[9]), .B(n374), .Y(N191) );
  OR2X1 U493 ( .A(n375), .B(sub_113_aco_carry[8]), .Y(sub_113_aco_carry[9]) );
  XNOR2X1 U494 ( .A(sub_113_aco_carry[8]), .B(n375), .Y(N190) );
  OR2X1 U495 ( .A(n376), .B(sub_113_aco_carry[7]), .Y(sub_113_aco_carry[8]) );
  XNOR2X1 U496 ( .A(sub_113_aco_carry[7]), .B(n376), .Y(N189) );
  OR2X1 U497 ( .A(n3770), .B(sub_113_aco_carry[6]), .Y(sub_113_aco_carry[7])
         );
  XNOR2X1 U498 ( .A(sub_113_aco_carry[6]), .B(n3770), .Y(N188) );
  OR2X1 U499 ( .A(n3780), .B(sub_113_aco_carry[5]), .Y(sub_113_aco_carry[6])
         );
  XNOR2X1 U500 ( .A(sub_113_aco_carry[5]), .B(n3780), .Y(N187) );
  OR2X1 U501 ( .A(n3790), .B(sub_113_aco_carry[4]), .Y(sub_113_aco_carry[5])
         );
  XNOR2X1 U502 ( .A(sub_113_aco_carry[4]), .B(n3790), .Y(N186) );
  OR2X1 U503 ( .A(n3800), .B(sub_113_aco_carry[3]), .Y(sub_113_aco_carry[4])
         );
  XNOR2X1 U504 ( .A(sub_113_aco_carry[3]), .B(n3800), .Y(N185) );
  OR2X1 U505 ( .A(n3810), .B(sub_113_aco_carry[2]), .Y(sub_113_aco_carry[3])
         );
  XNOR2X1 U506 ( .A(sub_113_aco_carry[2]), .B(n3810), .Y(N184) );
  OR2X1 U507 ( .A(n3820), .B(sub_113_aco_carry[1]), .Y(sub_113_aco_carry[2])
         );
  XNOR2X1 U508 ( .A(sub_113_aco_carry[1]), .B(n3820), .Y(N183) );
  OR2X1 U509 ( .A(n3890), .B(n3850), .Y(sub_113_aco_carry[1]) );
  XNOR2X1 U510 ( .A(n3850), .B(n3890), .Y(N182) );
  XNOR2X1 U511 ( .A(count[13]), .B(sub_116_carry_13_), .Y(N209) );
  OR2X1 U512 ( .A(n3840), .B(sub_116_carry_12_), .Y(sub_116_carry_13_) );
  XNOR2X1 U513 ( .A(sub_116_carry_12_), .B(n3840), .Y(N208) );
  OR2X1 U514 ( .A(n3830), .B(sub_116_carry_11_), .Y(sub_116_carry_12_) );
  XNOR2X1 U515 ( .A(sub_116_carry_11_), .B(n3830), .Y(N207) );
  OR2X1 U516 ( .A(n373), .B(sub_116_carry_10_), .Y(sub_116_carry_11_) );
  XNOR2X1 U517 ( .A(sub_116_carry_10_), .B(n373), .Y(N206) );
  OR2X1 U518 ( .A(n374), .B(sub_116_carry_9_), .Y(sub_116_carry_10_) );
  XNOR2X1 U519 ( .A(sub_116_carry_9_), .B(n374), .Y(N205) );
  OR2X1 U520 ( .A(n375), .B(sub_116_carry_8_), .Y(sub_116_carry_9_) );
  XNOR2X1 U521 ( .A(sub_116_carry_8_), .B(n375), .Y(N204) );
  OR2X1 U522 ( .A(n376), .B(sub_116_carry_7_), .Y(sub_116_carry_8_) );
  XNOR2X1 U523 ( .A(sub_116_carry_7_), .B(n376), .Y(N203) );
  AND2X1 U524 ( .A(sub_116_carry_6_), .B(n3770), .Y(sub_116_carry_7_) );
  XOR2X1 U525 ( .A(n3770), .B(sub_116_carry_6_), .Y(N202) );
  AND2X1 U526 ( .A(sub_116_carry_5_), .B(n3780), .Y(sub_116_carry_6_) );
  XOR2X1 U527 ( .A(n3780), .B(sub_116_carry_5_), .Y(N201) );
  AND2X1 U528 ( .A(sub_116_carry_4_), .B(n3790), .Y(sub_116_carry_5_) );
  XOR2X1 U529 ( .A(n3790), .B(sub_116_carry_4_), .Y(N200) );
  AND2X1 U530 ( .A(sub_116_carry_3_), .B(n3800), .Y(sub_116_carry_4_) );
  XOR2X1 U531 ( .A(n3800), .B(sub_116_carry_3_), .Y(N199) );
  AND2X1 U532 ( .A(sub_116_carry_2_), .B(n3810), .Y(sub_116_carry_3_) );
  XOR2X1 U533 ( .A(n3810), .B(sub_116_carry_2_), .Y(N198) );
  AND2X1 U534 ( .A(n3850), .B(n3820), .Y(sub_116_carry_2_) );
  XOR2X1 U535 ( .A(n3820), .B(n3850), .Y(N197) );
  XNOR2X1 U536 ( .A(count[13]), .B(sub_175_aco_carry[13]), .Y(N540) );
  OR2X1 U537 ( .A(n3840), .B(sub_175_aco_carry[12]), .Y(sub_175_aco_carry[13])
         );
  XNOR2X1 U538 ( .A(sub_175_aco_carry[12]), .B(n3840), .Y(N539) );
  OR2X1 U539 ( .A(n3830), .B(sub_175_aco_carry[11]), .Y(sub_175_aco_carry[12])
         );
  XNOR2X1 U540 ( .A(sub_175_aco_carry[11]), .B(n3830), .Y(N538) );
  OR2X1 U541 ( .A(n373), .B(sub_175_aco_carry[10]), .Y(sub_175_aco_carry[11])
         );
  XNOR2X1 U542 ( .A(sub_175_aco_carry[10]), .B(n373), .Y(N537) );
  OR2X1 U543 ( .A(n374), .B(sub_175_aco_carry[9]), .Y(sub_175_aco_carry[10])
         );
  XNOR2X1 U544 ( .A(sub_175_aco_carry[9]), .B(n374), .Y(N536) );
  OR2X1 U545 ( .A(n375), .B(sub_175_aco_carry[8]), .Y(sub_175_aco_carry[9]) );
  XNOR2X1 U546 ( .A(sub_175_aco_carry[8]), .B(n375), .Y(N535) );
  OR2X1 U547 ( .A(n376), .B(sub_175_aco_carry[7]), .Y(sub_175_aco_carry[8]) );
  XNOR2X1 U548 ( .A(sub_175_aco_carry[7]), .B(n376), .Y(N534) );
  OR2X1 U549 ( .A(n3770), .B(sub_175_aco_carry[6]), .Y(sub_175_aco_carry[7])
         );
  XNOR2X1 U550 ( .A(sub_175_aco_carry[6]), .B(n3770), .Y(N533) );
  OR2X1 U551 ( .A(n3780), .B(sub_175_aco_carry[5]), .Y(sub_175_aco_carry[6])
         );
  XNOR2X1 U552 ( .A(sub_175_aco_carry[5]), .B(n3780), .Y(N532) );
  OR2X1 U553 ( .A(n3790), .B(sub_175_aco_carry[4]), .Y(sub_175_aco_carry[5])
         );
  XNOR2X1 U554 ( .A(sub_175_aco_carry[4]), .B(n3790), .Y(N531) );
  OR2X1 U555 ( .A(n3800), .B(sub_175_aco_carry[3]), .Y(sub_175_aco_carry[4])
         );
  XNOR2X1 U556 ( .A(sub_175_aco_carry[3]), .B(n3800), .Y(N530) );
  OR2X1 U557 ( .A(n3810), .B(sub_175_aco_carry[2]), .Y(sub_175_aco_carry[3])
         );
  XNOR2X1 U558 ( .A(sub_175_aco_carry[2]), .B(n3810), .Y(N529) );
  OR2X1 U559 ( .A(n3820), .B(sub_175_aco_carry[1]), .Y(sub_175_aco_carry[2])
         );
  XNOR2X1 U560 ( .A(sub_175_aco_carry[1]), .B(n3820), .Y(N528) );
  OR2X1 U561 ( .A(n3890), .B(n3850), .Y(sub_175_aco_carry[1]) );
  XNOR2X1 U562 ( .A(n3850), .B(n3890), .Y(N527) );
  NOR2X1 U563 ( .A(n4050), .B(N46), .Y(n399) );
  NOR2X1 U564 ( .A(n4050), .B(n4060), .Y(n398) );
  NOR2X1 U565 ( .A(n4060), .B(N47), .Y(n396) );
  NOR2X1 U566 ( .A(N46), .B(N47), .Y(n395) );
  AO22X1 U567 ( .A0(sti_di[5]), .A1(n396), .B0(sti_di[4]), .B1(n395), .Y(n390)
         );
  AOI221XL U568 ( .A0(sti_di[6]), .A1(n399), .B0(sti_di[7]), .B1(n398), .C0(
        n390), .Y(n393) );
  AO22X1 U569 ( .A0(sti_di[1]), .A1(n396), .B0(sti_di[0]), .B1(n395), .Y(n391)
         );
  AOI221XL U570 ( .A0(sti_di[2]), .A1(n399), .B0(sti_di[3]), .B1(n398), .C0(
        n391), .Y(n392) );
  OA22X1 U571 ( .A0(n4040), .A1(n393), .B0(N48), .B1(n392), .Y(n4030) );
  AO22X1 U572 ( .A0(sti_di[13]), .A1(n396), .B0(sti_di[12]), .B1(n395), .Y(
        n394) );
  AOI221XL U573 ( .A0(sti_di[14]), .A1(n399), .B0(sti_di[15]), .B1(n398), .C0(
        n394), .Y(n4010) );
  AO22X1 U574 ( .A0(sti_di[9]), .A1(n396), .B0(sti_di[8]), .B1(n395), .Y(n397)
         );
  AOI221XL U575 ( .A0(sti_di[10]), .A1(n399), .B0(sti_di[11]), .B1(n398), .C0(
        n397), .Y(n4000) );
  OAI22XL U576 ( .A0(n4010), .A1(n4040), .B0(N48), .B1(n4000), .Y(n4020) );
  OAI2BB2XL U577 ( .B0(n4030), .B1(N49), .A0N(N49), .A1N(n4020), .Y(N115) );
  NAND4BX1 U578 ( .AN(n4070), .B(n408), .C(n409), .D(n410), .Y(next_state[3])
         );
  NAND2X1 U579 ( .A(n411), .B(n412), .Y(n408) );
  OAI211X1 U580 ( .A0(n413), .A1(n414), .B0(n415), .C0(n416), .Y(next_state[2]) );
  NOR4X1 U581 ( .A(n417), .B(n366), .C(n365), .D(n363), .Y(n416) );
  AOI22X1 U582 ( .A0(N115), .A1(n370), .B0(n369), .B1(n423), .Y(n415) );
  NAND4BX1 U583 ( .AN(n370), .B(n424), .C(n4250), .D(n4260), .Y(next_state[1])
         );
  AOI221XL U584 ( .A0(n363), .A1(n3890), .B0(n622), .B1(n4270), .C0(n4070), 
        .Y(n4260) );
  OAI21XL U585 ( .A0(n423), .A1(n4280), .B0(n4290), .Y(n4070) );
  OR4X1 U586 ( .A(n370), .B(n362), .C(n431), .D(n432), .Y(next_state[0]) );
  OAI222XL U587 ( .A0(n3890), .A1(n433), .B0(n423), .B1(n4280), .C0(n622), 
        .C1(n434), .Y(n432) );
  AND2X1 U588 ( .A(n435), .B(n436), .Y(n423) );
  NOR4X1 U589 ( .A(res_di[7]), .B(res_di[6]), .C(res_di[5]), .D(res_di[4]), 
        .Y(n436) );
  NOR4X1 U590 ( .A(res_di[3]), .B(res_di[2]), .C(res_di[1]), .D(res_di[0]), 
        .Y(n435) );
  OAI31XL U591 ( .A0(n437), .A1(state[2]), .A2(state[0]), .B0(n409), .Y(n431)
         );
  OAI2BB1X1 U592 ( .A0N(N527), .A1N(n363), .B0(n438), .Y(n350) );
  CLKMX2X2 U593 ( .A(n358), .B(n440), .S0(n2870), .Y(n438) );
  OAI2BB1X1 U594 ( .A0N(n362), .A1N(N300), .B0(n441), .Y(n349) );
  AOI2BB2X1 U595 ( .B0(N540), .B1(n363), .A0N(n2740), .A1N(n358), .Y(n441) );
  MXI2X1 U596 ( .A(n442), .B(n443), .S0(n440), .Y(n348) );
  OAI21XL U597 ( .A0(n444), .A1(n259), .B0(n445), .Y(n347) );
  OAI21XL U598 ( .A0(n444), .A1(n260), .B0(n361), .Y(n346) );
  OAI221XL U599 ( .A0(n447), .A1(n448), .B0(n449), .B1(n450), .C0(n451), .Y(
        n345) );
  CLKINVX1 U600 ( .A(res_di[1]), .Y(n450) );
  CLKINVX1 U601 ( .A(N262), .Y(n447) );
  AOI222XL U602 ( .A0(N400), .A1(n452), .B0(N269), .B1(n453), .C0(n454), .C1(
        n4590), .Y(n458) );
  CLKINVX1 U603 ( .A(res_di[0]), .Y(n457) );
  CLKINVX1 U604 ( .A(N261), .Y(n456) );
  AOI222XL U605 ( .A0(N402), .A1(n452), .B0(N271), .B1(n453), .C0(n454), .C1(
        n4630), .Y(n4620) );
  OAI221XL U606 ( .A0(n4640), .A1(n448), .B0(n449), .B1(n4650), .C0(n4660), 
        .Y(n342) );
  AOI222XL U607 ( .A0(N404), .A1(n452), .B0(N273), .B1(n453), .C0(n454), .C1(
        n4700), .Y(n4690) );
  OAI221XL U608 ( .A0(n4710), .A1(n448), .B0(n449), .B1(n472), .C0(n473), .Y(
        n340) );
  OAI221XL U609 ( .A0(n356), .A1(n448), .B0(n449), .B1(n474), .C0(n475), .Y(
        n339) );
  AOI222XL U610 ( .A0(N407), .A1(n452), .B0(N276), .B1(n453), .C0(n454), .C1(
        compare[7]), .Y(n478) );
  AO21X1 U611 ( .A0(n481), .A1(n424), .B0(n482), .Y(n480) );
  NOR4X1 U612 ( .A(n365), .B(n366), .C(n417), .D(n364), .Y(n483) );
  NOR3X1 U613 ( .A(n489), .B(n490), .C(n412), .Y(n417) );
  AOI2BB2X1 U614 ( .B0(N267), .B1(n2660), .A0N(n4670), .A1N(n4700), .Y(n494)
         );
  CLKINVX1 U615 ( .A(N265), .Y(n4670) );
  OAI211X1 U616 ( .A0(n2690), .A1(n498), .B0(n499), .C0(n500), .Y(n492) );
  AO21X1 U617 ( .A0(n498), .A1(n2690), .B0(N264), .Y(n500) );
  OAI222XL U618 ( .A0(compare[3]), .A1(n4640), .B0(n4630), .B1(n4600), .C0(
        n501), .C1(n502), .Y(n499) );
  NOR2X1 U619 ( .A(n2710), .B(N262), .Y(n502) );
  AOI211X1 U620 ( .A0(N262), .A1(n2710), .B0(n2720), .C0(N261), .Y(n501) );
  CLKINVX1 U621 ( .A(N264), .Y(n4640) );
  NAND2X1 U622 ( .A(n4630), .B(n4600), .Y(n498) );
  CLKINVX1 U623 ( .A(N263), .Y(n4600) );
  NOR2X1 U624 ( .A(n2650), .B(N268), .Y(n487) );
  CLKINVX1 U625 ( .A(n369), .Y(n4280) );
  OAI21XL U626 ( .A0(n367), .A1(n368), .B0(n482), .Y(n503) );
  NOR2X1 U627 ( .A(compare[7]), .B(n477), .Y(n507) );
  CLKINVX1 U628 ( .A(res_di[7]), .Y(n477) );
  AOI32X1 U629 ( .A0(n508), .A1(n509), .A2(n510), .B0(n511), .B1(n512), .Y(
        n506) );
  OAI21XL U630 ( .A0(n513), .A1(n2660), .B0(res_di[6]), .Y(n512) );
  NAND2X1 U631 ( .A(n513), .B(n2660), .Y(n511) );
  AOI32X1 U632 ( .A0(n509), .A1(n4680), .A2(n4700), .B0(n472), .B1(compare[5]), 
        .Y(n513) );
  CLKINVX1 U633 ( .A(res_di[5]), .Y(n472) );
  CLKINVX1 U634 ( .A(res_di[4]), .Y(n4680) );
  AOI2BB2X1 U635 ( .B0(res_di[4]), .B1(n2680), .A0N(n474), .A1N(compare[6]), 
        .Y(n510) );
  CLKINVX1 U636 ( .A(res_di[6]), .Y(n474) );
  NAND2X1 U637 ( .A(res_di[5]), .B(n2670), .Y(n509) );
  OAI211X1 U638 ( .A0(n2690), .A1(n514), .B0(n515), .C0(n516), .Y(n508) );
  AO21X1 U639 ( .A0(n514), .A1(n2690), .B0(res_di[3]), .Y(n516) );
  OAI222XL U640 ( .A0(n4630), .A1(n4610), .B0(compare[3]), .B1(n4650), .C0(
        n517), .C1(n518), .Y(n515) );
  NOR2X1 U641 ( .A(res_di[1]), .B(n2710), .Y(n518) );
  AOI211X1 U642 ( .A0(res_di[1]), .A1(n2710), .B0(res_di[0]), .C0(n2720), .Y(
        n517) );
  NAND2X1 U643 ( .A(n4610), .B(n4630), .Y(n514) );
  CLKINVX1 U644 ( .A(res_di[2]), .Y(n4610) );
  CLKINVX1 U645 ( .A(n4250), .Y(n484) );
  NAND2X1 U646 ( .A(n411), .B(n519), .Y(n4250) );
  CLKINVX1 U647 ( .A(N268), .Y(n476) );
  OAI22XL U648 ( .A0(n2720), .A1(n361), .B0(n520), .B1(n2610), .Y(n337) );
  OAI22XL U649 ( .A0(n2650), .A1(n361), .B0(n520), .B1(n2620), .Y(n336) );
  OAI22XL U650 ( .A0(n2660), .A1(n361), .B0(n520), .B1(n251), .Y(n335) );
  OAI22XL U651 ( .A0(n2670), .A1(n361), .B0(n520), .B1(n252), .Y(n334) );
  OAI22XL U652 ( .A0(n2680), .A1(n361), .B0(n520), .B1(n253), .Y(n333) );
  OAI22XL U653 ( .A0(n2690), .A1(n361), .B0(n520), .B1(n254), .Y(n332) );
  OAI22XL U654 ( .A0(n2700), .A1(n361), .B0(n520), .B1(n255), .Y(n331) );
  OAI22XL U655 ( .A0(n2710), .A1(n361), .B0(n520), .B1(n256), .Y(n330) );
  OAI2BB1X1 U656 ( .A0N(n362), .A1N(N299), .B0(n521), .Y(n329) );
  AOI2BB2X1 U657 ( .B0(N539), .B1(n363), .A0N(n2750), .A1N(n358), .Y(n521) );
  OAI2BB1X1 U658 ( .A0N(n362), .A1N(N298), .B0(n522), .Y(n328) );
  AOI2BB2X1 U659 ( .B0(N538), .B1(n363), .A0N(n2760), .A1N(n358), .Y(n522) );
  OAI2BB1X1 U660 ( .A0N(n362), .A1N(N297), .B0(n523), .Y(n3270) );
  AOI2BB2X1 U661 ( .B0(N537), .B1(n363), .A0N(n277), .A1N(n358), .Y(n523) );
  OAI2BB1X1 U662 ( .A0N(n362), .A1N(N296), .B0(n524), .Y(n3260) );
  AOI2BB2X1 U663 ( .B0(N536), .B1(n363), .A0N(n278), .A1N(n358), .Y(n524) );
  OAI2BB1X1 U664 ( .A0N(n362), .A1N(N295), .B0(n525), .Y(n3250) );
  AOI2BB2X1 U665 ( .B0(N535), .B1(n363), .A0N(n279), .A1N(n358), .Y(n525) );
  OAI2BB1X1 U666 ( .A0N(n362), .A1N(N294), .B0(n526), .Y(n3240) );
  AOI2BB2X1 U667 ( .B0(N534), .B1(n363), .A0N(n280), .A1N(n358), .Y(n526) );
  OAI2BB1X1 U668 ( .A0N(n362), .A1N(N293), .B0(n5270), .Y(n3230) );
  AOI2BB2X1 U669 ( .B0(N533), .B1(n363), .A0N(n281), .A1N(n358), .Y(n5270) );
  OAI2BB1X1 U670 ( .A0N(n362), .A1N(N292), .B0(n5280), .Y(n3220) );
  AOI2BB2X1 U671 ( .B0(N532), .B1(n363), .A0N(n282), .A1N(n358), .Y(n5280) );
  OAI2BB1X1 U672 ( .A0N(n362), .A1N(N291), .B0(n5290), .Y(n3210) );
  AOI2BB2X1 U673 ( .B0(N531), .B1(n363), .A0N(n283), .A1N(n358), .Y(n5290) );
  OAI2BB1X1 U674 ( .A0N(n362), .A1N(N290), .B0(n5300), .Y(n3200) );
  AOI2BB2X1 U675 ( .B0(N530), .B1(n363), .A0N(n284), .A1N(n358), .Y(n5300) );
  OAI2BB1X1 U676 ( .A0N(n362), .A1N(N289), .B0(n5310), .Y(n3190) );
  AOI2BB2X1 U677 ( .B0(N529), .B1(n363), .A0N(n285), .A1N(n358), .Y(n5310) );
  OAI2BB1X1 U678 ( .A0N(n362), .A1N(N288), .B0(n5320), .Y(n3180) );
  AOI2BB2X1 U679 ( .B0(N528), .B1(n363), .A0N(n286), .A1N(n358), .Y(n5320) );
  NAND4X1 U680 ( .A(n5330), .B(n5340), .C(n5350), .D(n5360), .Y(n442) );
  NOR4X1 U681 ( .A(n2870), .B(n286), .C(n285), .D(n284), .Y(n5360) );
  NOR3X1 U682 ( .A(n281), .B(n283), .C(n282), .Y(n5350) );
  NOR4X1 U683 ( .A(n280), .B(n279), .C(n278), .D(n277), .Y(n5340) );
  NOR3X1 U684 ( .A(n2740), .B(n2760), .C(n2750), .Y(n5330) );
  NAND4X1 U685 ( .A(n5370), .B(n5380), .C(n5390), .D(n5400), .Y(n317) );
  AOI222XL U686 ( .A0(n2870), .A1(n364), .B0(res_addr[0]), .B1(n360), .C0(n359), .C1(N210), .Y(n5400) );
  AOI22X1 U687 ( .A0(n3850), .A1(n366), .B0(n2870), .B1(n365), .Y(n5390) );
  AOI222XL U688 ( .A0(N287), .A1(n369), .B0(n3850), .B1(n368), .C0(n2870), 
        .C1(n367), .Y(n5380) );
  AOI22X1 U689 ( .A0(n2870), .A1(n371), .B0(N182), .B1(n370), .Y(n5370) );
  NAND4X1 U690 ( .A(n544), .B(n545), .C(n546), .D(n547), .Y(n316) );
  AOI222XL U691 ( .A0(N377), .A1(n364), .B0(res_addr[1]), .B1(n360), .C0(n359), 
        .C1(N211), .Y(n547) );
  AOI22X1 U692 ( .A0(n3820), .A1(n366), .B0(N459), .B1(n365), .Y(n546) );
  AOI222XL U693 ( .A0(N288), .A1(n369), .B0(n3820), .B1(n368), .C0(N235), .C1(
        n367), .Y(n545) );
  AOI22X1 U694 ( .A0(N197), .A1(n371), .B0(N183), .B1(n370), .Y(n544) );
  NAND4X1 U695 ( .A(n548), .B(n549), .C(n550), .D(n551), .Y(n315) );
  AOI222XL U696 ( .A0(N378), .A1(n364), .B0(res_addr[2]), .B1(n360), .C0(n359), 
        .C1(N212), .Y(n551) );
  AOI22X1 U697 ( .A0(n3810), .A1(n366), .B0(N460), .B1(n365), .Y(n550) );
  AOI222XL U698 ( .A0(N289), .A1(n369), .B0(n3810), .B1(n368), .C0(N236), .C1(
        n367), .Y(n549) );
  AOI22X1 U699 ( .A0(N198), .A1(n371), .B0(N184), .B1(n370), .Y(n548) );
  NAND4X1 U700 ( .A(n552), .B(n553), .C(n554), .D(n555), .Y(n314) );
  AOI222XL U701 ( .A0(N379), .A1(n364), .B0(res_addr[3]), .B1(n360), .C0(n359), 
        .C1(N213), .Y(n555) );
  AOI22X1 U702 ( .A0(n3800), .A1(n366), .B0(N461), .B1(n365), .Y(n554) );
  AOI222XL U703 ( .A0(N290), .A1(n369), .B0(n3800), .B1(n368), .C0(N237), .C1(
        n367), .Y(n553) );
  AOI22X1 U704 ( .A0(N199), .A1(n371), .B0(N185), .B1(n370), .Y(n552) );
  NAND4X1 U705 ( .A(n556), .B(n557), .C(n558), .D(n559), .Y(n313) );
  AOI222XL U706 ( .A0(N380), .A1(n364), .B0(res_addr[4]), .B1(n360), .C0(n359), 
        .C1(N214), .Y(n559) );
  AOI22X1 U707 ( .A0(n3790), .A1(n366), .B0(N462), .B1(n365), .Y(n558) );
  AOI222XL U708 ( .A0(N291), .A1(n369), .B0(n3790), .B1(n368), .C0(N238), .C1(
        n367), .Y(n557) );
  AOI22X1 U709 ( .A0(N200), .A1(n371), .B0(N186), .B1(n370), .Y(n556) );
  NAND4X1 U710 ( .A(n560), .B(n561), .C(n562), .D(n563), .Y(n312) );
  AOI222XL U711 ( .A0(N381), .A1(n364), .B0(res_addr[5]), .B1(n360), .C0(n359), 
        .C1(N215), .Y(n563) );
  AOI22X1 U712 ( .A0(n3780), .A1(n366), .B0(N463), .B1(n365), .Y(n562) );
  AOI222XL U713 ( .A0(N292), .A1(n369), .B0(n3780), .B1(n368), .C0(N239), .C1(
        n367), .Y(n561) );
  AOI22X1 U714 ( .A0(N201), .A1(n371), .B0(N187), .B1(n370), .Y(n560) );
  NAND4X1 U715 ( .A(n564), .B(n565), .C(n566), .D(n567), .Y(n311) );
  AOI222XL U716 ( .A0(N382), .A1(n364), .B0(res_addr[6]), .B1(n360), .C0(n359), 
        .C1(N216), .Y(n567) );
  AOI22X1 U717 ( .A0(n3770), .A1(n366), .B0(N464), .B1(n365), .Y(n566) );
  AOI222XL U718 ( .A0(N293), .A1(n369), .B0(n3770), .B1(n368), .C0(N240), .C1(
        n367), .Y(n565) );
  AOI22X1 U719 ( .A0(N202), .A1(n371), .B0(N188), .B1(n370), .Y(n564) );
  NAND4X1 U720 ( .A(n568), .B(n569), .C(n570), .D(n571), .Y(n310) );
  AOI222XL U721 ( .A0(N383), .A1(n364), .B0(res_addr[7]), .B1(n360), .C0(n359), 
        .C1(count[7]), .Y(n571) );
  AOI22X1 U722 ( .A0(n280), .A1(n366), .B0(N465), .B1(n365), .Y(n570) );
  AOI222XL U723 ( .A0(N294), .A1(n369), .B0(n280), .B1(n368), .C0(N241), .C1(
        n367), .Y(n569) );
  AOI22X1 U724 ( .A0(N203), .A1(n371), .B0(N189), .B1(n370), .Y(n568) );
  NAND4X1 U725 ( .A(n572), .B(n573), .C(n574), .D(n575), .Y(n309) );
  AOI222XL U726 ( .A0(N384), .A1(n364), .B0(res_addr[8]), .B1(n360), .C0(n359), 
        .C1(count[8]), .Y(n575) );
  AOI22X1 U727 ( .A0(N425), .A1(n366), .B0(N466), .B1(n365), .Y(n574) );
  AOI222XL U728 ( .A0(N295), .A1(n369), .B0(N218), .B1(n368), .C0(N242), .C1(
        n367), .Y(n573) );
  AOI22X1 U729 ( .A0(N204), .A1(n371), .B0(N190), .B1(n370), .Y(n572) );
  NAND4X1 U730 ( .A(n576), .B(n577), .C(n578), .D(n579), .Y(n308) );
  AOI222XL U731 ( .A0(N385), .A1(n364), .B0(res_addr[9]), .B1(n360), .C0(n359), 
        .C1(count[9]), .Y(n579) );
  AOI22X1 U732 ( .A0(N426), .A1(n366), .B0(N467), .B1(n365), .Y(n578) );
  AOI222XL U733 ( .A0(N296), .A1(n369), .B0(N219), .B1(n368), .C0(N243), .C1(
        n367), .Y(n577) );
  AOI22X1 U734 ( .A0(N205), .A1(n371), .B0(N191), .B1(n370), .Y(n576) );
  NAND4X1 U735 ( .A(n580), .B(n581), .C(n582), .D(n583), .Y(n307) );
  AOI222XL U736 ( .A0(N386), .A1(n364), .B0(res_addr[10]), .B1(n360), .C0(n359), .C1(count[10]), .Y(n583) );
  AOI22X1 U737 ( .A0(N427), .A1(n366), .B0(N468), .B1(n365), .Y(n582) );
  AOI222XL U738 ( .A0(N297), .A1(n369), .B0(N220), .B1(n368), .C0(N244), .C1(
        n367), .Y(n581) );
  AOI22X1 U739 ( .A0(N206), .A1(n371), .B0(N192), .B1(n370), .Y(n580) );
  NAND4X1 U740 ( .A(n584), .B(n585), .C(n586), .D(n587), .Y(n306) );
  AOI222XL U741 ( .A0(N387), .A1(n364), .B0(res_addr[11]), .B1(n360), .C0(n359), .C1(count[11]), .Y(n587) );
  AOI22X1 U742 ( .A0(N428), .A1(n366), .B0(N469), .B1(n365), .Y(n586) );
  AOI222XL U743 ( .A0(N298), .A1(n369), .B0(N221), .B1(n368), .C0(N245), .C1(
        n367), .Y(n585) );
  AOI22X1 U744 ( .A0(N207), .A1(n371), .B0(N193), .B1(n370), .Y(n584) );
  NAND4X1 U745 ( .A(n588), .B(n589), .C(n590), .D(n591), .Y(n305) );
  AOI222XL U746 ( .A0(N388), .A1(n364), .B0(res_addr[12]), .B1(n360), .C0(n359), .C1(count[12]), .Y(n591) );
  AOI22X1 U747 ( .A0(N429), .A1(n366), .B0(N470), .B1(n365), .Y(n590) );
  AOI222XL U748 ( .A0(N299), .A1(n369), .B0(N222), .B1(n368), .C0(N246), .C1(
        n367), .Y(n589) );
  AOI22X1 U749 ( .A0(N208), .A1(n371), .B0(N194), .B1(n370), .Y(n588) );
  NAND4X1 U750 ( .A(n592), .B(n593), .C(n594), .D(n595), .Y(n304) );
  AOI222XL U751 ( .A0(N389), .A1(n364), .B0(res_addr[13]), .B1(n360), .C0(n359), .C1(count[13]), .Y(n595) );
  NOR2X1 U752 ( .A(n444), .B(n485), .Y(n596) );
  NAND3X1 U753 ( .A(n481), .B(n424), .C(n410), .Y(n485) );
  CLKINVX1 U754 ( .A(n367), .Y(n424) );
  NAND2BX1 U755 ( .AN(n520), .B(n445), .Y(n444) );
  NOR3X1 U756 ( .A(n369), .B(n370), .C(n4270), .Y(n445) );
  NAND2X1 U757 ( .A(n599), .B(n437), .Y(n440) );
  AOI22X1 U758 ( .A0(N430), .A1(n366), .B0(N471), .B1(n365), .Y(n594) );
  NAND3X1 U759 ( .A(n601), .B(n600), .C(state[3]), .Y(n409) );
  AOI222XL U760 ( .A0(N300), .A1(n369), .B0(N223), .B1(n368), .C0(N247), .C1(
        n367), .Y(n593) );
  NAND3X1 U761 ( .A(n600), .B(n413), .C(n411), .Y(n481) );
  CLKINVX1 U762 ( .A(n519), .Y(n412) );
  AOI22X1 U763 ( .A0(N209), .A1(n371), .B0(N195), .B1(n370), .Y(n592) );
  CLKINVX1 U764 ( .A(n599), .Y(n414) );
  NOR2X1 U765 ( .A(n600), .B(state[2]), .Y(n599) );
  NAND3X1 U766 ( .A(state[0]), .B(n437), .C(state[2]), .Y(n410) );
  NOR2X1 U767 ( .A(n413), .B(state[3]), .Y(n437) );
  NAND2X1 U768 ( .A(n602), .B(n603), .Y(n303) );
  MXI2X1 U769 ( .A(n434), .B(n604), .S0(n4060), .Y(n602) );
  NOR2X1 U770 ( .A(n605), .B(n434), .Y(n604) );
  OAI211X1 U771 ( .A0(n4050), .A1(n606), .B0(n607), .C0(n372), .Y(n302) );
  NAND2X1 U772 ( .A(n609), .B(n372), .Y(n301) );
  XNOR2X1 U773 ( .A(n4040), .B(n607), .Y(n609) );
  NAND2X1 U774 ( .A(n372), .B(n610), .Y(n3000) );
  OAI21XL U775 ( .A0(N48), .A1(n607), .B0(N49), .Y(n610) );
  NAND2X1 U776 ( .A(n606), .B(n4050), .Y(n607) );
  CLKINVX1 U777 ( .A(n603), .Y(n606) );
  NAND3X1 U778 ( .A(n4270), .B(n611), .C(n4060), .Y(n603) );
  NAND3X1 U779 ( .A(n4050), .B(n4040), .C(n2880), .Y(n611) );
  CLKINVX1 U780 ( .A(n434), .Y(n4270) );
  CLKMX2X2 U781 ( .A(N318), .B(sti_addr[0]), .S0(n372), .Y(n2990) );
  CLKMX2X2 U782 ( .A(N319), .B(sti_addr[1]), .S0(n372), .Y(n2980) );
  CLKMX2X2 U783 ( .A(N320), .B(sti_addr[2]), .S0(n372), .Y(n2970) );
  CLKMX2X2 U784 ( .A(N321), .B(sti_addr[3]), .S0(n372), .Y(n2960) );
  CLKMX2X2 U785 ( .A(N322), .B(sti_addr[4]), .S0(n372), .Y(n2950) );
  CLKMX2X2 U786 ( .A(N323), .B(sti_addr[5]), .S0(n372), .Y(n2940) );
  CLKMX2X2 U787 ( .A(N324), .B(sti_addr[6]), .S0(n372), .Y(n2930) );
  CLKMX2X2 U788 ( .A(N325), .B(sti_addr[7]), .S0(n372), .Y(n2920) );
  CLKMX2X2 U789 ( .A(N326), .B(sti_addr[8]), .S0(n372), .Y(n2910) );
  CLKMX2X2 U790 ( .A(N327), .B(sti_addr[9]), .S0(n372), .Y(n2900) );
  NOR3X1 U791 ( .A(N48), .B(n605), .C(n434), .Y(n612) );
  NAND3X1 U792 ( .A(state[0]), .B(n489), .C(n601), .Y(n434) );
  NOR2X1 U793 ( .A(n490), .B(state[1]), .Y(n601) );
  AND4X1 U794 ( .A(n613), .B(n614), .C(n615), .D(n616), .Y(n605) );
  OAI31XL U795 ( .A0(n617), .A1(state[3]), .A2(state[2]), .B0(n2630), .Y(n2640) );
  NAND2X1 U796 ( .A(n600), .B(n413), .Y(n617) );
  NOR2X1 U797 ( .A(n413), .B(state[0]), .Y(n519) );
  NAND4X1 U798 ( .A(n618), .B(n619), .C(n620), .D(n621), .Y(N698) );
  NOR4X1 U799 ( .A(count[13]), .B(count[12]), .C(count[11]), .D(count[10]), 
        .Y(n621) );
  NOR3X1 U800 ( .A(count[7]), .B(count[9]), .C(count[8]), .Y(n620) );
  NOR4X1 U801 ( .A(N216), .B(N215), .C(N214), .D(N213), .Y(n619) );
  NOR3X1 U802 ( .A(N210), .B(N212), .C(N211), .Y(n618) );
endmodule

