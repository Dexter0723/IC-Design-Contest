/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Tue May  5 18:43:27 2026
/////////////////////////////////////////////////////////////


module LBP_DW01_dec_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  CLKINVX1 U1 ( .A(n16), .Y(n1) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U3 ( .A(A[10]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[11]), .Y(n4) );
  AO21X1 U5 ( .A0(n5), .A1(A[9]), .B0(n6), .Y(SUM[9]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[8]), .B0(n5), .Y(SUM[8]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[7]), .B0(n7), .Y(SUM[7]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[6]), .B0(n8), .Y(SUM[6]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[5]), .B0(n9), .Y(SUM[5]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[4]), .B0(n10), .Y(SUM[4]) );
  OAI2BB1X1 U11 ( .A0N(n12), .A1N(A[3]), .B0(n11), .Y(SUM[3]) );
  OAI2BB1X1 U12 ( .A0N(n13), .A1N(A[2]), .B0(n12), .Y(SUM[2]) );
  OAI2BB1X1 U13 ( .A0N(A[0]), .A1N(A[1]), .B0(n13), .Y(SUM[1]) );
  XOR2X1 U14 ( .A(A[13]), .B(n14), .Y(SUM[13]) );
  NOR2X1 U15 ( .A(A[12]), .B(n15), .Y(n14) );
  XNOR2X1 U16 ( .A(A[12]), .B(n15), .Y(SUM[12]) );
  OAI21XL U17 ( .A0(n1), .A1(n4), .B0(n15), .Y(SUM[11]) );
  NAND2X1 U18 ( .A(n1), .B(n4), .Y(n15) );
  OAI21XL U19 ( .A0(n6), .A1(n3), .B0(n16), .Y(SUM[10]) );
  NAND2X1 U20 ( .A(n6), .B(n3), .Y(n16) );
  NOR2X1 U21 ( .A(n5), .B(A[9]), .Y(n6) );
  OR2X1 U22 ( .A(n7), .B(A[8]), .Y(n5) );
  OR2X1 U23 ( .A(n8), .B(A[7]), .Y(n7) );
  OR2X1 U24 ( .A(n9), .B(A[6]), .Y(n8) );
  OR2X1 U25 ( .A(n10), .B(A[5]), .Y(n9) );
  OR2X1 U26 ( .A(n11), .B(A[4]), .Y(n10) );
  OR2X1 U27 ( .A(n12), .B(A[3]), .Y(n11) );
  OR2X1 U28 ( .A(n13), .B(A[2]), .Y(n12) );
  NAND2BX1 U29 ( .AN(A[1]), .B(SUM[0]), .Y(n13) );
endmodule


module LBP_DW01_inc_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, N134, N135, N136, N137, N138, N139, N140,
         N141, N142, N143, N144, N145, N146, N148, N149, N150, N151, N152,
         N153, N155, N156, N157, N158, N159, N160, N163, N164, N165, N166,
         N167, N168, N169, N170, N171, N172, N173, N174, N175, N177, N178,
         N179, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189,
         N190, N192, N193, N194, N195, N196, N197, N198, N199, N200, N201,
         N202, N203, N204, N205, N208, N209, N210, N211, N212, N213, N214,
         N215, N216, N217, N218, N219, N220, N230, N231, N232, N233, N234,
         N235, N238, N239, N240, N241, N242, N243, N244, N245, N246, N247,
         N248, N249, N250, n1640, n1650, n1660, n1670, n1680, n1690, n1700,
         n1710, n1720, n1730, n1740, n1750, n176, n1770, n1780, n1790, n1800,
         n1810, n1820, n1830, n1840, n1850, n1860, n1870, n1880, n1890, n1900,
         n191, n1920, n1930, n1940, n1950, n1960, n1970, n1980, n1990, n2000,
         n2010, n2020, n2030, n2040, n2050, n461, add_124_carry_2_,
         add_124_carry_3_, add_124_carry_4_, add_124_carry_5_,
         add_124_carry_6_, add_124_carry_7_, add_124_carry_8_,
         add_124_carry_9_, add_124_carry_10_, add_124_carry_11_,
         add_124_carry_12_, add_124_carry_13_, add_116_carry_2_,
         add_116_carry_3_, add_116_carry_4_, add_116_carry_5_,
         add_116_carry_6_, add_116_carry_7_, add_116_carry_8_,
         add_116_carry_9_, add_116_carry_10_, add_116_carry_11_,
         add_116_carry_12_, add_116_carry_13_, sub_104_carry_2_,
         sub_104_carry_3_, sub_104_carry_4_, sub_104_carry_5_,
         sub_104_carry_6_, sub_104_carry_7_, sub_104_carry_8_,
         sub_104_carry_9_, sub_104_carry_10_, sub_104_carry_11_,
         sub_104_carry_12_, sub_104_carry_13_, sub_97_carry_2_,
         sub_97_carry_3_, sub_97_carry_4_, sub_97_carry_5_, sub_97_carry_6_,
         sub_97_carry_7_, sub_97_carry_8_, sub_97_carry_9_, sub_97_carry_10_,
         sub_97_carry_11_, sub_97_carry_12_, sub_97_carry_13_, n207, n2080,
         n2090, n2110, n2120, n222, n223, n224, n225, n226, n227, n228, n229,
         n2300, n2320, n2340, n236, n2380, n2400, n2420, n2430, n2450, n2470,
         n2490, n251, n253, n255, n257, n259, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445;
  wire   [3:0] state;
  wire   [3:1] next_state;
  wire   [7:1] pixel_center;
  wire   [13:9] add_120_carry;
  wire   [13:9] sub_100_carry;

  LBP_DW01_dec_0 sub_108 ( .A({n408, n2340, n236, n2380, n2400, n2420, n2450, 
        n2470, n2490, n251, n253, n255, n257, n207}), .SUM({N190, N189, N188, 
        N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177}) );
  LBP_DW01_inc_0 r422 ( .A({n448, n2340, n236, n2380, n2400, n2420, n2450, 
        n2470, n2490, n251, n253, n255, n257, n207}), .SUM({N205, N204, N203, 
        N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192}) );
  DFFRX1 count_reg_0_ ( .D(n1640), .CK(clk), .RN(n261), .Q(n398), .QN(n428) );
  DFFRX1 count_reg_13_ ( .D(n1770), .CK(clk), .RN(n441), .Q(n329) );
  DFFRX1 count_reg_12_ ( .D(n176), .CK(clk), .RN(n441), .Q(n338) );
  DFFRX1 count_reg_11_ ( .D(n1750), .CK(clk), .RN(n261), .Q(n343) );
  DFFRX1 count_reg_10_ ( .D(n1740), .CK(clk), .RN(n261), .Q(n348) );
  DFFRX1 count_reg_9_ ( .D(n1730), .CK(clk), .RN(n261), .Q(n353) );
  DFFRX1 count_reg_8_ ( .D(n1720), .CK(clk), .RN(n261), .Q(n358) );
  DFFRX1 count_reg_7_ ( .D(n1710), .CK(clk), .RN(n261), .Q(n363) );
  DFFRX1 count_reg_6_ ( .D(n1700), .CK(clk), .RN(n261), .Q(n368) );
  DFFRX1 count_reg_5_ ( .D(n1690), .CK(clk), .RN(n261), .Q(n373) );
  DFFRX1 count_reg_4_ ( .D(n1680), .CK(clk), .RN(n261), .Q(n378) );
  DFFRX1 count_reg_3_ ( .D(n1670), .CK(clk), .RN(n261), .Q(n383) );
  DFFRX1 count_reg_2_ ( .D(n1660), .CK(clk), .RN(n261), .Q(n388) );
  DFFRX1 count_reg_1_ ( .D(n1650), .CK(clk), .RN(n261), .Q(n393) );
  DFFRX1 pixel_center_reg_7_ ( .D(n1930), .CK(clk), .RN(n262), .Q(
        pixel_center[7]), .QN(n419) );
  DFFRX1 pixel_center_reg_6_ ( .D(n1920), .CK(clk), .RN(n262), .QN(n278) );
  DFFRX1 pixel_count_reg_12_ ( .D(n2040), .CK(clk), .RN(n262), .Q(n449), .QN(
        n431) );
  DFFRX1 pixel_count_reg_11_ ( .D(n2030), .CK(clk), .RN(n262), .Q(n450), .QN(
        n430) );
  DFFRX1 pixel_count_reg_13_ ( .D(n2050), .CK(clk), .RN(n261), .Q(n448), .QN(
        n432) );
  DFFRX1 pixel_count_reg_10_ ( .D(n2020), .CK(clk), .RN(n262), .Q(n451), .QN(
        n429) );
  DFFRX1 pixel_count_reg_9_ ( .D(n2010), .CK(clk), .RN(n262), .Q(n452), .QN(
        n434) );
  DFFRX1 pixel_count_reg_8_ ( .D(n2000), .CK(clk), .RN(n262), .Q(n453), .QN(
        n433) );
  DFFRX1 pixel_center_reg_0_ ( .D(n1860), .CK(clk), .RN(n441), .QN(n277) );
  DFFRX1 pixel_center_reg_4_ ( .D(n1900), .CK(clk), .RN(n262), .Q(
        pixel_center[4]), .QN(n417) );
  DFFRX1 pixel_center_reg_2_ ( .D(n1880), .CK(clk), .RN(n262), .Q(
        pixel_center[2]), .QN(n415) );
  DFFRX1 pixel_center_reg_1_ ( .D(n1870), .CK(clk), .RN(n441), .Q(
        pixel_center[1]), .QN(n414) );
  DFFRX1 pixel_center_reg_3_ ( .D(n1890), .CK(clk), .RN(n262), .Q(
        pixel_center[3]), .QN(n416) );
  DFFRX1 pixel_center_reg_5_ ( .D(n191), .CK(clk), .RN(n262), .Q(
        pixel_center[5]), .QN(n418) );
  DFFRX1 pixel_count_reg_6_ ( .D(n1990), .CK(clk), .RN(n262), .Q(N153), .QN(
        n435) );
  DFFRX1 pixel_count_reg_3_ ( .D(n1960), .CK(clk), .RN(n261), .Q(N150), .QN(
        n440) );
  DFFRX1 pixel_count_reg_4_ ( .D(n1970), .CK(clk), .RN(n262), .Q(N151), .QN(
        n436) );
  DFFRX1 pixel_count_reg_5_ ( .D(n1980), .CK(clk), .RN(n261), .Q(N152), .QN(
        n437) );
  DFFRX1 pixel_count_reg_1_ ( .D(n1940), .CK(clk), .RN(n262), .Q(N148), .QN(
        n438) );
  DFFRX1 pixel_count_reg_2_ ( .D(n1950), .CK(clk), .RN(n261), .Q(N149), .QN(
        n439) );
  DFFRX1 state_reg_3_ ( .D(next_state[3]), .CK(clk), .RN(n441), .Q(state[3]), 
        .QN(n292) );
  DFFRX1 state_reg_1_ ( .D(next_state[1]), .CK(clk), .RN(n441), .Q(state[1]), 
        .QN(n291) );
  DFFRX1 state_reg_0_ ( .D(n442), .CK(clk), .RN(n441), .Q(state[0]), .QN(n296)
         );
  DFFRX1 lbp_reg_data_reg_3_ ( .D(n1810), .CK(clk), .RN(n441), .Q(n424) );
  DFFRX1 lbp_reg_data_reg_0_ ( .D(n1780), .CK(clk), .RN(n441), .Q(n427) );
  DFFRX1 lbp_reg_data_reg_1_ ( .D(n1790), .CK(clk), .RN(n441), .Q(n426) );
  DFFRX1 lbp_reg_data_reg_5_ ( .D(n1830), .CK(clk), .RN(n441), .Q(n422) );
  DFFRX1 lbp_reg_data_reg_6_ ( .D(n1840), .CK(clk), .RN(n441), .Q(n421) );
  DFFRX1 lbp_reg_data_reg_4_ ( .D(n1820), .CK(clk), .RN(n441), .Q(n423) );
  DFFRX1 lbp_reg_data_reg_2_ ( .D(n1800), .CK(clk), .RN(n441), .Q(n425) );
  DFFRX1 lbp_reg_data_reg_7_ ( .D(n1850), .CK(clk), .RN(n441), .Q(n420) );
  DFFRX2 pixel_count_reg_7_ ( .D(n444), .CK(clk), .RN(n262), .Q(n2080), .QN(
        n2430) );
  DFFRX2 pixel_count_reg_0_ ( .D(n443), .CK(clk), .RN(n262), .Q(n207), .QN(
        n259) );
  DFFRX2 state_reg_2_ ( .D(next_state[2]), .CK(clk), .RN(n441), .Q(state[2]), 
        .QN(n287) );
  AND2X2 U195 ( .A(n401), .B(n287), .Y(n2110) );
  OA21X2 U196 ( .A0(pixel_center[7]), .A1(n282), .B0(n276), .Y(n2090) );
  NAND3BXL U197 ( .AN(n301), .B(n2430), .C(n259), .Y(n297) );
  INVX3 U198 ( .A(reset), .Y(n441) );
  NAND2X2 U199 ( .A(n224), .B(n314), .Y(n312) );
  CLKBUFX3 U200 ( .A(n307), .Y(n223) );
  NAND3XL U201 ( .A(n287), .B(n292), .C(n402), .Y(n290) );
  OAI211XL U202 ( .A0(n287), .A1(n288), .B0(n289), .C0(n290), .Y(next_state[2]) );
  OAI211XL U203 ( .A0(n296), .A1(n285), .B0(n224), .C0(n420), .Y(n315) );
  MXI2XL U204 ( .A(n2090), .B(n318), .S0(n289), .Y(n1820) );
  NAND2XL U205 ( .A(n423), .B(n224), .Y(n318) );
  MXI2XL U206 ( .A(n316), .B(n2090), .S0(n226), .Y(n1840) );
  NAND2XL U207 ( .A(n421), .B(n224), .Y(n316) );
  MXI2XL U208 ( .A(n321), .B(n2090), .S0(n227), .Y(n1800) );
  NAND2XL U209 ( .A(n425), .B(n224), .Y(n321) );
  MXI2XL U210 ( .A(n2090), .B(n317), .S0(n286), .Y(n1830) );
  NAND2XL U211 ( .A(n422), .B(n224), .Y(n317) );
  MXI2XL U212 ( .A(n2090), .B(n319), .S0(n320), .Y(n1810) );
  NAND2XL U213 ( .A(n424), .B(n224), .Y(n319) );
  MXI2XL U214 ( .A(n2090), .B(n322), .S0(n290), .Y(n1790) );
  NAND2XL U215 ( .A(n426), .B(n224), .Y(n322) );
  MXI2XL U216 ( .A(n2090), .B(n323), .S0(n294), .Y(n1780) );
  NAND2XL U217 ( .A(n427), .B(n224), .Y(n323) );
  NOR4XL U218 ( .A(n292), .B(n291), .C(state[0]), .D(state[2]), .Y(n311) );
  AND3XL U219 ( .A(n304), .B(state[2]), .C(n291), .Y(n306) );
  NOR3XL U220 ( .A(state[1]), .B(state[3]), .C(n296), .Y(n401) );
  NAND3XL U221 ( .A(n402), .B(n292), .C(state[2]), .Y(n286) );
  OAI32XL U222 ( .A0(n295), .A1(state[1]), .A2(n296), .B0(n284), .B1(n283), 
        .Y(n293) );
  BUFX12 U223 ( .A(n461), .Y(finish) );
  NOR2BX1 U224 ( .AN(n413), .B(state[2]), .Y(n461) );
  CLKBUFX6 U225 ( .A(n2110), .Y(n2120) );
  NAND3X1 U226 ( .A(n284), .B(n309), .C(n224), .Y(n307) );
  CLKBUFX3 U227 ( .A(n333), .Y(n2300) );
  CLKINVX1 U228 ( .A(n290), .Y(n333) );
  CLKBUFX3 U229 ( .A(n441), .Y(n261) );
  CLKBUFX3 U230 ( .A(n441), .Y(n262) );
  AND4X2 U231 ( .A(n294), .B(n289), .C(n399), .D(n400), .Y(n328) );
  NOR4X1 U232 ( .A(n227), .B(n2120), .C(n228), .D(n223), .Y(n400) );
  CLKBUFX3 U233 ( .A(n313), .Y(n224) );
  NOR2XL U234 ( .A(n295), .B(finish), .Y(n313) );
  CLKBUFX3 U235 ( .A(n331), .Y(n229) );
  CLKINVX1 U236 ( .A(n286), .Y(n331) );
  CLKINVX1 U237 ( .A(n2110), .Y(n314) );
  INVX3 U238 ( .A(n2430), .Y(n2450) );
  CLKBUFX3 U239 ( .A(n332), .Y(n228) );
  CLKINVX1 U240 ( .A(n320), .Y(n332) );
  CLKBUFX3 U241 ( .A(n305), .Y(n225) );
  CLKINVX1 U242 ( .A(n294), .Y(n305) );
  CLKBUFX3 U243 ( .A(n330), .Y(n222) );
  CLKINVX1 U244 ( .A(n289), .Y(n330) );
  INVX12 U245 ( .A(n2430), .Y(lbp_addr[7]) );
  INVX12 U246 ( .A(n259), .Y(lbp_addr[0]) );
  CLKINVX1 U247 ( .A(gray_data[7]), .Y(n282) );
  CLKINVX1 U248 ( .A(gray_data[1]), .Y(n279) );
  CLKINVX1 U249 ( .A(gray_data[5]), .Y(n281) );
  CLKINVX1 U250 ( .A(gray_data[3]), .Y(n280) );
  CLKBUFX3 U251 ( .A(N149), .Y(n255) );
  CLKBUFX3 U252 ( .A(N148), .Y(n257) );
  CLKBUFX3 U253 ( .A(N150), .Y(n253) );
  CLKBUFX3 U254 ( .A(N151), .Y(n251) );
  CLKBUFX3 U255 ( .A(N152), .Y(n2490) );
  CLKBUFX3 U256 ( .A(n302), .Y(n226) );
  NOR2X1 U257 ( .A(n285), .B(state[0]), .Y(n302) );
  CLKBUFX3 U258 ( .A(N153), .Y(n2470) );
  AND3X2 U259 ( .A(n2320), .B(n403), .C(n404), .Y(n445) );
  CLKBUFX3 U260 ( .A(n451), .Y(n2380) );
  CLKBUFX3 U261 ( .A(n306), .Y(n227) );
  CLKBUFX3 U262 ( .A(n452), .Y(n2400) );
  CLKBUFX3 U263 ( .A(n453), .Y(n2420) );
  CLKBUFX3 U264 ( .A(n311), .Y(n2320) );
  BUFX12 U265 ( .A(N148), .Y(lbp_addr[1]) );
  BUFX12 U266 ( .A(N149), .Y(lbp_addr[2]) );
  BUFX12 U267 ( .A(N150), .Y(lbp_addr[3]) );
  BUFX12 U268 ( .A(N151), .Y(lbp_addr[4]) );
  BUFX12 U269 ( .A(N152), .Y(lbp_addr[5]) );
  BUFX12 U270 ( .A(N153), .Y(lbp_addr[6]) );
  BUFX12 U271 ( .A(n453), .Y(lbp_addr[8]) );
  BUFX12 U272 ( .A(n452), .Y(lbp_addr[9]) );
  CLKBUFX3 U273 ( .A(n449), .Y(n2340) );
  CLKBUFX3 U274 ( .A(n450), .Y(n236) );
  BUFX12 U275 ( .A(n451), .Y(lbp_addr[10]) );
  BUFX12 U276 ( .A(n450), .Y(lbp_addr[11]) );
  BUFX12 U277 ( .A(n449), .Y(lbp_addr[12]) );
  BUFX12 U278 ( .A(n448), .Y(lbp_addr[13]) );
  CLKAND2X12 U279 ( .A(n427), .B(lbp_valid), .Y(lbp_data[0]) );
  BUFX16 U280 ( .A(n445), .Y(lbp_valid) );
  BUFX12 U281 ( .A(n460), .Y(lbp_data[1]) );
  AND2XL U282 ( .A(n426), .B(lbp_valid), .Y(n460) );
  BUFX12 U283 ( .A(n459), .Y(lbp_data[2]) );
  AND2XL U284 ( .A(n425), .B(lbp_valid), .Y(n459) );
  BUFX12 U285 ( .A(n458), .Y(lbp_data[3]) );
  AND2XL U286 ( .A(n424), .B(lbp_valid), .Y(n458) );
  BUFX12 U287 ( .A(n457), .Y(lbp_data[4]) );
  AND2XL U288 ( .A(n423), .B(lbp_valid), .Y(n457) );
  BUFX12 U289 ( .A(n456), .Y(lbp_data[5]) );
  AND2XL U290 ( .A(n422), .B(lbp_valid), .Y(n456) );
  BUFX12 U291 ( .A(n455), .Y(lbp_data[6]) );
  AND2XL U292 ( .A(n421), .B(lbp_valid), .Y(n455) );
  BUFX12 U293 ( .A(n454), .Y(lbp_data[7]) );
  AND2XL U294 ( .A(n420), .B(lbp_valid), .Y(n454) );
  AND2XL U295 ( .A(n402), .B(state[3]), .Y(n413) );
  BUFX12 U296 ( .A(n446), .Y(gray_addr[0]) );
  CLKMX2X12 U297 ( .A(n393), .B(lbp_addr[1]), .S0(n2120), .Y(gray_addr[1]) );
  CLKMX2X12 U298 ( .A(n388), .B(lbp_addr[2]), .S0(n2120), .Y(gray_addr[2]) );
  CLKMX2X12 U299 ( .A(n383), .B(lbp_addr[3]), .S0(n2120), .Y(gray_addr[3]) );
  CLKMX2X12 U300 ( .A(n378), .B(lbp_addr[4]), .S0(n2120), .Y(gray_addr[4]) );
  CLKMX2X12 U301 ( .A(n373), .B(lbp_addr[5]), .S0(n2120), .Y(gray_addr[5]) );
  CLKMX2X12 U302 ( .A(n368), .B(lbp_addr[6]), .S0(n2120), .Y(gray_addr[6]) );
  CLKMX2X12 U303 ( .A(n363), .B(lbp_addr[7]), .S0(n2120), .Y(gray_addr[7]) );
  CLKMX2X12 U304 ( .A(n358), .B(lbp_addr[8]), .S0(n2120), .Y(gray_addr[8]) );
  CLKMX2X12 U305 ( .A(n353), .B(lbp_addr[9]), .S0(n2120), .Y(gray_addr[9]) );
  CLKMX2X12 U306 ( .A(n348), .B(n2380), .S0(n2120), .Y(gray_addr[10]) );
  CLKMX2X12 U307 ( .A(n343), .B(n450), .S0(n2120), .Y(gray_addr[11]) );
  CLKMX2X12 U308 ( .A(n338), .B(n449), .S0(n2120), .Y(gray_addr[12]) );
  CLKMX2X12 U309 ( .A(n329), .B(n448), .S0(n2120), .Y(gray_addr[13]) );
  BUFX12 U310 ( .A(n447), .Y(gray_req) );
  XOR2X1 U311 ( .A(n448), .B(add_116_carry_13_), .Y(N220) );
  AND2X1 U312 ( .A(add_116_carry_12_), .B(n2340), .Y(add_116_carry_13_) );
  XOR2X1 U313 ( .A(n2340), .B(add_116_carry_12_), .Y(N219) );
  AND2X1 U314 ( .A(add_116_carry_11_), .B(n236), .Y(add_116_carry_12_) );
  XOR2X1 U315 ( .A(n236), .B(add_116_carry_11_), .Y(N218) );
  AND2X1 U316 ( .A(add_116_carry_10_), .B(n2380), .Y(add_116_carry_11_) );
  XOR2X1 U317 ( .A(n2380), .B(add_116_carry_10_), .Y(N217) );
  AND2X1 U318 ( .A(add_116_carry_9_), .B(n2400), .Y(add_116_carry_10_) );
  XOR2X1 U319 ( .A(n2400), .B(add_116_carry_9_), .Y(N216) );
  AND2X1 U320 ( .A(add_116_carry_8_), .B(n2420), .Y(add_116_carry_9_) );
  XOR2X1 U321 ( .A(n2420), .B(add_116_carry_8_), .Y(N215) );
  AND2X1 U322 ( .A(add_116_carry_7_), .B(n2080), .Y(add_116_carry_8_) );
  XOR2X1 U323 ( .A(n2450), .B(add_116_carry_7_), .Y(N214) );
  OR2X1 U324 ( .A(n2470), .B(add_116_carry_6_), .Y(add_116_carry_7_) );
  XNOR2X1 U325 ( .A(add_116_carry_6_), .B(n2470), .Y(N213) );
  OR2X1 U326 ( .A(n2490), .B(add_116_carry_5_), .Y(add_116_carry_6_) );
  XNOR2X1 U327 ( .A(add_116_carry_5_), .B(n2490), .Y(N212) );
  OR2X1 U328 ( .A(n251), .B(add_116_carry_4_), .Y(add_116_carry_5_) );
  XNOR2X1 U329 ( .A(add_116_carry_4_), .B(n251), .Y(N211) );
  OR2X1 U330 ( .A(n253), .B(add_116_carry_3_), .Y(add_116_carry_4_) );
  XNOR2X1 U331 ( .A(add_116_carry_3_), .B(n253), .Y(N210) );
  OR2X1 U332 ( .A(n255), .B(add_116_carry_2_), .Y(add_116_carry_3_) );
  XNOR2X1 U333 ( .A(add_116_carry_2_), .B(n255), .Y(N209) );
  OR2X1 U334 ( .A(n257), .B(n207), .Y(add_116_carry_2_) );
  XNOR2X1 U335 ( .A(n207), .B(n257), .Y(N208) );
  XNOR2X1 U336 ( .A(n448), .B(sub_100_carry[13]), .Y(N160) );
  OR2X1 U337 ( .A(n2340), .B(sub_100_carry[12]), .Y(sub_100_carry[13]) );
  XNOR2X1 U338 ( .A(sub_100_carry[12]), .B(n2340), .Y(N159) );
  OR2X1 U339 ( .A(n236), .B(sub_100_carry[11]), .Y(sub_100_carry[12]) );
  XNOR2X1 U340 ( .A(sub_100_carry[11]), .B(n236), .Y(N158) );
  OR2X1 U341 ( .A(n2380), .B(sub_100_carry[10]), .Y(sub_100_carry[11]) );
  XNOR2X1 U342 ( .A(sub_100_carry[10]), .B(n2380), .Y(N157) );
  OR2X1 U343 ( .A(n2400), .B(sub_100_carry[9]), .Y(sub_100_carry[10]) );
  XNOR2X1 U344 ( .A(sub_100_carry[9]), .B(n2400), .Y(N156) );
  OR2X1 U345 ( .A(n2420), .B(n2080), .Y(sub_100_carry[9]) );
  XNOR2X1 U346 ( .A(n2080), .B(n2420), .Y(N155) );
  XOR2X1 U347 ( .A(lbp_addr[13]), .B(add_124_carry_13_), .Y(N250) );
  AND2X1 U348 ( .A(add_124_carry_12_), .B(n2340), .Y(add_124_carry_13_) );
  XOR2X1 U349 ( .A(n2340), .B(add_124_carry_12_), .Y(N249) );
  AND2X1 U350 ( .A(add_124_carry_11_), .B(n236), .Y(add_124_carry_12_) );
  XOR2X1 U351 ( .A(n236), .B(add_124_carry_11_), .Y(N248) );
  AND2X1 U352 ( .A(add_124_carry_10_), .B(n2380), .Y(add_124_carry_11_) );
  XOR2X1 U353 ( .A(n2380), .B(add_124_carry_10_), .Y(N247) );
  AND2X1 U354 ( .A(add_124_carry_9_), .B(n2400), .Y(add_124_carry_10_) );
  XOR2X1 U355 ( .A(n2400), .B(add_124_carry_9_), .Y(N246) );
  AND2X1 U356 ( .A(add_124_carry_8_), .B(n2420), .Y(add_124_carry_9_) );
  XOR2X1 U357 ( .A(n2420), .B(add_124_carry_8_), .Y(N245) );
  OR2X1 U358 ( .A(n2450), .B(add_124_carry_7_), .Y(add_124_carry_8_) );
  XNOR2X1 U359 ( .A(add_124_carry_7_), .B(n2450), .Y(N244) );
  AND2X1 U360 ( .A(add_124_carry_6_), .B(n2470), .Y(add_124_carry_7_) );
  XOR2X1 U361 ( .A(n2470), .B(add_124_carry_6_), .Y(N243) );
  AND2X1 U362 ( .A(add_124_carry_5_), .B(n2490), .Y(add_124_carry_6_) );
  XOR2X1 U363 ( .A(n2490), .B(add_124_carry_5_), .Y(N242) );
  AND2X1 U364 ( .A(add_124_carry_4_), .B(n251), .Y(add_124_carry_5_) );
  XOR2X1 U365 ( .A(n251), .B(add_124_carry_4_), .Y(N241) );
  AND2X1 U366 ( .A(add_124_carry_3_), .B(n253), .Y(add_124_carry_4_) );
  XOR2X1 U367 ( .A(n253), .B(add_124_carry_3_), .Y(N240) );
  AND2X1 U368 ( .A(add_124_carry_2_), .B(n255), .Y(add_124_carry_3_) );
  XOR2X1 U369 ( .A(n255), .B(add_124_carry_2_), .Y(N239) );
  AND2X1 U370 ( .A(n207), .B(n257), .Y(add_124_carry_2_) );
  XOR2X1 U371 ( .A(n257), .B(n207), .Y(N238) );
  XOR2X1 U372 ( .A(n408), .B(add_120_carry[13]), .Y(N235) );
  AND2X1 U373 ( .A(add_120_carry[12]), .B(n2340), .Y(add_120_carry[13]) );
  XOR2X1 U374 ( .A(n2340), .B(add_120_carry[12]), .Y(N234) );
  AND2X1 U375 ( .A(add_120_carry[11]), .B(n236), .Y(add_120_carry[12]) );
  XOR2X1 U376 ( .A(n236), .B(add_120_carry[11]), .Y(N233) );
  AND2X1 U377 ( .A(add_120_carry[10]), .B(n2380), .Y(add_120_carry[11]) );
  XOR2X1 U378 ( .A(n2380), .B(add_120_carry[10]), .Y(N232) );
  AND2X1 U379 ( .A(add_120_carry[9]), .B(n2400), .Y(add_120_carry[10]) );
  XOR2X1 U380 ( .A(n2400), .B(add_120_carry[9]), .Y(N231) );
  AND2X1 U381 ( .A(n2450), .B(n2420), .Y(add_120_carry[9]) );
  XOR2X1 U382 ( .A(n2420), .B(n2080), .Y(N230) );
  XNOR2X1 U383 ( .A(n448), .B(sub_97_carry_13_), .Y(N146) );
  OR2X1 U384 ( .A(n2340), .B(sub_97_carry_12_), .Y(sub_97_carry_13_) );
  XNOR2X1 U385 ( .A(sub_97_carry_12_), .B(n2340), .Y(N145) );
  OR2X1 U386 ( .A(n236), .B(sub_97_carry_11_), .Y(sub_97_carry_12_) );
  XNOR2X1 U387 ( .A(sub_97_carry_11_), .B(n236), .Y(N144) );
  OR2X1 U388 ( .A(n2380), .B(sub_97_carry_10_), .Y(sub_97_carry_11_) );
  XNOR2X1 U389 ( .A(sub_97_carry_10_), .B(n2380), .Y(N143) );
  OR2X1 U390 ( .A(n2400), .B(sub_97_carry_9_), .Y(sub_97_carry_10_) );
  XNOR2X1 U391 ( .A(sub_97_carry_9_), .B(n2400), .Y(N142) );
  OR2X1 U392 ( .A(n2420), .B(sub_97_carry_8_), .Y(sub_97_carry_9_) );
  XNOR2X1 U393 ( .A(sub_97_carry_8_), .B(n2420), .Y(N141) );
  AND2X1 U394 ( .A(sub_97_carry_7_), .B(n2450), .Y(sub_97_carry_8_) );
  XOR2X1 U395 ( .A(n2080), .B(sub_97_carry_7_), .Y(N140) );
  OR2X1 U396 ( .A(n2470), .B(sub_97_carry_6_), .Y(sub_97_carry_7_) );
  XNOR2X1 U397 ( .A(sub_97_carry_6_), .B(n2470), .Y(N139) );
  OR2X1 U398 ( .A(n2490), .B(sub_97_carry_5_), .Y(sub_97_carry_6_) );
  XNOR2X1 U399 ( .A(sub_97_carry_5_), .B(n2490), .Y(N138) );
  OR2X1 U400 ( .A(n251), .B(sub_97_carry_4_), .Y(sub_97_carry_5_) );
  XNOR2X1 U401 ( .A(sub_97_carry_4_), .B(n251), .Y(N137) );
  OR2X1 U402 ( .A(n253), .B(sub_97_carry_3_), .Y(sub_97_carry_4_) );
  XNOR2X1 U403 ( .A(sub_97_carry_3_), .B(n253), .Y(N136) );
  OR2X1 U404 ( .A(n255), .B(sub_97_carry_2_), .Y(sub_97_carry_3_) );
  XNOR2X1 U405 ( .A(sub_97_carry_2_), .B(n255), .Y(N135) );
  OR2X1 U406 ( .A(n257), .B(n207), .Y(sub_97_carry_2_) );
  XNOR2X1 U407 ( .A(n207), .B(n257), .Y(N134) );
  XNOR2X1 U408 ( .A(n408), .B(sub_104_carry_13_), .Y(N175) );
  OR2X1 U409 ( .A(n2340), .B(sub_104_carry_12_), .Y(sub_104_carry_13_) );
  XNOR2X1 U410 ( .A(sub_104_carry_12_), .B(n2340), .Y(N174) );
  OR2X1 U411 ( .A(n236), .B(sub_104_carry_11_), .Y(sub_104_carry_12_) );
  XNOR2X1 U412 ( .A(sub_104_carry_11_), .B(n236), .Y(N173) );
  OR2X1 U413 ( .A(n2380), .B(sub_104_carry_10_), .Y(sub_104_carry_11_) );
  XNOR2X1 U414 ( .A(sub_104_carry_10_), .B(n2380), .Y(N172) );
  OR2X1 U415 ( .A(n2400), .B(sub_104_carry_9_), .Y(sub_104_carry_10_) );
  XNOR2X1 U416 ( .A(sub_104_carry_9_), .B(n2400), .Y(N171) );
  OR2X1 U417 ( .A(n2420), .B(sub_104_carry_8_), .Y(sub_104_carry_9_) );
  XNOR2X1 U418 ( .A(sub_104_carry_8_), .B(n2420), .Y(N170) );
  OR2X1 U419 ( .A(n2080), .B(sub_104_carry_7_), .Y(sub_104_carry_8_) );
  XNOR2X1 U420 ( .A(sub_104_carry_7_), .B(n2080), .Y(N169) );
  AND2X1 U421 ( .A(sub_104_carry_6_), .B(n2470), .Y(sub_104_carry_7_) );
  XOR2X1 U422 ( .A(n2470), .B(sub_104_carry_6_), .Y(N168) );
  AND2X1 U423 ( .A(sub_104_carry_5_), .B(n2490), .Y(sub_104_carry_6_) );
  XOR2X1 U424 ( .A(n2490), .B(sub_104_carry_5_), .Y(N167) );
  AND2X1 U425 ( .A(sub_104_carry_4_), .B(n251), .Y(sub_104_carry_5_) );
  XOR2X1 U426 ( .A(n251), .B(sub_104_carry_4_), .Y(N166) );
  AND2X1 U427 ( .A(sub_104_carry_3_), .B(n253), .Y(sub_104_carry_4_) );
  XOR2X1 U428 ( .A(n253), .B(sub_104_carry_3_), .Y(N165) );
  AND2X1 U429 ( .A(sub_104_carry_2_), .B(n255), .Y(sub_104_carry_3_) );
  XOR2X1 U430 ( .A(n255), .B(sub_104_carry_2_), .Y(N164) );
  AND2X1 U431 ( .A(lbp_addr[0]), .B(n257), .Y(sub_104_carry_2_) );
  XOR2X1 U432 ( .A(n257), .B(n207), .Y(N163) );
  NAND2BX1 U433 ( .AN(pixel_center[4]), .B(gray_data[4]), .Y(n263) );
  OAI222XL U434 ( .A0(pixel_center[5]), .A1(n281), .B0(pixel_center[5]), .B1(
        n263), .C0(n281), .C1(n263), .Y(n264) );
  OAI222XL U435 ( .A0(gray_data[6]), .A1(n264), .B0(n278), .B1(n264), .C0(
        gray_data[6]), .C1(n278), .Y(n275) );
  NOR2BX1 U436 ( .AN(pixel_center[4]), .B(gray_data[4]), .Y(n265) );
  OAI22XL U437 ( .A0(n265), .A1(n281), .B0(pixel_center[5]), .B1(n265), .Y(
        n273) );
  NAND2BX1 U438 ( .AN(pixel_center[2]), .B(gray_data[2]), .Y(n271) );
  OAI2BB2XL U439 ( .B0(gray_data[0]), .B1(n277), .A0N(n279), .A1N(
        pixel_center[1]), .Y(n266) );
  OAI21XL U440 ( .A0(pixel_center[1]), .A1(n279), .B0(n266), .Y(n269) );
  NOR2BX1 U441 ( .AN(pixel_center[2]), .B(gray_data[2]), .Y(n267) );
  OAI22XL U442 ( .A0(n267), .A1(n280), .B0(pixel_center[3]), .B1(n267), .Y(
        n268) );
  AOI2BB2X1 U443 ( .B0(n269), .B1(n268), .A0N(n271), .A1N(n280), .Y(n270) );
  OAI221XL U444 ( .A0(pixel_center[3]), .A1(n271), .B0(pixel_center[3]), .B1(
        n280), .C0(n270), .Y(n272) );
  OAI211X1 U445 ( .A0(gray_data[6]), .A1(n278), .B0(n273), .C0(n272), .Y(n274)
         );
  AO22X1 U446 ( .A0(n282), .A1(pixel_center[7]), .B0(n275), .B1(n274), .Y(n276) );
  OAI211X1 U447 ( .A0(n283), .A1(n284), .B0(n285), .C0(n286), .Y(next_state[3]) );
  NAND2X1 U448 ( .A(n291), .B(n292), .Y(n288) );
  NAND3BX1 U449 ( .AN(n293), .B(n294), .C(n289), .Y(next_state[1]) );
  NAND4BX1 U450 ( .AN(n297), .B(n298), .C(n299), .D(n300), .Y(n283) );
  NOR3X1 U451 ( .A(n431), .B(n429), .C(n430), .Y(n300) );
  NOR3X1 U452 ( .A(n434), .B(n432), .C(n433), .Y(n299) );
  NOR3X1 U453 ( .A(n440), .B(n438), .C(n439), .Y(n298) );
  NAND4BX1 U454 ( .AN(n226), .B(n284), .C(n289), .D(n303), .Y(n442) );
  AOI211X1 U455 ( .A0(gray_ready), .A1(n304), .B0(n225), .C0(n227), .Y(n303)
         );
  OAI221XL U456 ( .A0(n259), .A1(n223), .B0(n284), .B1(n308), .C0(n309), .Y(
        n443) );
  CLKINVX1 U457 ( .A(N192), .Y(n308) );
  OAI221XL U458 ( .A0(n2430), .A1(n223), .B0(n284), .B1(n310), .C0(n309), .Y(
        n444) );
  CLKINVX1 U459 ( .A(N199), .Y(n310) );
  OAI2BB2XL U460 ( .B0(n432), .B1(n223), .A0N(n2320), .A1N(N205), .Y(n2050) );
  OAI2BB2XL U461 ( .B0(n431), .B1(n223), .A0N(n2320), .A1N(N204), .Y(n2040) );
  OAI2BB2XL U462 ( .B0(n430), .B1(n223), .A0N(n2320), .A1N(N203), .Y(n2030) );
  OAI2BB2XL U463 ( .B0(n429), .B1(n223), .A0N(n2320), .A1N(N202), .Y(n2020) );
  OAI2BB2XL U464 ( .B0(n434), .B1(n223), .A0N(n2320), .A1N(N201), .Y(n2010) );
  OAI2BB2XL U465 ( .B0(n433), .B1(n223), .A0N(n2320), .A1N(N200), .Y(n2000) );
  OAI2BB2XL U466 ( .B0(n435), .B1(n223), .A0N(n2320), .A1N(N198), .Y(n1990) );
  OAI2BB2XL U467 ( .B0(n437), .B1(n223), .A0N(n2320), .A1N(N197), .Y(n1980) );
  OAI2BB2XL U468 ( .B0(n436), .B1(n223), .A0N(n2320), .A1N(N196), .Y(n1970) );
  OAI2BB2XL U469 ( .B0(n440), .B1(n223), .A0N(n2320), .A1N(N195), .Y(n1960) );
  OAI2BB2XL U470 ( .B0(n439), .B1(n223), .A0N(n2320), .A1N(N194), .Y(n1950) );
  OAI2BB2XL U471 ( .B0(n438), .B1(n223), .A0N(n2320), .A1N(N193), .Y(n1940) );
  OAI2BB2XL U472 ( .B0(n312), .B1(n419), .A0N(gray_data[7]), .A1N(n2120), .Y(
        n1930) );
  OAI2BB2XL U473 ( .B0(n312), .B1(n278), .A0N(gray_data[6]), .A1N(n2120), .Y(
        n1920) );
  OAI2BB2XL U474 ( .B0(n312), .B1(n418), .A0N(gray_data[5]), .A1N(n2110), .Y(
        n191) );
  OAI2BB2XL U475 ( .B0(n312), .B1(n417), .A0N(gray_data[4]), .A1N(n2110), .Y(
        n1900) );
  OAI2BB2XL U476 ( .B0(n312), .B1(n416), .A0N(gray_data[3]), .A1N(n2120), .Y(
        n1890) );
  OAI2BB2XL U477 ( .B0(n312), .B1(n415), .A0N(gray_data[2]), .A1N(n2120), .Y(
        n1880) );
  OAI2BB2XL U478 ( .B0(n312), .B1(n414), .A0N(gray_data[1]), .A1N(n2120), .Y(
        n1870) );
  OAI2BB2XL U479 ( .B0(n312), .B1(n277), .A0N(gray_data[0]), .A1N(n2120), .Y(
        n1860) );
  OAI31XL U480 ( .A0(n2090), .A1(n296), .A2(n285), .B0(n315), .Y(n1850) );
  NAND4X1 U481 ( .A(n324), .B(n325), .C(n326), .D(n327), .Y(n1770) );
  AOI222XL U482 ( .A0(N160), .A1(n225), .B0(n328), .B1(n329), .C0(N220), .C1(
        n222), .Y(n327) );
  AOI22X1 U483 ( .A0(N190), .A1(n227), .B0(N250), .B1(n226), .Y(n326) );
  AOI22X1 U484 ( .A0(N235), .A1(n229), .B0(N205), .B1(n228), .Y(n325) );
  AOI22X1 U485 ( .A0(N175), .A1(n2300), .B0(N146), .B1(n2120), .Y(n324) );
  NAND4X1 U486 ( .A(n334), .B(n335), .C(n336), .D(n337), .Y(n176) );
  AOI222XL U487 ( .A0(N159), .A1(n225), .B0(n328), .B1(n338), .C0(N219), .C1(
        n222), .Y(n337) );
  AOI22X1 U488 ( .A0(N189), .A1(n227), .B0(N249), .B1(n226), .Y(n336) );
  AOI22X1 U489 ( .A0(N234), .A1(n229), .B0(N204), .B1(n228), .Y(n335) );
  AOI22X1 U490 ( .A0(N174), .A1(n2300), .B0(N145), .B1(n2120), .Y(n334) );
  NAND4X1 U491 ( .A(n339), .B(n340), .C(n341), .D(n342), .Y(n1750) );
  AOI222XL U492 ( .A0(N158), .A1(n225), .B0(n328), .B1(n343), .C0(N218), .C1(
        n222), .Y(n342) );
  AOI22X1 U493 ( .A0(N188), .A1(n227), .B0(N248), .B1(n226), .Y(n341) );
  AOI22X1 U494 ( .A0(N233), .A1(n229), .B0(N203), .B1(n228), .Y(n340) );
  AOI22X1 U495 ( .A0(N173), .A1(n2300), .B0(N144), .B1(n2120), .Y(n339) );
  NAND4X1 U496 ( .A(n344), .B(n345), .C(n346), .D(n347), .Y(n1740) );
  AOI222XL U497 ( .A0(N157), .A1(n225), .B0(n328), .B1(n348), .C0(N217), .C1(
        n222), .Y(n347) );
  AOI22X1 U498 ( .A0(N187), .A1(n227), .B0(N247), .B1(n226), .Y(n346) );
  AOI22X1 U499 ( .A0(N232), .A1(n229), .B0(N202), .B1(n228), .Y(n345) );
  AOI22X1 U500 ( .A0(N172), .A1(n2300), .B0(N143), .B1(n2120), .Y(n344) );
  NAND4X1 U501 ( .A(n349), .B(n350), .C(n351), .D(n352), .Y(n1730) );
  AOI222XL U502 ( .A0(N156), .A1(n225), .B0(n328), .B1(n353), .C0(N216), .C1(
        n222), .Y(n352) );
  AOI22X1 U503 ( .A0(N186), .A1(n227), .B0(N246), .B1(n226), .Y(n351) );
  AOI22X1 U504 ( .A0(N231), .A1(n229), .B0(N201), .B1(n228), .Y(n350) );
  AOI22X1 U505 ( .A0(N171), .A1(n2300), .B0(N142), .B1(n2120), .Y(n349) );
  NAND4X1 U506 ( .A(n354), .B(n355), .C(n356), .D(n357), .Y(n1720) );
  AOI222XL U507 ( .A0(N155), .A1(n225), .B0(n328), .B1(n358), .C0(N215), .C1(
        n222), .Y(n357) );
  AOI22X1 U508 ( .A0(N185), .A1(n227), .B0(N245), .B1(n226), .Y(n356) );
  AOI22X1 U509 ( .A0(N230), .A1(n229), .B0(N200), .B1(n228), .Y(n355) );
  AOI22X1 U510 ( .A0(N170), .A1(n2300), .B0(N141), .B1(n2120), .Y(n354) );
  NAND4X1 U511 ( .A(n359), .B(n360), .C(n361), .D(n362), .Y(n1710) );
  AOI222XL U512 ( .A0(n2430), .A1(n225), .B0(n328), .B1(n363), .C0(N214), .C1(
        n222), .Y(n362) );
  AOI22X1 U513 ( .A0(N184), .A1(n227), .B0(N244), .B1(n226), .Y(n361) );
  AOI22X1 U514 ( .A0(n2430), .A1(n229), .B0(N199), .B1(n228), .Y(n360) );
  AOI22X1 U515 ( .A0(N169), .A1(n2300), .B0(N140), .B1(n2120), .Y(n359) );
  NAND4X1 U516 ( .A(n364), .B(n365), .C(n366), .D(n367), .Y(n1700) );
  AOI222XL U517 ( .A0(n2470), .A1(n225), .B0(n328), .B1(n368), .C0(N213), .C1(
        n222), .Y(n367) );
  AOI22X1 U518 ( .A0(N183), .A1(n227), .B0(N243), .B1(n226), .Y(n366) );
  AOI22X1 U519 ( .A0(n2470), .A1(n229), .B0(N198), .B1(n228), .Y(n365) );
  AOI22X1 U520 ( .A0(N168), .A1(n2300), .B0(N139), .B1(n2120), .Y(n364) );
  NAND4X1 U521 ( .A(n369), .B(n370), .C(n371), .D(n372), .Y(n1690) );
  AOI222XL U522 ( .A0(n2490), .A1(n225), .B0(n328), .B1(n373), .C0(N212), .C1(
        n222), .Y(n372) );
  AOI22X1 U523 ( .A0(N182), .A1(n227), .B0(N242), .B1(n226), .Y(n371) );
  AOI22X1 U524 ( .A0(n2490), .A1(n229), .B0(N197), .B1(n228), .Y(n370) );
  AOI22X1 U525 ( .A0(N167), .A1(n2300), .B0(N138), .B1(n2120), .Y(n369) );
  NAND4X1 U526 ( .A(n374), .B(n375), .C(n376), .D(n377), .Y(n1680) );
  AOI222XL U527 ( .A0(n251), .A1(n225), .B0(n328), .B1(n378), .C0(N211), .C1(
        n222), .Y(n377) );
  AOI22X1 U528 ( .A0(N181), .A1(n227), .B0(N241), .B1(n226), .Y(n376) );
  AOI22X1 U529 ( .A0(n251), .A1(n229), .B0(N196), .B1(n228), .Y(n375) );
  AOI22X1 U530 ( .A0(N166), .A1(n2300), .B0(N137), .B1(n2120), .Y(n374) );
  NAND4X1 U531 ( .A(n379), .B(n380), .C(n381), .D(n382), .Y(n1670) );
  AOI222XL U532 ( .A0(n253), .A1(n225), .B0(n328), .B1(n383), .C0(N210), .C1(
        n222), .Y(n382) );
  AOI22X1 U533 ( .A0(N180), .A1(n227), .B0(N240), .B1(n226), .Y(n381) );
  AOI22X1 U534 ( .A0(n253), .A1(n229), .B0(N195), .B1(n228), .Y(n380) );
  AOI22X1 U535 ( .A0(N165), .A1(n2300), .B0(N136), .B1(n2120), .Y(n379) );
  NAND4X1 U536 ( .A(n384), .B(n385), .C(n386), .D(n387), .Y(n1660) );
  AOI222XL U537 ( .A0(n255), .A1(n225), .B0(n328), .B1(n388), .C0(N209), .C1(
        n222), .Y(n387) );
  AOI22X1 U538 ( .A0(N179), .A1(n227), .B0(N239), .B1(n226), .Y(n386) );
  AOI22X1 U539 ( .A0(n255), .A1(n229), .B0(N194), .B1(n228), .Y(n385) );
  AOI22X1 U540 ( .A0(N164), .A1(n2300), .B0(N135), .B1(n2120), .Y(n384) );
  NAND4X1 U541 ( .A(n389), .B(n390), .C(n391), .D(n392), .Y(n1650) );
  AOI222XL U542 ( .A0(n257), .A1(n225), .B0(n328), .B1(n393), .C0(N208), .C1(
        n222), .Y(n392) );
  AOI22X1 U543 ( .A0(N178), .A1(n227), .B0(N238), .B1(n226), .Y(n391) );
  AOI22X1 U544 ( .A0(n257), .A1(n229), .B0(N193), .B1(n228), .Y(n390) );
  AOI22X1 U545 ( .A0(N163), .A1(n2300), .B0(N134), .B1(n2120), .Y(n389) );
  NAND4X1 U546 ( .A(n394), .B(n395), .C(n396), .D(n397), .Y(n1640) );
  AOI222XL U547 ( .A0(n207), .A1(n225), .B0(n328), .B1(n398), .C0(n259), .C1(
        n222), .Y(n397) );
  CLKINVX1 U548 ( .A(n2320), .Y(n284) );
  NOR3X1 U549 ( .A(n2300), .B(n226), .C(n229), .Y(n399) );
  NAND3X1 U550 ( .A(state[2]), .B(state[1]), .C(n304), .Y(n289) );
  NAND3X1 U551 ( .A(state[1]), .B(n287), .C(n304), .Y(n294) );
  AOI22X1 U552 ( .A0(N177), .A1(n227), .B0(n259), .B1(n226), .Y(n396) );
  NAND3X1 U553 ( .A(n291), .B(n287), .C(state[3]), .Y(n285) );
  AOI22X1 U554 ( .A0(n207), .A1(n229), .B0(N192), .B1(n228), .Y(n395) );
  NAND2X1 U555 ( .A(n401), .B(state[2]), .Y(n320) );
  AOI22X1 U556 ( .A0(n259), .A1(n2300), .B0(n259), .B1(n2120), .Y(n394) );
  MXI2X1 U557 ( .A(n405), .B(n406), .S0(n429), .Y(n404) );
  NOR4X1 U558 ( .A(n407), .B(n450), .C(n408), .D(n449), .Y(n406) );
  NAND3X1 U559 ( .A(n434), .B(n2430), .C(n433), .Y(n407) );
  NOR4X1 U560 ( .A(n409), .B(n2430), .C(n433), .D(n434), .Y(n405) );
  NAND3X1 U561 ( .A(n449), .B(n450), .C(n408), .Y(n409) );
  CLKINVX1 U562 ( .A(n432), .Y(n408) );
  MXI2X1 U563 ( .A(n410), .B(n411), .S0(n259), .Y(n403) );
  NOR4X1 U564 ( .A(n412), .B(N153), .C(N152), .D(N151), .Y(n411) );
  NAND3X1 U565 ( .A(n439), .B(n440), .C(n438), .Y(n412) );
  NOR4X1 U566 ( .A(n438), .B(n439), .C(n440), .D(n301), .Y(n410) );
  NAND3X1 U567 ( .A(n251), .B(n2470), .C(n2490), .Y(n301) );
  NOR3BXL U568 ( .AN(n309), .B(n413), .C(n295), .Y(n447) );
  NOR2X1 U569 ( .A(n292), .B(n287), .Y(n295) );
  NAND3X1 U570 ( .A(n291), .B(n287), .C(n304), .Y(n309) );
  NOR2X1 U571 ( .A(state[0]), .B(state[3]), .Y(n304) );
  MXI2X1 U572 ( .A(n259), .B(n428), .S0(n314), .Y(n446) );
  NOR2X1 U573 ( .A(n291), .B(n296), .Y(n402) );
endmodule

