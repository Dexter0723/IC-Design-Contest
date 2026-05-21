/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Thu May 21 16:32:32 2026
/////////////////////////////////////////////////////////////


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match;
  wire   n2402, n2403, n2404, n2405, n2406, n2407, \str[0][7] , \str[0][6] ,
         \str[0][5] , \str[0][4] , \str[0][3] , \str[0][2] , \str[0][1] ,
         \str[0][0] , \str[1][7] , \str[1][6] , \str[1][5] , \str[1][4] ,
         \str[1][3] , \str[1][2] , \str[1][1] , \str[1][0] , \str[2][7] ,
         \str[2][6] , \str[2][5] , \str[2][4] , \str[2][3] , \str[2][2] ,
         \str[2][1] , \str[2][0] , \str[3][7] , \str[3][6] , \str[3][5] ,
         \str[3][4] , \str[3][3] , \str[3][2] , \str[3][1] , \str[3][0] ,
         \str[4][7] , \str[4][6] , \str[4][5] , \str[4][4] , \str[4][3] ,
         \str[4][2] , \str[4][1] , \str[4][0] , \str[5][7] , \str[5][6] ,
         \str[5][5] , \str[5][4] , \str[5][3] , \str[5][2] , \str[5][1] ,
         \str[5][0] , \str[6][7] , \str[6][6] , \str[6][5] , \str[6][4] ,
         \str[6][3] , \str[6][2] , \str[6][1] , \str[6][0] , \str[7][7] ,
         \str[7][6] , \str[7][5] , \str[7][4] , \str[7][3] , \str[7][2] ,
         \str[7][1] , \str[7][0] , \str[8][7] , \str[8][6] , \str[8][5] ,
         \str[8][4] , \str[8][3] , \str[8][2] , \str[8][1] , \str[8][0] ,
         \str[9][7] , \str[9][6] , \str[9][5] , \str[9][4] , \str[9][3] ,
         \str[9][2] , \str[9][1] , \str[9][0] , \str[10][7] , \str[10][6] ,
         \str[10][5] , \str[10][4] , \str[10][3] , \str[10][2] , \str[10][1] ,
         \str[10][0] , \str[11][7] , \str[11][6] , \str[11][5] , \str[11][4] ,
         \str[11][3] , \str[11][2] , \str[11][1] , \str[11][0] , \str[12][7] ,
         \str[12][6] , \str[12][5] , \str[12][4] , \str[12][3] , \str[12][2] ,
         \str[12][1] , \str[12][0] , \str[13][7] , \str[13][6] , \str[13][5] ,
         \str[13][4] , \str[13][3] , \str[13][2] , \str[13][1] , \str[13][0] ,
         \str[14][7] , \str[14][6] , \str[14][5] , \str[14][4] , \str[14][3] ,
         \str[14][2] , \str[14][1] , \str[14][0] , \str[15][7] , \str[15][6] ,
         \str[15][5] , \str[15][4] , \str[15][3] , \str[15][2] , \str[15][1] ,
         \str[15][0] , \str[16][7] , \str[16][6] , \str[16][5] , \str[16][4] ,
         \str[16][3] , \str[16][2] , \str[16][1] , \str[16][0] , \str[17][7] ,
         \str[17][6] , \str[17][5] , \str[17][4] , \str[17][3] , \str[17][2] ,
         \str[17][1] , \str[17][0] , \str[18][7] , \str[18][6] , \str[18][5] ,
         \str[18][4] , \str[18][3] , \str[18][2] , \str[18][1] , \str[18][0] ,
         \str[19][7] , \str[19][6] , \str[19][5] , \str[19][4] , \str[19][3] ,
         \str[19][2] , \str[19][1] , \str[19][0] , \str[20][7] , \str[20][6] ,
         \str[20][5] , \str[20][4] , \str[20][3] , \str[20][2] , \str[20][1] ,
         \str[20][0] , \str[21][7] , \str[21][6] , \str[21][5] , \str[21][4] ,
         \str[21][3] , \str[21][2] , \str[21][1] , \str[21][0] , \str[22][7] ,
         \str[22][6] , \str[22][5] , \str[22][4] , \str[22][3] , \str[22][2] ,
         \str[22][1] , \str[22][0] , \str[23][7] , \str[23][6] , \str[23][5] ,
         \str[23][4] , \str[23][3] , \str[23][2] , \str[23][1] , \str[23][0] ,
         \str[24][7] , \str[24][6] , \str[24][5] , \str[24][4] , \str[24][3] ,
         \str[24][2] , \str[24][1] , \str[24][0] , \str[25][7] , \str[25][6] ,
         \str[25][5] , \str[25][4] , \str[25][3] , \str[25][2] , \str[25][1] ,
         \str[25][0] , \str[26][7] , \str[26][6] , \str[26][5] , \str[26][4] ,
         \str[26][3] , \str[26][2] , \str[26][1] , \str[26][0] , \str[27][7] ,
         \str[27][6] , \str[27][5] , \str[27][4] , \str[27][3] , \str[27][2] ,
         \str[27][1] , \str[27][0] , \str[28][7] , \str[28][6] , \str[28][5] ,
         \str[28][4] , \str[28][3] , \str[28][2] , \str[28][1] , \str[28][0] ,
         \str[29][7] , \str[29][6] , \str[29][5] , \str[29][4] , \str[29][3] ,
         \str[29][2] , \str[29][1] , \str[29][0] , \str[30][7] , \str[30][6] ,
         \str[30][5] , \str[30][4] , \str[30][3] , \str[30][2] , \str[30][1] ,
         \str[30][0] , \str[31][7] , \str[31][6] , \str[31][5] , \str[31][4] ,
         \str[31][3] , \str[31][2] , \str[31][1] , \str[31][0] , \str[32][7] ,
         \str[32][6] , \str[32][5] , \str[32][4] , \str[32][3] , \str[32][2] ,
         \str[32][1] , \str[32][0] , \next_state[0] , DOLLOR_flag, N526, N527,
         N528, N529, N530, \first_index[5] , STAR_flag, N654, N655, N656, N657,
         N738, N739, N740, N741, N834, N836, N837, N838, N845, N847, N848,
         N849, N857, N858, N859, N860, N861, N864, N868, N869, N870, N871,
         N872, N880, N881, N882, N883, N885, N886, N887, N888, N889, N890,
         N898, N899, N900, N901, N902, n96, n97, n98, n99, n100, n104, n110,
         n114, n115, n120, n121, n122, n125, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n385,
         n386, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n819, n820,
         n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, n831,
         n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n886,
         n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, n897,
         n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, n996,
         n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016,
         n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026,
         n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036,
         n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046,
         n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056,
         n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066,
         n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076,
         n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086,
         n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096,
         n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106,
         n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116,
         n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126,
         n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136,
         n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146,
         n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156,
         n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166,
         n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176,
         n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186,
         n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196,
         n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206,
         n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216,
         n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226,
         n1227, n1228, n1229, n1230, n1231, n1992, n1993, n1994, n1995, n1998,
         n1999, n2001, n2003, n2005, n2007, n2009, n2010, n2011, n2012, n2013,
         n2014, n2015, n2016, n2017, n2018, n2019, n2020, n2021, n2022, n2023,
         n2024, n2025, n2026, n2027, n2028, n2029, n2030, n2031, n2032, n2033,
         n2034, n2035, n2036, n2037, n2038, n2039, n2040, n2041, n2042, n2043,
         n2044, n2045, n2046, n2047, n2048, n2049, n2050, n2051, n2052, n2053,
         n2054, n2055, n2056, n2057, n2058, n2059, n2060, n2061, n2062, n2063,
         n2064, n2065, n2066, n2067, n2068, n2069, n2070, n2071, n2072, n2073,
         n2074, n2075, n2076, n2077, n2078, n2079, n2080, n2081, n2082, n2083,
         n2084, n2085, n2086, n2087, n2088, n2089, n2090, n2091, n2092, n2093,
         n2094, n2095, n2096, n2097, n2098, n2099, n2100, n2101, n2102, n2103,
         n2104, n2105, n2106, n2107, n2108, n2109, n2110, n2111, n2112, n2113,
         n2114, n2115, n2116, n2117, n2118, n2119, n2120, n2121, n2122, n2123,
         n2124, n2125, n2126, n2127, n2128, n2129, n2130, n2131, n2132, n2133,
         n2134, n2135, n2136, n2137, n2138, n2139, n2140, n2141, n2142, n2143,
         n2144, n2145, n2146, n2147, n2148, n2149, n2150, n2151, n2152, n2153,
         n2154, n2155, n2156, n2157, n2158, n2159, n2160, n2161, n2162, n2163,
         n2164, n2165, n2166, n2167, n2168, n2169, n2170, n2171, n2172, n2173,
         n2174, n2175, n2176, n2177, n2178, n2179, n2180, n2181, n2182, n2183,
         n2184, n2185, n2186, n2187, n2188, n2189, n2190, n2191, n2192, n2193,
         n2194, n2195, n2196, n2197, n2198, n2199, n2200, n2201, n2202, n2203,
         n2204, n2205, n2206, n2207, n2208, n2209, n2210, n2211, n2212, n2213,
         n2214, n2215, n2216, n2217, n2218, n2219, n2220, n2221, n2222, n2223,
         n2224, n2225, n2226, n2227, n2228, n2229, n2230, n2231, n2232, n2233,
         n2234, n2235, n2236, n2237, n2238, n2239, n2240, n2241, n2242, n2243,
         n2244, n2245, n2246, n2247, n2248, n2249, n2250, n2251, n2252, n2253,
         n2254, n2255, n2256, n2257, n2258, n2259, n2260, n2261, n2262, n2263,
         n2264, n2265, n2266, n2267, n2268, n2269, n2270, n2271, n2272, n2273,
         n2274, n2275, n2276, n2277, n2278, n2279, n2280, n2281, n2282, n2283,
         n2284, n2285, n2286, n2287, n2288, n2289, n2290, n2291, n2292, n2293,
         n2294, n2295, n2296, n2297, n2298, n2299, n2300, n2301, n2302, n2303,
         n2304, n2305, n2306, n2307, n2308, n2309, n2310, n2311, n2312, n2313,
         n2314, n2315, n2316, n2317, n2318, n2319, n2320, n2321, n2322, n2323,
         n2324, n2325, n2326, n2327, n2328, n2329, n2330, n2331, n2332, n2333,
         n2334, n2335, n2336, n2337, n2338, n2339, n2340, n2341, n2342, n2343,
         n2344, n2345, n2346, n2347, n2348, n2349, n2350, n2351, n2352, n2353,
         n2354, n2355, n2356, n2357, n2358, n2359, n2360, n2361, n2362, n2363,
         n2364, n2365, n2366, n2367, n2368, n2369, n2370, n2371, n2372, n2373,
         n2374, n2375, n2376, n2377, n2378, n2379, n2380, n2381, n2382, n2383,
         n2384, n2385, n2386, n2387, n2388, n2389, n2390, n2391, n2392, n2393,
         n2394, n2395, n2396, n2397, n2398, n2399, n2400, n2401;
  wire   [5:0] str_compare_count;
  wire   [7:0] str_now;
  wire   [4:0] pat_compare_count;
  wire   [5:0] state;
  wire   [4:0] pat_count;
  wire   [5:0] str_count;
  wire   [4:0] compare_count;
  wire   [4:0] star_pat_location;
  wire   [5:0] star_str_location;
  wire   [4:1] \add_115/carry ;
  wire   [4:1] \add_113/carry ;
  wire   [4:2] \add_100/carry ;
  wire   [5:2] \r546/carry ;
  wire   [5:2] \r545/carry ;
  wire   [4:2] \r544/carry ;
  wire   [4:2] \r543/carry ;
  wire   [5:2] \r540/carry ;
  wire   [5:2] \r534/carry ;

  EDFFX1 \star_pat_location_reg[0]  ( .D(N868), .E(n437), .CK(clk), .Q(
        star_pat_location[0]) );
  EDFFX1 \star_pat_location_reg[1]  ( .D(N869), .E(n437), .CK(clk), .Q(
        star_pat_location[1]) );
  EDFFX1 \star_pat_location_reg[2]  ( .D(N870), .E(n437), .CK(clk), .Q(
        star_pat_location[2]) );
  EDFFX1 \star_pat_location_reg[3]  ( .D(N871), .E(n437), .CK(clk), .Q(
        star_pat_location[3]) );
  EDFFX1 \star_pat_location_reg[4]  ( .D(N872), .E(n437), .CK(clk), .Q(
        star_pat_location[4]) );
  DFFRX1 \first_index_reg[5]  ( .D(n868), .CK(clk), .RN(n2273), .Q(
        \first_index[5] ) );
  DFFRX1 DOLLOR_flag_reg ( .D(n1230), .CK(clk), .RN(n2243), .Q(DOLLOR_flag) );
  DFFRX1 STAR_flag_reg ( .D(n2384), .CK(clk), .RN(n2273), .Q(STAR_flag) );
  DFFRX1 \compare_count_reg[0]  ( .D(n872), .CK(clk), .RN(n2244), .Q(N845), 
        .QN(n100) );
  DFFRX1 \compare_count_reg[1]  ( .D(n869), .CK(clk), .RN(n2244), .Q(
        compare_count[1]), .QN(n99) );
  DFFRX1 \compare_count_reg[2]  ( .D(n870), .CK(clk), .RN(n2243), .Q(
        compare_count[2]), .QN(n98) );
  DFFRX1 \compare_count_reg[4]  ( .D(n883), .CK(clk), .RN(n2273), .Q(
        compare_count[4]), .QN(n96) );
  DFFRX1 \compare_count_reg[3]  ( .D(n871), .CK(clk), .RN(n2244), .Q(
        compare_count[3]), .QN(n97) );
  DFFX1 \str_reg[32][6]  ( .D(n1217), .CK(clk), .Q(\str[32][6] ), .QN(n294) );
  DFFX1 \str_reg[32][5]  ( .D(n1218), .CK(clk), .Q(\str[32][5] ), .QN(n295) );
  DFFX1 \str_reg[32][4]  ( .D(n1219), .CK(clk), .Q(\str[32][4] ), .QN(n296) );
  DFFX1 \str_reg[32][3]  ( .D(n1220), .CK(clk), .Q(\str[32][3] ), .QN(n297) );
  DFFX1 \str_reg[32][7]  ( .D(n1223), .CK(clk), .Q(\str[32][7] ), .QN(n293) );
  DFFRX1 \pat_reg[0][7]  ( .D(n884), .CK(clk), .RN(n2247), .QN(n304) );
  DFFRX1 \pat_reg[0][6]  ( .D(n885), .CK(clk), .RN(n2247), .QN(n305) );
  DFFRX1 \pat_reg[0][4]  ( .D(n887), .CK(clk), .RN(n2247), .QN(n307) );
  DFFRX1 \pat_reg[0][0]  ( .D(n891), .CK(clk), .RN(n2247), .QN(n311) );
  DFFQX1 \str_reg[32][0]  ( .D(n1224), .CK(clk), .Q(\str[32][0] ) );
  DFFRX1 \pat_reg[5][6]  ( .D(n902), .CK(clk), .RN(n2249), .QN(n345) );
  DFFRX1 \pat_reg[5][4]  ( .D(n918), .CK(clk), .RN(n2249), .QN(n347) );
  DFFQX1 \star_str_location_reg[5]  ( .D(n2328), .CK(clk), .Q(
        star_str_location[5]) );
  DFFRX1 \pat_reg[3][6]  ( .D(n904), .CK(clk), .RN(n2249), .QN(n329) );
  DFFRX1 \pat_reg[3][4]  ( .D(n920), .CK(clk), .RN(n2248), .QN(n331) );
  DFFRX1 \pat_reg[1][6]  ( .D(n906), .CK(clk), .RN(n2248), .QN(n313) );
  DFFRX1 \pat_reg[1][4]  ( .D(n922), .CK(clk), .RN(n2248), .QN(n315) );
  DFFRX1 \pat_reg[1][2]  ( .D(n938), .CK(clk), .RN(n2248), .QN(n317) );
  DFFRX1 \pat_reg[1][0]  ( .D(n954), .CK(clk), .RN(n2247), .QN(n319) );
  DFFRX1 \pat_reg[4][6]  ( .D(n903), .CK(clk), .RN(n2247), .QN(n337) );
  DFFRX1 \pat_reg[4][4]  ( .D(n919), .CK(clk), .RN(n2246), .QN(n339) );
  DFFRX1 \pat_reg[2][6]  ( .D(n905), .CK(clk), .RN(n2245), .QN(n321) );
  DFFRX1 \pat_reg[2][4]  ( .D(n921), .CK(clk), .RN(n2244), .QN(n323) );
  DFFRX1 \pat_reg[2][0]  ( .D(n953), .CK(clk), .RN(n2244), .QN(n327) );
  DFFRX1 \pat_reg[4][7]  ( .D(n895), .CK(clk), .RN(n2247), .QN(n336) );
  DFFRX1 \pat_reg[2][7]  ( .D(n897), .CK(clk), .RN(n2245), .QN(n320) );
  DFFRX1 \pat_reg[3][7]  ( .D(n896), .CK(clk), .RN(n2249), .QN(n328) );
  DFFRX1 \pat_reg[1][7]  ( .D(n898), .CK(clk), .RN(n2248), .QN(n312) );
  DFFRX1 \pat_reg[8][7]  ( .D(n899), .CK(clk), .RN(n2246), .QN(n368) );
  DFFRX1 \pat_reg[8][6]  ( .D(n907), .CK(clk), .RN(n2246), .QN(n369) );
  DFFRX1 \pat_reg[8][4]  ( .D(n923), .CK(clk), .RN(n2246), .QN(n371) );
  DFFRX1 \str_reg[1][5]  ( .D(n1060), .CK(clk), .RN(n2253), .Q(\str[1][5] ), 
        .QN(n140) );
  DFFRX1 \pat_reg[0][5]  ( .D(n886), .CK(clk), .RN(n2247), .QN(n306) );
  DFFRX1 \pat_reg[0][3]  ( .D(n888), .CK(clk), .RN(n2247), .QN(n308) );
  DFFRX1 \pat_reg[0][2]  ( .D(n889), .CK(clk), .RN(n2247), .QN(n309) );
  DFFRX1 \pat_reg[0][1]  ( .D(n890), .CK(clk), .RN(n2247), .QN(n310) );
  DFFRX1 \pat_reg[7][6]  ( .D(n900), .CK(clk), .RN(n2250), .QN(n361) );
  DFFRX1 \pat_reg[7][5]  ( .D(n908), .CK(clk), .RN(n2250), .QN(n362) );
  DFFRX1 \pat_reg[7][4]  ( .D(n916), .CK(clk), .RN(n2250), .QN(n363) );
  DFFRX1 \pat_reg[7][3]  ( .D(n924), .CK(clk), .RN(n2250), .QN(n364) );
  DFFRX1 \pat_reg[7][2]  ( .D(n932), .CK(clk), .RN(n2250), .QN(n365) );
  DFFRX1 \pat_reg[7][1]  ( .D(n940), .CK(clk), .RN(n2250), .QN(n366) );
  DFFRX1 \pat_reg[7][0]  ( .D(n948), .CK(clk), .RN(n2249), .QN(n367) );
  DFFRX1 \pat_reg[7][7]  ( .D(n892), .CK(clk), .RN(n2250), .QN(n360) );
  DFFRX1 \pat_reg[6][6]  ( .D(n901), .CK(clk), .RN(n2245), .QN(n353) );
  DFFRX1 \pat_reg[6][5]  ( .D(n909), .CK(clk), .RN(n2245), .QN(n354) );
  DFFRX1 \pat_reg[6][4]  ( .D(n917), .CK(clk), .RN(n2245), .QN(n355) );
  DFFRX1 \pat_reg[6][3]  ( .D(n925), .CK(clk), .RN(n2245), .QN(n356) );
  DFFRX1 \pat_reg[6][2]  ( .D(n933), .CK(clk), .RN(n2245), .QN(n357) );
  DFFRX1 \pat_reg[6][1]  ( .D(n941), .CK(clk), .RN(n2245), .QN(n358) );
  DFFRX1 \pat_reg[6][0]  ( .D(n949), .CK(clk), .RN(n2245), .QN(n359) );
  DFFQX1 \str_reg[32][1]  ( .D(n1222), .CK(clk), .Q(\str[32][1] ) );
  DFFRX1 \pat_reg[5][5]  ( .D(n910), .CK(clk), .RN(n2249), .QN(n346) );
  DFFRX1 \pat_reg[5][3]  ( .D(n926), .CK(clk), .RN(n2249), .QN(n348) );
  DFFRX1 \pat_reg[5][2]  ( .D(n934), .CK(clk), .RN(n2249), .QN(n349) );
  DFFRX1 \pat_reg[5][1]  ( .D(n942), .CK(clk), .RN(n2249), .QN(n350) );
  DFFRX1 \pat_reg[5][0]  ( .D(n950), .CK(clk), .RN(n2249), .QN(n351) );
  DFFRX1 \pat_reg[6][7]  ( .D(n893), .CK(clk), .RN(n2245), .QN(n352) );
  DFFRX1 \pat_reg[5][7]  ( .D(n894), .CK(clk), .RN(n2249), .QN(n344) );
  DFFQX1 \star_str_location_reg[0]  ( .D(n2327), .CK(clk), .Q(
        star_str_location[0]) );
  DFFRX1 \pat_reg[3][5]  ( .D(n912), .CK(clk), .RN(n2249), .QN(n330) );
  DFFRX1 \pat_reg[3][3]  ( .D(n928), .CK(clk), .RN(n2248), .QN(n332) );
  DFFRX1 \pat_reg[3][2]  ( .D(n936), .CK(clk), .RN(n2248), .QN(n333) );
  DFFRX1 \pat_reg[3][1]  ( .D(n944), .CK(clk), .RN(n2248), .QN(n334) );
  DFFRX1 \pat_reg[3][0]  ( .D(n952), .CK(clk), .RN(n2248), .QN(n335) );
  DFFRX1 \pat_reg[1][5]  ( .D(n914), .CK(clk), .RN(n2248), .QN(n314) );
  DFFRX1 \pat_reg[1][3]  ( .D(n930), .CK(clk), .RN(n2248), .QN(n316) );
  DFFRX1 \pat_reg[1][1]  ( .D(n946), .CK(clk), .RN(n2248), .QN(n318) );
  DFFRX1 \pat_reg[4][5]  ( .D(n911), .CK(clk), .RN(n2247), .QN(n338) );
  DFFRX1 \pat_reg[4][3]  ( .D(n927), .CK(clk), .RN(n2246), .QN(n340) );
  DFFRX1 \pat_reg[4][2]  ( .D(n935), .CK(clk), .RN(n2246), .QN(n341) );
  DFFRX1 \pat_reg[4][1]  ( .D(n943), .CK(clk), .RN(n2246), .QN(n342) );
  DFFRX1 \pat_reg[4][0]  ( .D(n951), .CK(clk), .RN(n2246), .QN(n343) );
  DFFRX1 \pat_reg[2][5]  ( .D(n913), .CK(clk), .RN(n2245), .QN(n322) );
  DFFRX1 \pat_reg[2][3]  ( .D(n929), .CK(clk), .RN(n2244), .QN(n324) );
  DFFRX1 \pat_reg[2][2]  ( .D(n937), .CK(clk), .RN(n2244), .QN(n325) );
  DFFRX1 \pat_reg[2][1]  ( .D(n945), .CK(clk), .RN(n2244), .QN(n326) );
  DFFRX1 \pat_reg[8][5]  ( .D(n915), .CK(clk), .RN(n2246), .QN(n370) );
  DFFRX1 \pat_reg[8][3]  ( .D(n931), .CK(clk), .RN(n2246), .QN(n372) );
  DFFRX1 \pat_reg[8][2]  ( .D(n939), .CK(clk), .RN(n2246), .QN(n373) );
  DFFRX1 \pat_reg[8][1]  ( .D(n947), .CK(clk), .RN(n2246), .QN(n374) );
  DFFRX1 \pat_reg[8][0]  ( .D(n955), .CK(clk), .RN(n2245), .QN(n375) );
  DFFQX1 \star_str_location_reg[1]  ( .D(n2323), .CK(clk), .Q(
        star_str_location[1]) );
  DFFQX1 \star_str_location_reg[2]  ( .D(n2324), .CK(clk), .Q(
        star_str_location[2]) );
  DFFQX1 \star_str_location_reg[4]  ( .D(n2326), .CK(clk), .Q(
        star_str_location[4]) );
  DFFRX1 \str_reg[28][7]  ( .D(n971), .CK(clk), .RN(n2269), .Q(\str[28][7] ), 
        .QN(n273) );
  DFFRX1 \str_reg[28][6]  ( .D(n1002), .CK(clk), .RN(n2269), .Q(\str[28][6] ), 
        .QN(n274) );
  DFFRX1 \str_reg[28][5]  ( .D(n1033), .CK(clk), .RN(n2269), .Q(\str[28][5] ), 
        .QN(n275) );
  DFFRX1 \str_reg[28][4]  ( .D(n1064), .CK(clk), .RN(n2269), .Q(\str[28][4] ), 
        .QN(n276) );
  DFFRX1 \str_reg[28][3]  ( .D(n1095), .CK(clk), .RN(n2269), .Q(\str[28][3] ), 
        .QN(n277) );
  DFFRX1 \str_reg[20][7]  ( .D(n979), .CK(clk), .RN(n2268), .Q(\str[20][7] ), 
        .QN(n233) );
  DFFRX1 \str_reg[20][6]  ( .D(n1010), .CK(clk), .RN(n2268), .Q(\str[20][6] ), 
        .QN(n234) );
  DFFRX1 \str_reg[20][5]  ( .D(n1041), .CK(clk), .RN(n2268), .Q(\str[20][5] ), 
        .QN(n235) );
  DFFRX1 \str_reg[20][4]  ( .D(n1072), .CK(clk), .RN(n2268), .Q(\str[20][4] ), 
        .QN(n236) );
  DFFRX1 \str_reg[20][3]  ( .D(n1103), .CK(clk), .RN(n2268), .Q(\str[20][3] ), 
        .QN(n237) );
  DFFRX1 \str_reg[12][7]  ( .D(n987), .CK(clk), .RN(n2268), .Q(\str[12][7] ), 
        .QN(n193) );
  DFFRX1 \str_reg[12][6]  ( .D(n1018), .CK(clk), .RN(n2267), .Q(\str[12][6] ), 
        .QN(n194) );
  DFFRX1 \str_reg[12][5]  ( .D(n1049), .CK(clk), .RN(n2267), .Q(\str[12][5] ), 
        .QN(n195) );
  DFFRX1 \str_reg[12][4]  ( .D(n1080), .CK(clk), .RN(n2267), .Q(\str[12][4] ), 
        .QN(n196) );
  DFFRX1 \str_reg[12][3]  ( .D(n1111), .CK(clk), .RN(n2267), .Q(\str[12][3] ), 
        .QN(n197) );
  DFFRX1 \str_reg[4][7]  ( .D(n995), .CK(clk), .RN(n2267), .Q(\str[4][7] ), 
        .QN(n153) );
  DFFRX1 \str_reg[4][6]  ( .D(n1026), .CK(clk), .RN(n2267), .Q(\str[4][6] ), 
        .QN(n154) );
  DFFRX1 \str_reg[4][5]  ( .D(n1057), .CK(clk), .RN(n2267), .Q(\str[4][5] ), 
        .QN(n155) );
  DFFRX1 \str_reg[4][4]  ( .D(n1088), .CK(clk), .RN(n2267), .Q(\str[4][4] ), 
        .QN(n156) );
  DFFRX1 \str_reg[4][3]  ( .D(n1119), .CK(clk), .RN(n2267), .Q(\str[4][3] ), 
        .QN(n157) );
  DFFRX1 \str_reg[0][7]  ( .D(n961), .CK(clk), .RN(n2264), .Q(\str[0][7] ), 
        .QN(n130) );
  DFFRX1 \str_reg[0][6]  ( .D(n962), .CK(clk), .RN(n2264), .Q(\str[0][6] ), 
        .QN(n131) );
  DFFRX1 \str_reg[0][5]  ( .D(n963), .CK(clk), .RN(n2264), .Q(\str[0][5] ), 
        .QN(n132) );
  DFFRX1 \str_reg[0][4]  ( .D(n964), .CK(clk), .RN(n2264), .Q(\str[0][4] ), 
        .QN(n133) );
  DFFRX1 \str_reg[0][3]  ( .D(n965), .CK(clk), .RN(n2263), .Q(\str[0][3] ), 
        .QN(n134) );
  DFFRX1 \str_reg[24][7]  ( .D(n975), .CK(clk), .RN(n2263), .Q(\str[24][7] ), 
        .QN(n253) );
  DFFRX1 \str_reg[24][6]  ( .D(n1006), .CK(clk), .RN(n2263), .Q(\str[24][6] ), 
        .QN(n254) );
  DFFRX1 \str_reg[24][5]  ( .D(n1037), .CK(clk), .RN(n2263), .Q(\str[24][5] ), 
        .QN(n255) );
  DFFRX1 \str_reg[24][4]  ( .D(n1068), .CK(clk), .RN(n2263), .Q(\str[24][4] ), 
        .QN(n256) );
  DFFRX1 \str_reg[24][3]  ( .D(n1099), .CK(clk), .RN(n2263), .Q(\str[24][3] ), 
        .QN(n257) );
  DFFRX1 \str_reg[16][7]  ( .D(n983), .CK(clk), .RN(n2262), .Q(\str[16][7] ), 
        .QN(n213) );
  DFFRX1 \str_reg[16][6]  ( .D(n1014), .CK(clk), .RN(n2262), .Q(\str[16][6] ), 
        .QN(n214) );
  DFFRX1 \str_reg[16][5]  ( .D(n1045), .CK(clk), .RN(n2262), .Q(\str[16][5] ), 
        .QN(n215) );
  DFFRX1 \str_reg[16][4]  ( .D(n1076), .CK(clk), .RN(n2262), .Q(\str[16][4] ), 
        .QN(n216) );
  DFFRX1 \str_reg[16][3]  ( .D(n1107), .CK(clk), .RN(n2262), .Q(\str[16][3] ), 
        .QN(n217) );
  DFFRX1 \str_reg[8][7]  ( .D(n991), .CK(clk), .RN(n2262), .Q(\str[8][7] ), 
        .QN(n173) );
  DFFRX1 \str_reg[8][6]  ( .D(n1022), .CK(clk), .RN(n2261), .Q(\str[8][6] ), 
        .QN(n174) );
  DFFRX1 \str_reg[8][5]  ( .D(n1053), .CK(clk), .RN(n2261), .Q(\str[8][5] ), 
        .QN(n175) );
  DFFRX1 \str_reg[8][4]  ( .D(n1084), .CK(clk), .RN(n2261), .Q(\str[8][4] ), 
        .QN(n176) );
  DFFRX1 \str_reg[8][3]  ( .D(n1115), .CK(clk), .RN(n2261), .Q(\str[8][3] ), 
        .QN(n177) );
  DFFRX1 \str_reg[30][7]  ( .D(n969), .CK(clk), .RN(n2272), .Q(\str[30][7] ), 
        .QN(n283) );
  DFFRX1 \str_reg[30][6]  ( .D(n1000), .CK(clk), .RN(n2271), .Q(\str[30][6] ), 
        .QN(n284) );
  DFFRX1 \str_reg[30][5]  ( .D(n1031), .CK(clk), .RN(n2271), .Q(\str[30][5] ), 
        .QN(n285) );
  DFFRX1 \str_reg[30][4]  ( .D(n1062), .CK(clk), .RN(n2271), .Q(\str[30][4] ), 
        .QN(n286) );
  DFFRX1 \str_reg[30][3]  ( .D(n1093), .CK(clk), .RN(n2271), .Q(\str[30][3] ), 
        .QN(n287) );
  DFFRX1 \str_reg[22][7]  ( .D(n977), .CK(clk), .RN(n2271), .Q(\str[22][7] ), 
        .QN(n243) );
  DFFRX1 \str_reg[22][6]  ( .D(n1008), .CK(clk), .RN(n2271), .Q(\str[22][6] ), 
        .QN(n244) );
  DFFRX1 \str_reg[22][5]  ( .D(n1039), .CK(clk), .RN(n2271), .Q(\str[22][5] ), 
        .QN(n245) );
  DFFRX1 \str_reg[22][4]  ( .D(n1070), .CK(clk), .RN(n2271), .Q(\str[22][4] ), 
        .QN(n246) );
  DFFRX1 \str_reg[22][3]  ( .D(n1101), .CK(clk), .RN(n2271), .Q(\str[22][3] ), 
        .QN(n247) );
  DFFRX1 \str_reg[14][7]  ( .D(n985), .CK(clk), .RN(n2270), .Q(\str[14][7] ), 
        .QN(n203) );
  DFFRX1 \str_reg[14][6]  ( .D(n1016), .CK(clk), .RN(n2270), .Q(\str[14][6] ), 
        .QN(n204) );
  DFFRX1 \str_reg[14][5]  ( .D(n1047), .CK(clk), .RN(n2270), .Q(\str[14][5] ), 
        .QN(n205) );
  DFFRX1 \str_reg[14][4]  ( .D(n1078), .CK(clk), .RN(n2270), .Q(\str[14][4] ), 
        .QN(n206) );
  DFFRX1 \str_reg[14][3]  ( .D(n1109), .CK(clk), .RN(n2270), .Q(\str[14][3] ), 
        .QN(n207) );
  DFFRX1 \str_reg[6][7]  ( .D(n993), .CK(clk), .RN(n2270), .Q(\str[6][7] ), 
        .QN(n163) );
  DFFRX1 \str_reg[6][6]  ( .D(n1024), .CK(clk), .RN(n2269), .Q(\str[6][6] ), 
        .QN(n164) );
  DFFRX1 \str_reg[6][5]  ( .D(n1055), .CK(clk), .RN(n2269), .Q(\str[6][5] ), 
        .QN(n165) );
  DFFRX1 \str_reg[6][4]  ( .D(n1086), .CK(clk), .RN(n2269), .Q(\str[6][4] ), 
        .QN(n166) );
  DFFRX1 \str_reg[6][3]  ( .D(n1117), .CK(clk), .RN(n2269), .Q(\str[6][3] ), 
        .QN(n167) );
  DFFRX1 \str_reg[26][7]  ( .D(n973), .CK(clk), .RN(n2266), .Q(\str[26][7] ), 
        .QN(n263) );
  DFFRX1 \str_reg[26][6]  ( .D(n1004), .CK(clk), .RN(n2266), .Q(\str[26][6] ), 
        .QN(n264) );
  DFFRX1 \str_reg[26][5]  ( .D(n1035), .CK(clk), .RN(n2266), .Q(\str[26][5] ), 
        .QN(n265) );
  DFFRX1 \str_reg[26][4]  ( .D(n1066), .CK(clk), .RN(n2266), .Q(\str[26][4] ), 
        .QN(n266) );
  DFFRX1 \str_reg[26][3]  ( .D(n1097), .CK(clk), .RN(n2266), .Q(\str[26][3] ), 
        .QN(n267) );
  DFFRX1 \str_reg[18][7]  ( .D(n981), .CK(clk), .RN(n2266), .Q(\str[18][7] ), 
        .QN(n223) );
  DFFRX1 \str_reg[18][6]  ( .D(n1012), .CK(clk), .RN(n2265), .Q(\str[18][6] ), 
        .QN(n224) );
  DFFRX1 \str_reg[18][5]  ( .D(n1043), .CK(clk), .RN(n2265), .Q(\str[18][5] ), 
        .QN(n225) );
  DFFRX1 \str_reg[18][4]  ( .D(n1074), .CK(clk), .RN(n2265), .Q(\str[18][4] ), 
        .QN(n226) );
  DFFRX1 \str_reg[18][3]  ( .D(n1105), .CK(clk), .RN(n2265), .Q(\str[18][3] ), 
        .QN(n227) );
  DFFRX1 \str_reg[10][7]  ( .D(n989), .CK(clk), .RN(n2265), .Q(\str[10][7] ), 
        .QN(n183) );
  DFFRX1 \str_reg[10][6]  ( .D(n1020), .CK(clk), .RN(n2265), .Q(\str[10][6] ), 
        .QN(n184) );
  DFFRX1 \str_reg[10][5]  ( .D(n1051), .CK(clk), .RN(n2265), .Q(\str[10][5] ), 
        .QN(n185) );
  DFFRX1 \str_reg[10][4]  ( .D(n1082), .CK(clk), .RN(n2265), .Q(\str[10][4] ), 
        .QN(n186) );
  DFFRX1 \str_reg[10][3]  ( .D(n1113), .CK(clk), .RN(n2265), .Q(\str[10][3] ), 
        .QN(n187) );
  DFFRX1 \str_reg[2][7]  ( .D(n997), .CK(clk), .RN(n2264), .Q(\str[2][7] ), 
        .QN(n143) );
  DFFRX1 \str_reg[2][6]  ( .D(n1028), .CK(clk), .RN(n2264), .Q(\str[2][6] ), 
        .QN(n144) );
  DFFRX1 \str_reg[2][5]  ( .D(n1059), .CK(clk), .RN(n2264), .Q(\str[2][5] ), 
        .QN(n145) );
  DFFRX1 \str_reg[2][4]  ( .D(n1090), .CK(clk), .RN(n2264), .Q(\str[2][4] ), 
        .QN(n146) );
  DFFRX1 \str_reg[2][3]  ( .D(n1121), .CK(clk), .RN(n2264), .Q(\str[2][3] ), 
        .QN(n147) );
  DFFRX1 \str_reg[29][7]  ( .D(n970), .CK(clk), .RN(n2261), .Q(\str[29][7] ), 
        .QN(n278) );
  DFFRX1 \str_reg[29][6]  ( .D(n1001), .CK(clk), .RN(n2261), .Q(\str[29][6] ), 
        .QN(n279) );
  DFFRX1 \str_reg[29][5]  ( .D(n1032), .CK(clk), .RN(n2261), .Q(\str[29][5] ), 
        .QN(n280) );
  DFFRX1 \str_reg[29][4]  ( .D(n1063), .CK(clk), .RN(n2261), .Q(\str[29][4] ), 
        .QN(n281) );
  DFFRX1 \str_reg[29][3]  ( .D(n1094), .CK(clk), .RN(n2261), .Q(\str[29][3] ), 
        .QN(n282) );
  DFFRX1 \str_reg[21][7]  ( .D(n978), .CK(clk), .RN(n2260), .Q(\str[21][7] ), 
        .QN(n238) );
  DFFRX1 \str_reg[21][6]  ( .D(n1009), .CK(clk), .RN(n2260), .Q(\str[21][6] ), 
        .QN(n239) );
  DFFRX1 \str_reg[21][5]  ( .D(n1040), .CK(clk), .RN(n2260), .Q(\str[21][5] ), 
        .QN(n240) );
  DFFRX1 \str_reg[21][4]  ( .D(n1071), .CK(clk), .RN(n2260), .Q(\str[21][4] ), 
        .QN(n241) );
  DFFRX1 \str_reg[21][3]  ( .D(n1102), .CK(clk), .RN(n2260), .Q(\str[21][3] ), 
        .QN(n242) );
  DFFRX1 \str_reg[13][7]  ( .D(n986), .CK(clk), .RN(n2260), .Q(\str[13][7] ), 
        .QN(n198) );
  DFFRX1 \str_reg[13][6]  ( .D(n1017), .CK(clk), .RN(n2259), .Q(\str[13][6] ), 
        .QN(n199) );
  DFFRX1 \str_reg[13][5]  ( .D(n1048), .CK(clk), .RN(n2259), .Q(\str[13][5] ), 
        .QN(n200) );
  DFFRX1 \str_reg[13][4]  ( .D(n1079), .CK(clk), .RN(n2259), .Q(\str[13][4] ), 
        .QN(n201) );
  DFFRX1 \str_reg[13][3]  ( .D(n1110), .CK(clk), .RN(n2259), .Q(\str[13][3] ), 
        .QN(n202) );
  DFFRX1 \str_reg[5][7]  ( .D(n994), .CK(clk), .RN(n2259), .Q(\str[5][7] ), 
        .QN(n158) );
  DFFRX1 \str_reg[5][6]  ( .D(n1025), .CK(clk), .RN(n2259), .Q(\str[5][6] ), 
        .QN(n159) );
  DFFRX1 \str_reg[5][5]  ( .D(n1056), .CK(clk), .RN(n2259), .Q(\str[5][5] ), 
        .QN(n160) );
  DFFRX1 \str_reg[5][4]  ( .D(n1087), .CK(clk), .RN(n2259), .Q(\str[5][4] ), 
        .QN(n161) );
  DFFRX1 \str_reg[5][3]  ( .D(n1118), .CK(clk), .RN(n2259), .Q(\str[5][3] ), 
        .QN(n162) );
  DFFRX1 \str_reg[25][7]  ( .D(n974), .CK(clk), .RN(n2256), .Q(\str[25][7] ), 
        .QN(n258) );
  DFFRX1 \str_reg[25][6]  ( .D(n1005), .CK(clk), .RN(n2255), .Q(\str[25][6] ), 
        .QN(n259) );
  DFFRX1 \str_reg[25][5]  ( .D(n1036), .CK(clk), .RN(n2255), .Q(\str[25][5] ), 
        .QN(n260) );
  DFFRX1 \str_reg[25][4]  ( .D(n1067), .CK(clk), .RN(n2255), .Q(\str[25][4] ), 
        .QN(n261) );
  DFFRX1 \str_reg[25][3]  ( .D(n1098), .CK(clk), .RN(n2255), .Q(\str[25][3] ), 
        .QN(n262) );
  DFFRX1 \str_reg[17][7]  ( .D(n982), .CK(clk), .RN(n2255), .Q(\str[17][7] ), 
        .QN(n218) );
  DFFRX1 \str_reg[17][6]  ( .D(n1013), .CK(clk), .RN(n2255), .Q(\str[17][6] ), 
        .QN(n219) );
  DFFRX1 \str_reg[17][5]  ( .D(n1044), .CK(clk), .RN(n2255), .Q(\str[17][5] ), 
        .QN(n220) );
  DFFRX1 \str_reg[17][4]  ( .D(n1075), .CK(clk), .RN(n2255), .Q(\str[17][4] ), 
        .QN(n221) );
  DFFRX1 \str_reg[17][3]  ( .D(n1106), .CK(clk), .RN(n2255), .Q(\str[17][3] ), 
        .QN(n222) );
  DFFRX1 \str_reg[9][7]  ( .D(n990), .CK(clk), .RN(n2254), .Q(\str[9][7] ), 
        .QN(n178) );
  DFFRX1 \str_reg[9][6]  ( .D(n1021), .CK(clk), .RN(n2254), .Q(\str[9][6] ), 
        .QN(n179) );
  DFFRX1 \str_reg[9][5]  ( .D(n1052), .CK(clk), .RN(n2254), .Q(\str[9][5] ), 
        .QN(n180) );
  DFFRX1 \str_reg[9][4]  ( .D(n1083), .CK(clk), .RN(n2254), .Q(\str[9][4] ), 
        .QN(n181) );
  DFFRX1 \str_reg[9][3]  ( .D(n1114), .CK(clk), .RN(n2254), .Q(\str[9][3] ), 
        .QN(n182) );
  DFFRX1 \str_reg[1][7]  ( .D(n998), .CK(clk), .RN(n2254), .Q(\str[1][7] ), 
        .QN(n138) );
  DFFRX1 \str_reg[1][6]  ( .D(n1029), .CK(clk), .RN(n2253), .Q(\str[1][6] ), 
        .QN(n139) );
  DFFRX1 \str_reg[1][4]  ( .D(n1091), .CK(clk), .RN(n2253), .Q(\str[1][4] ), 
        .QN(n141) );
  DFFRX1 \str_reg[1][3]  ( .D(n1122), .CK(clk), .RN(n2253), .Q(\str[1][3] ), 
        .QN(n142) );
  DFFRX1 \str_reg[27][7]  ( .D(n972), .CK(clk), .RN(n2258), .Q(\str[27][7] ), 
        .QN(n268) );
  DFFRX1 \str_reg[27][6]  ( .D(n1003), .CK(clk), .RN(n2258), .Q(\str[27][6] ), 
        .QN(n269) );
  DFFRX1 \str_reg[27][5]  ( .D(n1034), .CK(clk), .RN(n2258), .Q(\str[27][5] ), 
        .QN(n270) );
  DFFRX1 \str_reg[27][4]  ( .D(n1065), .CK(clk), .RN(n2258), .Q(\str[27][4] ), 
        .QN(n271) );
  DFFRX1 \str_reg[27][3]  ( .D(n1096), .CK(clk), .RN(n2258), .Q(\str[27][3] ), 
        .QN(n272) );
  DFFRX1 \str_reg[19][7]  ( .D(n980), .CK(clk), .RN(n2258), .Q(\str[19][7] ), 
        .QN(n228) );
  DFFRX1 \str_reg[19][6]  ( .D(n1011), .CK(clk), .RN(n2257), .Q(\str[19][6] ), 
        .QN(n229) );
  DFFRX1 \str_reg[19][5]  ( .D(n1042), .CK(clk), .RN(n2257), .Q(\str[19][5] ), 
        .QN(n230) );
  DFFRX1 \str_reg[19][4]  ( .D(n1073), .CK(clk), .RN(n2257), .Q(\str[19][4] ), 
        .QN(n231) );
  DFFRX1 \str_reg[19][3]  ( .D(n1104), .CK(clk), .RN(n2257), .Q(\str[19][3] ), 
        .QN(n232) );
  DFFRX1 \str_reg[11][7]  ( .D(n988), .CK(clk), .RN(n2257), .Q(\str[11][7] ), 
        .QN(n188) );
  DFFRX1 \str_reg[11][6]  ( .D(n1019), .CK(clk), .RN(n2257), .Q(\str[11][6] ), 
        .QN(n189) );
  DFFRX1 \str_reg[11][5]  ( .D(n1050), .CK(clk), .RN(n2257), .Q(\str[11][5] ), 
        .QN(n190) );
  DFFRX1 \str_reg[11][4]  ( .D(n1081), .CK(clk), .RN(n2257), .Q(\str[11][4] ), 
        .QN(n191) );
  DFFRX1 \str_reg[11][3]  ( .D(n1112), .CK(clk), .RN(n2257), .Q(\str[11][3] ), 
        .QN(n192) );
  DFFRX1 \str_reg[3][7]  ( .D(n996), .CK(clk), .RN(n2256), .Q(\str[3][7] ), 
        .QN(n148) );
  DFFRX1 \str_reg[3][6]  ( .D(n1027), .CK(clk), .RN(n2256), .Q(\str[3][6] ), 
        .QN(n149) );
  DFFRX1 \str_reg[3][5]  ( .D(n1058), .CK(clk), .RN(n2256), .Q(\str[3][5] ), 
        .QN(n150) );
  DFFRX1 \str_reg[3][4]  ( .D(n1089), .CK(clk), .RN(n2256), .Q(\str[3][4] ), 
        .QN(n151) );
  DFFRX1 \str_reg[3][3]  ( .D(n1120), .CK(clk), .RN(n2256), .Q(\str[3][3] ), 
        .QN(n152) );
  DFFRX1 \str_reg[23][7]  ( .D(n976), .CK(clk), .RN(n2253), .Q(\str[23][7] ), 
        .QN(n248) );
  DFFRX1 \str_reg[23][6]  ( .D(n1007), .CK(clk), .RN(n2253), .Q(\str[23][6] ), 
        .QN(n249) );
  DFFRX1 \str_reg[23][5]  ( .D(n1038), .CK(clk), .RN(n2253), .Q(\str[23][5] ), 
        .QN(n250) );
  DFFRX1 \str_reg[23][4]  ( .D(n1069), .CK(clk), .RN(n2253), .Q(\str[23][4] ), 
        .QN(n251) );
  DFFRX1 \str_reg[23][3]  ( .D(n1100), .CK(clk), .RN(n2253), .Q(\str[23][3] ), 
        .QN(n252) );
  DFFRX1 \str_reg[15][7]  ( .D(n984), .CK(clk), .RN(n2252), .Q(\str[15][7] ), 
        .QN(n208) );
  DFFRX1 \str_reg[15][6]  ( .D(n1015), .CK(clk), .RN(n2252), .Q(\str[15][6] ), 
        .QN(n209) );
  DFFRX1 \str_reg[15][5]  ( .D(n1046), .CK(clk), .RN(n2252), .Q(\str[15][5] ), 
        .QN(n210) );
  DFFRX1 \str_reg[15][4]  ( .D(n1077), .CK(clk), .RN(n2252), .Q(\str[15][4] ), 
        .QN(n211) );
  DFFRX1 \str_reg[15][3]  ( .D(n1108), .CK(clk), .RN(n2252), .Q(\str[15][3] ), 
        .QN(n212) );
  DFFRX1 \str_reg[7][7]  ( .D(n992), .CK(clk), .RN(n2252), .Q(\str[7][7] ), 
        .QN(n168) );
  DFFRX1 \str_reg[7][6]  ( .D(n1023), .CK(clk), .RN(n2251), .Q(\str[7][6] ), 
        .QN(n169) );
  DFFRX1 \str_reg[7][5]  ( .D(n1054), .CK(clk), .RN(n2251), .Q(\str[7][5] ), 
        .QN(n170) );
  DFFRX1 \str_reg[7][4]  ( .D(n1085), .CK(clk), .RN(n2251), .Q(\str[7][4] ), 
        .QN(n171) );
  DFFRX1 \str_reg[7][3]  ( .D(n1116), .CK(clk), .RN(n2251), .Q(\str[7][3] ), 
        .QN(n172) );
  DFFRX1 \str_reg[31][7]  ( .D(n999), .CK(clk), .RN(n2251), .Q(\str[31][7] ), 
        .QN(n288) );
  DFFRX1 \str_reg[31][6]  ( .D(n1030), .CK(clk), .RN(n2251), .Q(\str[31][6] ), 
        .QN(n289) );
  DFFRX1 \str_reg[31][5]  ( .D(n1061), .CK(clk), .RN(n2251), .Q(\str[31][5] ), 
        .QN(n290) );
  DFFRX1 \str_reg[31][4]  ( .D(n1092), .CK(clk), .RN(n2251), .Q(\str[31][4] ), 
        .QN(n291) );
  DFFRX1 \str_reg[31][3]  ( .D(n1123), .CK(clk), .RN(n2251), .Q(\str[31][3] ), 
        .QN(n292) );
  DFFRX1 \str_reg[0][0]  ( .D(n968), .CK(clk), .RN(n2263), .Q(\str[0][0] ), 
        .QN(n137) );
  DFFRX1 \str_reg[0][2]  ( .D(n966), .CK(clk), .RN(n2263), .Q(\str[0][2] ), 
        .QN(n135) );
  DFFRX1 \str_reg[0][1]  ( .D(n967), .CK(clk), .RN(n2263), .Q(\str[0][1] ), 
        .QN(n136) );
  DFFRX1 \str_reg[28][0]  ( .D(n1188), .CK(clk), .RN(n2269), .Q(\str[28][0] )
         );
  DFFRX1 \str_reg[20][0]  ( .D(n1196), .CK(clk), .RN(n2268), .Q(\str[20][0] )
         );
  DFFRX1 \str_reg[12][0]  ( .D(n1204), .CK(clk), .RN(n2268), .Q(\str[12][0] )
         );
  DFFRX1 \str_reg[4][0]  ( .D(n1212), .CK(clk), .RN(n2267), .Q(\str[4][0] ) );
  DFFRX1 \str_reg[24][0]  ( .D(n1192), .CK(clk), .RN(n2263), .Q(\str[24][0] )
         );
  DFFRX1 \str_reg[16][0]  ( .D(n1200), .CK(clk), .RN(n2262), .Q(\str[16][0] )
         );
  DFFRX1 \str_reg[8][0]  ( .D(n1208), .CK(clk), .RN(n2262), .Q(\str[8][0] ) );
  DFFRX1 \str_reg[28][2]  ( .D(n1126), .CK(clk), .RN(n2269), .Q(\str[28][2] )
         );
  DFFRX1 \str_reg[20][2]  ( .D(n1134), .CK(clk), .RN(n2268), .Q(\str[20][2] )
         );
  DFFRX1 \str_reg[12][2]  ( .D(n1142), .CK(clk), .RN(n2268), .Q(\str[12][2] )
         );
  DFFRX1 \str_reg[4][2]  ( .D(n1150), .CK(clk), .RN(n2267), .Q(\str[4][2] ) );
  DFFRX1 \str_reg[24][2]  ( .D(n1130), .CK(clk), .RN(n2263), .Q(\str[24][2] )
         );
  DFFRX1 \str_reg[16][2]  ( .D(n1138), .CK(clk), .RN(n2262), .Q(\str[16][2] )
         );
  DFFRX1 \str_reg[8][2]  ( .D(n1146), .CK(clk), .RN(n2262), .Q(\str[8][2] ) );
  DFFRX1 \str_reg[28][1]  ( .D(n1157), .CK(clk), .RN(n2269), .Q(\str[28][1] )
         );
  DFFRX1 \str_reg[20][1]  ( .D(n1165), .CK(clk), .RN(n2268), .Q(\str[20][1] )
         );
  DFFRX1 \str_reg[12][1]  ( .D(n1173), .CK(clk), .RN(n2268), .Q(\str[12][1] )
         );
  DFFRX1 \str_reg[4][1]  ( .D(n1181), .CK(clk), .RN(n2267), .Q(\str[4][1] ) );
  DFFRX1 \str_reg[24][1]  ( .D(n1161), .CK(clk), .RN(n2263), .Q(\str[24][1] )
         );
  DFFRX1 \str_reg[16][1]  ( .D(n1169), .CK(clk), .RN(n2262), .Q(\str[16][1] )
         );
  DFFRX1 \str_reg[8][1]  ( .D(n1177), .CK(clk), .RN(n2262), .Q(\str[8][1] ) );
  DFFRX1 \str_reg[30][0]  ( .D(n1186), .CK(clk), .RN(n2272), .Q(\str[30][0] )
         );
  DFFRX1 \str_reg[22][0]  ( .D(n1194), .CK(clk), .RN(n2271), .Q(\str[22][0] )
         );
  DFFRX1 \str_reg[14][0]  ( .D(n1202), .CK(clk), .RN(n2270), .Q(\str[14][0] )
         );
  DFFRX1 \str_reg[6][0]  ( .D(n1210), .CK(clk), .RN(n2270), .Q(\str[6][0] ) );
  DFFRX1 \str_reg[26][0]  ( .D(n1190), .CK(clk), .RN(n2266), .Q(\str[26][0] )
         );
  DFFRX1 \str_reg[18][0]  ( .D(n1198), .CK(clk), .RN(n2266), .Q(\str[18][0] )
         );
  DFFRX1 \str_reg[10][0]  ( .D(n1206), .CK(clk), .RN(n2265), .Q(\str[10][0] )
         );
  DFFRX1 \str_reg[2][0]  ( .D(n1214), .CK(clk), .RN(n2264), .Q(\str[2][0] ) );
  DFFRX1 \str_reg[30][2]  ( .D(n1124), .CK(clk), .RN(n2272), .Q(\str[30][2] )
         );
  DFFRX1 \str_reg[22][2]  ( .D(n1132), .CK(clk), .RN(n2271), .Q(\str[22][2] )
         );
  DFFRX1 \str_reg[14][2]  ( .D(n1140), .CK(clk), .RN(n2270), .Q(\str[14][2] )
         );
  DFFRX1 \str_reg[6][2]  ( .D(n1148), .CK(clk), .RN(n2270), .Q(\str[6][2] ) );
  DFFRX1 \str_reg[26][2]  ( .D(n1128), .CK(clk), .RN(n2266), .Q(\str[26][2] )
         );
  DFFRX1 \str_reg[18][2]  ( .D(n1136), .CK(clk), .RN(n2266), .Q(\str[18][2] )
         );
  DFFRX1 \str_reg[10][2]  ( .D(n1144), .CK(clk), .RN(n2265), .Q(\str[10][2] )
         );
  DFFRX1 \str_reg[2][2]  ( .D(n1152), .CK(clk), .RN(n2264), .Q(\str[2][2] ) );
  DFFRX1 \str_reg[30][1]  ( .D(n1155), .CK(clk), .RN(n2272), .Q(\str[30][1] )
         );
  DFFRX1 \str_reg[22][1]  ( .D(n1163), .CK(clk), .RN(n2271), .Q(\str[22][1] )
         );
  DFFRX1 \str_reg[14][1]  ( .D(n1171), .CK(clk), .RN(n2270), .Q(\str[14][1] )
         );
  DFFRX1 \str_reg[6][1]  ( .D(n1179), .CK(clk), .RN(n2270), .Q(\str[6][1] ) );
  DFFRX1 \str_reg[26][1]  ( .D(n1159), .CK(clk), .RN(n2266), .Q(\str[26][1] )
         );
  DFFRX1 \str_reg[18][1]  ( .D(n1167), .CK(clk), .RN(n2266), .Q(\str[18][1] )
         );
  DFFRX1 \str_reg[10][1]  ( .D(n1175), .CK(clk), .RN(n2265), .Q(\str[10][1] )
         );
  DFFRX1 \str_reg[2][1]  ( .D(n1183), .CK(clk), .RN(n2264), .Q(\str[2][1] ) );
  DFFRX1 \str_reg[29][0]  ( .D(n1187), .CK(clk), .RN(n2261), .Q(\str[29][0] )
         );
  DFFRX1 \str_reg[21][0]  ( .D(n1195), .CK(clk), .RN(n2260), .Q(\str[21][0] )
         );
  DFFRX1 \str_reg[13][0]  ( .D(n1203), .CK(clk), .RN(n2260), .Q(\str[13][0] )
         );
  DFFRX1 \str_reg[5][0]  ( .D(n1211), .CK(clk), .RN(n2259), .Q(\str[5][0] ) );
  DFFRX1 \str_reg[25][0]  ( .D(n1191), .CK(clk), .RN(n2256), .Q(\str[25][0] )
         );
  DFFRX1 \str_reg[17][0]  ( .D(n1199), .CK(clk), .RN(n2255), .Q(\str[17][0] )
         );
  DFFRX1 \str_reg[9][0]  ( .D(n1207), .CK(clk), .RN(n2254), .Q(\str[9][0] ) );
  DFFRX1 \str_reg[1][0]  ( .D(n1215), .CK(clk), .RN(n2254), .Q(\str[1][0] ) );
  DFFRX1 \str_reg[27][0]  ( .D(n1189), .CK(clk), .RN(n2258), .Q(\str[27][0] )
         );
  DFFRX1 \str_reg[19][0]  ( .D(n1197), .CK(clk), .RN(n2258), .Q(\str[19][0] )
         );
  DFFRX1 \str_reg[11][0]  ( .D(n1205), .CK(clk), .RN(n2257), .Q(\str[11][0] )
         );
  DFFRX1 \str_reg[3][0]  ( .D(n1213), .CK(clk), .RN(n2256), .Q(\str[3][0] ) );
  DFFRX1 \str_reg[23][0]  ( .D(n1193), .CK(clk), .RN(n2253), .Q(\str[23][0] )
         );
  DFFRX1 \str_reg[15][0]  ( .D(n1201), .CK(clk), .RN(n2252), .Q(\str[15][0] )
         );
  DFFRX1 \str_reg[7][0]  ( .D(n1209), .CK(clk), .RN(n2252), .Q(\str[7][0] ) );
  DFFRX1 \str_reg[31][0]  ( .D(n1216), .CK(clk), .RN(n2251), .Q(\str[31][0] )
         );
  DFFRX1 \str_reg[29][2]  ( .D(n1125), .CK(clk), .RN(n2261), .Q(\str[29][2] )
         );
  DFFRX1 \str_reg[21][2]  ( .D(n1133), .CK(clk), .RN(n2260), .Q(\str[21][2] )
         );
  DFFRX1 \str_reg[13][2]  ( .D(n1141), .CK(clk), .RN(n2260), .Q(\str[13][2] )
         );
  DFFRX1 \str_reg[5][2]  ( .D(n1149), .CK(clk), .RN(n2259), .Q(\str[5][2] ) );
  DFFRX1 \str_reg[25][2]  ( .D(n1129), .CK(clk), .RN(n2256), .Q(\str[25][2] )
         );
  DFFRX1 \str_reg[17][2]  ( .D(n1137), .CK(clk), .RN(n2255), .Q(\str[17][2] )
         );
  DFFRX1 \str_reg[9][2]  ( .D(n1145), .CK(clk), .RN(n2254), .Q(\str[9][2] ) );
  DFFRX1 \str_reg[1][2]  ( .D(n1153), .CK(clk), .RN(n2254), .Q(\str[1][2] ) );
  DFFRX1 \str_reg[27][2]  ( .D(n1127), .CK(clk), .RN(n2258), .Q(\str[27][2] )
         );
  DFFRX1 \str_reg[19][2]  ( .D(n1135), .CK(clk), .RN(n2258), .Q(\str[19][2] )
         );
  DFFRX1 \str_reg[11][2]  ( .D(n1143), .CK(clk), .RN(n2257), .Q(\str[11][2] )
         );
  DFFRX1 \str_reg[3][2]  ( .D(n1151), .CK(clk), .RN(n2256), .Q(\str[3][2] ) );
  DFFRX1 \str_reg[23][2]  ( .D(n1131), .CK(clk), .RN(n2253), .Q(\str[23][2] )
         );
  DFFRX1 \str_reg[15][2]  ( .D(n1139), .CK(clk), .RN(n2252), .Q(\str[15][2] )
         );
  DFFRX1 \str_reg[7][2]  ( .D(n1147), .CK(clk), .RN(n2252), .Q(\str[7][2] ) );
  DFFRX1 \str_reg[31][2]  ( .D(n1154), .CK(clk), .RN(n2251), .Q(\str[31][2] )
         );
  DFFRX1 \str_reg[29][1]  ( .D(n1156), .CK(clk), .RN(n2261), .Q(\str[29][1] )
         );
  DFFRX1 \str_reg[21][1]  ( .D(n1164), .CK(clk), .RN(n2260), .Q(\str[21][1] )
         );
  DFFRX1 \str_reg[13][1]  ( .D(n1172), .CK(clk), .RN(n2260), .Q(\str[13][1] )
         );
  DFFRX1 \str_reg[5][1]  ( .D(n1180), .CK(clk), .RN(n2259), .Q(\str[5][1] ) );
  DFFRX1 \str_reg[25][1]  ( .D(n1160), .CK(clk), .RN(n2256), .Q(\str[25][1] )
         );
  DFFRX1 \str_reg[17][1]  ( .D(n1168), .CK(clk), .RN(n2255), .Q(\str[17][1] )
         );
  DFFRX1 \str_reg[9][1]  ( .D(n1176), .CK(clk), .RN(n2254), .Q(\str[9][1] ) );
  DFFRX1 \str_reg[1][1]  ( .D(n1184), .CK(clk), .RN(n2254), .Q(\str[1][1] ) );
  DFFRX1 \str_reg[27][1]  ( .D(n1158), .CK(clk), .RN(n2258), .Q(\str[27][1] )
         );
  DFFRX1 \str_reg[19][1]  ( .D(n1166), .CK(clk), .RN(n2258), .Q(\str[19][1] )
         );
  DFFRX1 \str_reg[11][1]  ( .D(n1174), .CK(clk), .RN(n2257), .Q(\str[11][1] )
         );
  DFFRX1 \str_reg[3][1]  ( .D(n1182), .CK(clk), .RN(n2256), .Q(\str[3][1] ) );
  DFFRX1 \str_reg[23][1]  ( .D(n1162), .CK(clk), .RN(n2253), .Q(\str[23][1] )
         );
  DFFRX1 \str_reg[15][1]  ( .D(n1170), .CK(clk), .RN(n2252), .Q(\str[15][1] )
         );
  DFFRX1 \str_reg[7][1]  ( .D(n1178), .CK(clk), .RN(n2252), .Q(\str[7][1] ) );
  DFFRX1 \str_reg[31][1]  ( .D(n1185), .CK(clk), .RN(n2251), .Q(\str[31][1] )
         );
  DFFRX1 \pat_compare_count_reg[4]  ( .D(n1231), .CK(clk), .RN(n2273), .Q(
        pat_compare_count[4]), .QN(n115) );
  DFFRX1 \pat_count_reg[2]  ( .D(n958), .CK(clk), .RN(n2250), .Q(pat_count[2]), 
        .QN(n301) );
  DFFRX1 \state_reg[0]  ( .D(\next_state[0] ), .CK(clk), .RN(n2272), .Q(
        state[0]) );
  DFFRX1 \state_reg[1]  ( .D(n1994), .CK(clk), .RN(n2273), .Q(state[1]) );
  DFFRX1 \state_reg[2]  ( .D(n1994), .CK(clk), .RN(n2273), .Q(state[2]) );
  DFFRX1 \state_reg[3]  ( .D(n1994), .CK(clk), .RN(n2272), .Q(state[3]) );
  DFFRX1 \str_count_reg[2]  ( .D(n1228), .CK(clk), .RN(n2272), .Q(str_count[2]), .QN(n127) );
  DFFQX1 \star_str_location_reg[3]  ( .D(n2325), .CK(clk), .Q(
        star_str_location[3]) );
  DFFRX1 \str_compare_count_reg[0]  ( .D(n877), .CK(clk), .RN(n2243), .Q(
        str_compare_count[0]), .QN(n114) );
  DFFRX1 \pat_compare_count_reg[1]  ( .D(n878), .CK(clk), .RN(n2244), .Q(
        pat_compare_count[1]), .QN(n122) );
  DFFRX1 \pat_count_reg[4]  ( .D(n956), .CK(clk), .RN(n2250), .Q(pat_count[4])
         );
  DFFRX1 \pat_count_reg[0]  ( .D(n960), .CK(clk), .RN(n2250), .Q(pat_count[0]), 
        .QN(n303) );
  DFFRX1 \pat_count_reg[1]  ( .D(n959), .CK(clk), .RN(n2250), .Q(pat_count[1]), 
        .QN(n302) );
  DFFRX1 \pat_count_reg[3]  ( .D(n957), .CK(clk), .RN(n2250), .Q(pat_count[3])
         );
  DFFRX1 \str_count_reg[0]  ( .D(n2340), .CK(clk), .RN(n2272), .Q(str_count[0]), .QN(n129) );
  DFFRX1 \first_index_reg[0]  ( .D(n867), .CK(clk), .RN(n2243), .Q(n2407), 
        .QN(n2007) );
  DFFRX1 \first_index_reg[4]  ( .D(n863), .CK(clk), .RN(n2243), .Q(n2403), 
        .QN(n2005) );
  DFFRX1 \first_index_reg[3]  ( .D(n864), .CK(clk), .RN(n2243), .Q(n2404), 
        .QN(n2003) );
  DFFRX1 \first_index_reg[2]  ( .D(n865), .CK(clk), .RN(n2243), .Q(n2405), 
        .QN(n2001) );
  DFFRX1 \first_index_reg[1]  ( .D(n866), .CK(clk), .RN(n2243), .Q(n2406), 
        .QN(n1999) );
  DFFRX1 \str_count_reg[4]  ( .D(n1226), .CK(clk), .RN(n2322), .Q(str_count[4]), .QN(n125) );
  DFFXL \str_reg[32][2]  ( .D(n1221), .CK(clk), .Q(\str[32][2] ), .QN(n2392)
         );
  DFFRXL \str_compare_count_reg[5]  ( .D(n882), .CK(clk), .RN(n2322), .QN(n104) );
  DFFRX2 \str_compare_count_reg[2]  ( .D(n874), .CK(clk), .RN(n2322), .Q(
        str_compare_count[2]), .QN(n2190) );
  DFFRX2 \str_compare_count_reg[3]  ( .D(n875), .CK(clk), .RN(n2322), .Q(
        str_compare_count[3]), .QN(n2189) );
  DFFRX2 \str_count_reg[3]  ( .D(n1227), .CK(clk), .RN(n2322), .Q(str_count[3]), .QN(n2320) );
  DFFRX2 \str_count_reg[1]  ( .D(n1229), .CK(clk), .RN(n2322), .Q(str_count[1]), .QN(n128) );
  DFFRX2 \str_count_reg[5]  ( .D(n1225), .CK(clk), .RN(n2322), .Q(str_count[5]), .QN(n2319) );
  DFFRX2 \str_compare_count_reg[4]  ( .D(n876), .CK(clk), .RN(n2322), .Q(
        str_compare_count[4]), .QN(n110) );
  DFFRX2 \pat_compare_count_reg[3]  ( .D(n880), .CK(clk), .RN(n2322), .Q(
        pat_compare_count[3]), .QN(n120) );
  DFFRX2 \pat_compare_count_reg[2]  ( .D(n879), .CK(clk), .RN(n2322), .Q(
        pat_compare_count[2]), .QN(n121) );
  DFFRX2 \str_compare_count_reg[1]  ( .D(n873), .CK(clk), .RN(n2322), .Q(
        str_compare_count[1]), .QN(n2191) );
  DFFRX2 \pat_compare_count_reg[0]  ( .D(n881), .CK(clk), .RN(n2322), .Q(N834), 
        .QN(N868) );
  NAND4X2 U1705 ( .A(n2217), .B(str_count[3]), .C(n125), .D(n2319), .Y(n559)
         );
  NAND4X2 U1706 ( .A(n2217), .B(str_count[4]), .C(n2320), .D(n2319), .Y(n557)
         );
  NAND4X2 U1707 ( .A(n2217), .B(str_count[3]), .C(str_count[4]), .D(n2319), 
        .Y(n550) );
  NAND4X2 U1708 ( .A(n2217), .B(n2320), .C(n125), .D(n2319), .Y(n515) );
  NAND4BX1 U1709 ( .AN(n815), .B(n814), .C(n813), .D(n821), .Y(n459) );
  INVX12 U1710 ( .A(n1993), .Y(valid) );
  XNOR2X1 U1711 ( .A(n1998), .B(n2306), .Y(n1992) );
  OR2X1 U1712 ( .A(n2389), .B(n405), .Y(n1993) );
  OA21XL U1713 ( .A0(n385), .A1(n386), .B0(n2216), .Y(n1994) );
  NAND3XL U1714 ( .A(pat_compare_count[2]), .B(n2231), .C(N834), .Y(n606) );
  NAND3XL U1715 ( .A(n2231), .B(N868), .C(pat_compare_count[2]), .Y(n605) );
  NAND3XL U1716 ( .A(pat_compare_count[2]), .B(n122), .C(N834), .Y(n604) );
  NAND3XL U1717 ( .A(N868), .B(n122), .C(pat_compare_count[2]), .Y(n611) );
  INVXL U1718 ( .A(n2402), .Y(n1995) );
  INVX12 U1719 ( .A(n1995), .Y(match) );
  NOR2BX1 U1720 ( .AN(valid), .B(n390), .Y(n2402) );
  INVX3 U1721 ( .A(reset), .Y(n2322) );
  INVX3 U1722 ( .A(n104), .Y(n1998) );
  NOR2BX2 U1723 ( .AN(str_compare_count[4]), .B(n1998), .Y(n2185) );
  INVX12 U1724 ( .A(n1999), .Y(match_index[1]) );
  OAI21X1 U1725 ( .A0(n2304), .A1(n2189), .B0(n2305), .Y(N740) );
  NOR2X2 U1726 ( .A(str_compare_count[4]), .B(n1998), .Y(n2187) );
  INVX12 U1727 ( .A(n2001), .Y(match_index[2]) );
  INVX12 U1728 ( .A(n2003), .Y(match_index[3]) );
  INVX12 U1729 ( .A(n2005), .Y(match_index[4]) );
  INVX12 U1730 ( .A(n2007), .Y(match_index[0]) );
  NAND3X1 U1731 ( .A(n472), .B(n413), .C(n459), .Y(n458) );
  OA21XL U1732 ( .A0(n466), .A1(n435), .B0(n472), .Y(n410) );
  CLKBUFX3 U1733 ( .A(n517), .Y(n2286) );
  NAND4BBX1 U1734 ( .AN(n806), .BN(n807), .C(n819), .D(n820), .Y(n413) );
  NAND4BBX1 U1735 ( .AN(n813), .BN(n814), .C(n815), .D(n821), .Y(n430) );
  NOR2X2 U1736 ( .A(n2400), .B(N738), .Y(n685) );
  NOR2X2 U1737 ( .A(N738), .B(N739), .Y(n681) );
  NOR2X2 U1738 ( .A(n2399), .B(N739), .Y(n683) );
  AND4X2 U1739 ( .A(state[3]), .B(state[2]), .C(state[1]), .D(state[0]), .Y(
        n484) );
  NAND2X1 U1740 ( .A(n484), .B(isstring), .Y(n517) );
  AND2X2 U1741 ( .A(isstring), .B(n2217), .Y(n549) );
  NAND2X1 U1742 ( .A(n549), .B(chardata[3]), .Y(n511) );
  NAND2X1 U1743 ( .A(n549), .B(chardata[4]), .Y(n510) );
  NAND2X1 U1744 ( .A(n549), .B(chardata[5]), .Y(n509) );
  NAND2X1 U1745 ( .A(n549), .B(chardata[6]), .Y(n508) );
  NAND2X1 U1746 ( .A(n549), .B(chardata[7]), .Y(n505) );
  NAND2X1 U1747 ( .A(n549), .B(chardata[0]), .Y(n514) );
  NAND2X1 U1748 ( .A(n549), .B(chardata[1]), .Y(n513) );
  NAND2X1 U1749 ( .A(n549), .B(chardata[2]), .Y(n512) );
  NOR4X1 U1750 ( .A(n829), .B(n830), .C(n831), .D(n832), .Y(n805) );
  NOR4X1 U1751 ( .A(n841), .B(n842), .C(n843), .D(n844), .Y(n807) );
  NOR4X1 U1752 ( .A(n837), .B(n838), .C(n839), .D(n840), .Y(n806) );
  NOR4X1 U1753 ( .A(n824), .B(n825), .C(n826), .D(n827), .Y(n808) );
  NOR4X1 U1754 ( .A(n833), .B(n834), .C(n835), .D(n836), .Y(n816) );
  OAI222XL U1755 ( .A0(n2211), .A1(n358), .B0(n2212), .B1(n366), .C0(n2213), 
        .C1(n350), .Y(n855) );
  OAI222XL U1756 ( .A0(n2211), .A1(n356), .B0(n2212), .B1(n364), .C0(n2213), 
        .C1(n348), .Y(n851) );
  OAI222XL U1757 ( .A0(n2211), .A1(n357), .B0(n2212), .B1(n365), .C0(n2213), 
        .C1(n349), .Y(n847) );
  NOR4X2 U1758 ( .A(n845), .B(n846), .C(n847), .D(n848), .Y(n815) );
  NOR4X2 U1759 ( .A(n853), .B(n854), .C(n855), .D(n856), .Y(n813) );
  NOR4X2 U1760 ( .A(n849), .B(n850), .C(n851), .D(n852), .Y(n814) );
  CLKBUFX3 U1761 ( .A(n609), .Y(n2210) );
  CLKBUFX3 U1762 ( .A(n610), .Y(n2214) );
  CLKBUFX3 U1763 ( .A(n608), .Y(n2209) );
  OAI221XL U1764 ( .A0(n667), .A1(n668), .B0(n669), .B1(n670), .C0(n671), .Y(
        n645) );
  OAI22XL U1765 ( .A0(n729), .A1(n691), .B0(n730), .B1(n692), .Y(n728) );
  OR2X2 U1766 ( .A(n607), .B(pat_compare_count[3]), .Y(n828) );
  CLKBUFX3 U1767 ( .A(n611), .Y(n2215) );
  OAI222XL U1768 ( .A0(n767), .A1(n709), .B0(n768), .B1(n690), .C0(n769), .C1(
        n708), .Y(n748) );
  OAI22XL U1769 ( .A0(n778), .A1(n1992), .B0(n779), .B1(n714), .Y(n777) );
  OAI22XL U1770 ( .A0(n2213), .A1(n357), .B0(n2211), .B1(n365), .Y(n635) );
  OAI22XL U1771 ( .A0(n2213), .A1(n359), .B0(n2211), .B1(n367), .Y(n623) );
  OAI22XL U1772 ( .A0(n2213), .A1(n358), .B0(n2211), .B1(n366), .Y(n639) );
  OAI22XL U1773 ( .A0(n2213), .A1(n356), .B0(n2211), .B1(n364), .Y(n631) );
  OAI22XL U1774 ( .A0(n2213), .A1(n353), .B0(n2211), .B1(n361), .Y(n603) );
  OAI22XL U1775 ( .A0(n2213), .A1(n355), .B0(n2211), .B1(n363), .Y(n619) );
  OAI22XL U1776 ( .A0(n2213), .A1(n354), .B0(n2211), .B1(n362), .Y(n627) );
  OAI22XL U1777 ( .A0(n352), .A1(n2213), .B0(n360), .B1(n2211), .Y(n615) );
  ADDHXL U1778 ( .A(str_count[3]), .B(\r534/carry [3]), .CO(\r534/carry [4]), 
        .S(N528) );
  ADDHXL U1779 ( .A(str_count[1]), .B(n2233), .CO(\r534/carry [2]), .S(N526)
         );
  ADDHXL U1780 ( .A(str_count[4]), .B(\r534/carry [4]), .CO(\r534/carry [5]), 
        .S(N529) );
  NAND3X1 U1781 ( .A(n128), .B(n127), .C(n129), .Y(n516) );
  NAND3X1 U1782 ( .A(n129), .B(n127), .C(str_count[1]), .Y(n555) );
  NAND3X1 U1783 ( .A(n129), .B(n128), .C(n2232), .Y(n553) );
  NAND3X1 U1784 ( .A(n128), .B(n127), .C(n2233), .Y(n556) );
  NAND3X1 U1785 ( .A(str_count[1]), .B(n127), .C(n2233), .Y(n554) );
  NAND3X1 U1786 ( .A(str_count[1]), .B(n129), .C(n2232), .Y(n551) );
  NAND3X1 U1787 ( .A(n2233), .B(str_count[1]), .C(n2232), .Y(n558) );
  NAND3X1 U1788 ( .A(n2233), .B(n128), .C(n2232), .Y(n552) );
  ADDHXL U1789 ( .A(star_str_location[3]), .B(\r545/carry [3]), .CO(
        \r545/carry [4]), .S(N888) );
  ADDHXL U1790 ( .A(star_str_location[1]), .B(star_str_location[0]), .CO(
        \r545/carry [2]), .S(N886) );
  ADDHXL U1791 ( .A(star_str_location[2]), .B(\r545/carry [2]), .CO(
        \r545/carry [3]), .S(N887) );
  ADDHXL U1792 ( .A(star_str_location[4]), .B(\r545/carry [4]), .CO(
        \r545/carry [5]), .S(N889) );
  CLKINVX1 U1793 ( .A(n574), .Y(n2395) );
  CLKBUFX3 U1794 ( .A(n2238), .Y(n2244) );
  CLKBUFX3 U1795 ( .A(n2240), .Y(n2245) );
  CLKBUFX3 U1796 ( .A(n2238), .Y(n2246) );
  CLKBUFX3 U1797 ( .A(n2241), .Y(n2247) );
  CLKBUFX3 U1798 ( .A(n2284), .Y(n2248) );
  CLKBUFX3 U1799 ( .A(n2284), .Y(n2249) );
  CLKBUFX3 U1800 ( .A(n2283), .Y(n2250) );
  CLKBUFX3 U1801 ( .A(n2283), .Y(n2251) );
  CLKBUFX3 U1802 ( .A(n2282), .Y(n2252) );
  CLKBUFX3 U1803 ( .A(n2282), .Y(n2253) );
  CLKBUFX3 U1804 ( .A(n2281), .Y(n2254) );
  CLKBUFX3 U1805 ( .A(n2281), .Y(n2255) );
  CLKBUFX3 U1806 ( .A(n2280), .Y(n2256) );
  CLKBUFX3 U1807 ( .A(n2280), .Y(n2257) );
  CLKBUFX3 U1808 ( .A(n2279), .Y(n2258) );
  CLKBUFX3 U1809 ( .A(n2279), .Y(n2259) );
  CLKBUFX3 U1810 ( .A(n2278), .Y(n2260) );
  CLKBUFX3 U1811 ( .A(n2278), .Y(n2261) );
  CLKBUFX3 U1812 ( .A(n2277), .Y(n2262) );
  CLKBUFX3 U1813 ( .A(n2277), .Y(n2263) );
  CLKBUFX3 U1814 ( .A(n2276), .Y(n2264) );
  CLKBUFX3 U1815 ( .A(n2276), .Y(n2265) );
  CLKBUFX3 U1816 ( .A(n2275), .Y(n2266) );
  CLKBUFX3 U1817 ( .A(n2275), .Y(n2267) );
  CLKBUFX3 U1818 ( .A(n2234), .Y(n2268) );
  CLKBUFX3 U1819 ( .A(n2234), .Y(n2269) );
  CLKBUFX3 U1820 ( .A(n2274), .Y(n2270) );
  CLKBUFX3 U1821 ( .A(n2274), .Y(n2271) );
  CLKBUFX3 U1822 ( .A(n2239), .Y(n2272) );
  CLKBUFX3 U1823 ( .A(n2239), .Y(n2273) );
  NAND2X1 U1824 ( .A(n756), .B(n721), .Y(n702) );
  NAND2X1 U1825 ( .A(n731), .B(n721), .Y(n680) );
  NAND2X1 U1826 ( .A(n721), .B(n684), .Y(n668) );
  NAND2X1 U1827 ( .A(n761), .B(n721), .Y(n690) );
  NOR2X1 U1828 ( .A(n458), .B(n2396), .Y(n574) );
  CLKINVX1 U1829 ( .A(n458), .Y(n2397) );
  CLKBUFX3 U1830 ( .A(n2238), .Y(n2284) );
  CLKBUFX3 U1831 ( .A(n2237), .Y(n2283) );
  CLKBUFX3 U1832 ( .A(n2237), .Y(n2282) );
  CLKBUFX3 U1833 ( .A(n2237), .Y(n2281) );
  CLKBUFX3 U1834 ( .A(n2236), .Y(n2280) );
  CLKBUFX3 U1835 ( .A(n2236), .Y(n2279) );
  CLKBUFX3 U1836 ( .A(n2236), .Y(n2278) );
  CLKBUFX3 U1837 ( .A(n2235), .Y(n2277) );
  CLKBUFX3 U1838 ( .A(n2235), .Y(n2276) );
  CLKBUFX3 U1839 ( .A(n2235), .Y(n2275) );
  CLKBUFX3 U1840 ( .A(n2234), .Y(n2274) );
  INVX3 U1841 ( .A(n2225), .Y(n2377) );
  NOR2X2 U1842 ( .A(n430), .B(n2329), .Y(n417) );
  INVX3 U1843 ( .A(n2220), .Y(n2372) );
  INVX3 U1844 ( .A(n524), .Y(n2365) );
  INVX3 U1845 ( .A(n533), .Y(n2356) );
  INVX3 U1846 ( .A(n539), .Y(n2350) );
  INVX3 U1847 ( .A(n531), .Y(n2358) );
  INVX3 U1848 ( .A(n537), .Y(n2352) );
  INVX3 U1849 ( .A(n529), .Y(n2360) );
  INVX3 U1850 ( .A(n535), .Y(n2354) );
  INVX3 U1851 ( .A(n527), .Y(n2362) );
  INVX3 U1852 ( .A(n540), .Y(n2349) );
  INVX3 U1853 ( .A(n532), .Y(n2357) );
  INVX3 U1854 ( .A(n538), .Y(n2351) );
  INVX3 U1855 ( .A(n530), .Y(n2359) );
  INVX3 U1856 ( .A(n536), .Y(n2353) );
  INVX3 U1857 ( .A(n528), .Y(n2361) );
  INVX3 U1858 ( .A(n534), .Y(n2355) );
  INVX3 U1859 ( .A(n526), .Y(n2363) );
  INVX3 U1860 ( .A(n548), .Y(n2341) );
  INVX3 U1861 ( .A(n541), .Y(n2348) );
  INVX3 U1862 ( .A(n547), .Y(n2342) );
  INVX3 U1863 ( .A(n523), .Y(n2366) );
  INVX3 U1864 ( .A(n545), .Y(n2344) );
  INVX3 U1865 ( .A(n521), .Y(n2368) );
  INVX3 U1866 ( .A(n543), .Y(n2346) );
  INVX3 U1867 ( .A(n519), .Y(n2370) );
  INVX3 U1868 ( .A(n546), .Y(n2343) );
  INVX3 U1869 ( .A(n522), .Y(n2367) );
  INVX3 U1870 ( .A(n544), .Y(n2345) );
  INVX3 U1871 ( .A(n520), .Y(n2369) );
  INVX3 U1872 ( .A(n542), .Y(n2347) );
  INVX3 U1873 ( .A(n518), .Y(n2371) );
  INVX3 U1874 ( .A(n525), .Y(n2364) );
  NAND2X1 U1875 ( .A(n2391), .B(n497), .Y(n503) );
  NAND2X1 U1876 ( .A(n2391), .B(n2286), .Y(n566) );
  OAI32X4 U1877 ( .A0(n457), .A1(n2386), .A2(n458), .B0(n459), .B1(n460), .Y(
        n443) );
  OAI211X1 U1878 ( .A0(n2395), .A1(n466), .B0(n430), .C0(n467), .Y(n452) );
  OAI21X2 U1879 ( .A0(n458), .A1(n466), .B0(n467), .Y(n425) );
  NOR2X2 U1880 ( .A(n2400), .B(n2399), .Y(n721) );
  OAI21X2 U1881 ( .A0(n458), .A1(n434), .B0(n436), .Y(n442) );
  INVXL U1882 ( .A(N740), .Y(n2401) );
  OAI21X2 U1883 ( .A0(n2386), .A1(n410), .B0(n2382), .Y(n409) );
  NAND3BX1 U1884 ( .AN(n425), .B(n461), .C(n413), .Y(n441) );
  NAND3BX1 U1885 ( .AN(n457), .B(n2397), .C(n2386), .Y(n461) );
  OAI22XL U1886 ( .A0(n459), .A1(n460), .B0(n435), .B1(n457), .Y(n473) );
  NAND2X1 U1887 ( .A(n681), .B(n682), .Y(n650) );
  NAND2X1 U1888 ( .A(n681), .B(n684), .Y(n652) );
  NAND2X1 U1889 ( .A(n685), .B(n682), .Y(n662) );
  NAND2X1 U1890 ( .A(n683), .B(n682), .Y(n656) );
  NAND2X1 U1891 ( .A(n683), .B(n684), .Y(n658) );
  NAND2X1 U1892 ( .A(n685), .B(n684), .Y(n664) );
  NAND2X1 U1893 ( .A(n761), .B(n681), .Y(n704) );
  NAND2X1 U1894 ( .A(n756), .B(n681), .Y(n715) );
  NAND2X1 U1895 ( .A(n756), .B(n685), .Y(n719) );
  NAND2X1 U1896 ( .A(n733), .B(n681), .Y(n691) );
  NAND2X1 U1897 ( .A(n731), .B(n681), .Y(n692) );
  NAND2X1 U1898 ( .A(n761), .B(n683), .Y(n706) );
  NAND2X1 U1899 ( .A(n756), .B(n683), .Y(n717) );
  NAND2X1 U1900 ( .A(n733), .B(n685), .Y(n695) );
  NAND2X1 U1901 ( .A(n731), .B(n685), .Y(n696) );
  NAND2X1 U1902 ( .A(n754), .B(n681), .Y(n703) );
  NAND2X1 U1903 ( .A(n733), .B(n683), .Y(n693) );
  NAND2X1 U1904 ( .A(n731), .B(n683), .Y(n694) );
  NAND2X1 U1905 ( .A(n754), .B(n685), .Y(n707) );
  NAND2X1 U1906 ( .A(n780), .B(n685), .Y(n718) );
  NAND2X1 U1907 ( .A(n754), .B(n683), .Y(n705) );
  NAND2X1 U1908 ( .A(n780), .B(n683), .Y(n716) );
  NAND2X1 U1909 ( .A(n733), .B(n721), .Y(n697) );
  NAND2X1 U1910 ( .A(n780), .B(n721), .Y(n720) );
  NAND2X1 U1911 ( .A(n761), .B(n685), .Y(n708) );
  NAND2X1 U1912 ( .A(n754), .B(n721), .Y(n709) );
  NAND2X1 U1913 ( .A(n682), .B(n721), .Y(n670) );
  CLKINVX1 U1914 ( .A(n469), .Y(n2388) );
  AND2X2 U1915 ( .A(n745), .B(n2192), .Y(n731) );
  AND2X2 U1916 ( .A(n771), .B(n2192), .Y(n761) );
  AND2X2 U1917 ( .A(n793), .B(n2192), .Y(n756) );
  AND2X2 U1918 ( .A(n722), .B(n114), .Y(n684) );
  OA21XL U1919 ( .A0(n459), .A1(n2388), .B0(n472), .Y(n467) );
  CLKINVX1 U1920 ( .A(n414), .Y(n2382) );
  CLKBUFX3 U1921 ( .A(n2163), .Y(n2194) );
  AND2X2 U1922 ( .A(n2011), .B(n2018), .Y(n2163) );
  CLKBUFX3 U1923 ( .A(n2161), .Y(n2195) );
  AND2X2 U1924 ( .A(n2019), .B(n2011), .Y(n2161) );
  OAI21X1 U1925 ( .A0(n2395), .A1(n434), .B0(n436), .Y(n451) );
  NAND2X1 U1926 ( .A(n821), .B(n819), .Y(n472) );
  NAND2X1 U1927 ( .A(n459), .B(n435), .Y(n431) );
  CLKINVX1 U1928 ( .A(n430), .Y(n2396) );
  INVX3 U1929 ( .A(n413), .Y(n2398) );
  CLKBUFX3 U1930 ( .A(n2239), .Y(n2243) );
  CLKBUFX3 U1931 ( .A(n2240), .Y(n2239) );
  CLKBUFX3 U1932 ( .A(n2240), .Y(n2238) );
  CLKBUFX3 U1933 ( .A(n2241), .Y(n2237) );
  CLKBUFX3 U1934 ( .A(n2241), .Y(n2236) );
  CLKBUFX3 U1935 ( .A(n2242), .Y(n2235) );
  CLKBUFX3 U1936 ( .A(n2242), .Y(n2234) );
  CLKINVX1 U1937 ( .A(n484), .Y(n2389) );
  OAI21X2 U1938 ( .A0(n516), .A1(n550), .B0(n2285), .Y(n524) );
  OAI21X2 U1939 ( .A0(n556), .A1(n557), .B0(n2286), .Y(n531) );
  OAI21X2 U1940 ( .A0(n554), .A1(n557), .B0(n2285), .Y(n529) );
  OAI21X2 U1941 ( .A0(n552), .A1(n557), .B0(n2285), .Y(n527) );
  OAI21X2 U1942 ( .A0(n516), .A1(n557), .B0(n2286), .Y(n532) );
  OAI21X2 U1943 ( .A0(n555), .A1(n557), .B0(n2286), .Y(n530) );
  OAI21X2 U1944 ( .A0(n553), .A1(n557), .B0(n2285), .Y(n528) );
  OAI21X2 U1945 ( .A0(n551), .A1(n557), .B0(n2285), .Y(n526) );
  OAI21X2 U1946 ( .A0(n558), .A1(n559), .B0(n2286), .Y(n533) );
  OAI21X2 U1947 ( .A0(n556), .A1(n559), .B0(n2286), .Y(n539) );
  OAI21X2 U1948 ( .A0(n554), .A1(n559), .B0(n2286), .Y(n537) );
  OAI21X2 U1949 ( .A0(n552), .A1(n559), .B0(n2286), .Y(n535) );
  OAI21X2 U1950 ( .A0(n516), .A1(n559), .B0(n2286), .Y(n540) );
  OAI21X2 U1951 ( .A0(n555), .A1(n559), .B0(n2286), .Y(n538) );
  OAI21X2 U1952 ( .A0(n553), .A1(n559), .B0(n2286), .Y(n536) );
  OAI21X2 U1953 ( .A0(n551), .A1(n559), .B0(n2286), .Y(n534) );
  OAI21X2 U1954 ( .A0(n515), .A1(n558), .B0(n2286), .Y(n541) );
  OAI21X2 U1955 ( .A0(n515), .A1(n556), .B0(n2285), .Y(n547) );
  OAI21X2 U1956 ( .A0(n515), .A1(n554), .B0(n517), .Y(n545) );
  OAI21X2 U1957 ( .A0(n515), .A1(n552), .B0(n517), .Y(n543) );
  OAI21X2 U1958 ( .A0(n515), .A1(n555), .B0(n2286), .Y(n546) );
  OAI21X2 U1959 ( .A0(n515), .A1(n553), .B0(n2286), .Y(n544) );
  OAI21X2 U1960 ( .A0(n515), .A1(n551), .B0(n2286), .Y(n542) );
  OAI21X2 U1961 ( .A0(n550), .A1(n558), .B0(n2285), .Y(n548) );
  OAI21X2 U1962 ( .A0(n550), .A1(n556), .B0(n2285), .Y(n523) );
  OAI21X2 U1963 ( .A0(n550), .A1(n554), .B0(n2285), .Y(n521) );
  OAI21X2 U1964 ( .A0(n550), .A1(n552), .B0(n2285), .Y(n519) );
  OAI21X2 U1965 ( .A0(n550), .A1(n555), .B0(n2285), .Y(n522) );
  OAI21X2 U1966 ( .A0(n550), .A1(n553), .B0(n2285), .Y(n520) );
  OAI21X2 U1967 ( .A0(n550), .A1(n551), .B0(n2285), .Y(n518) );
  OAI21X2 U1968 ( .A0(n557), .A1(n558), .B0(n2285), .Y(n525) );
  NAND2X2 U1969 ( .A(n484), .B(n2220), .Y(n506) );
  NAND2X2 U1970 ( .A(n484), .B(n2381), .Y(n474) );
  INVX3 U1971 ( .A(n2223), .Y(n2375) );
  INVX3 U1972 ( .A(n2227), .Y(n2379) );
  INVX3 U1973 ( .A(n2221), .Y(n2373) );
  INVX3 U1974 ( .A(n2222), .Y(n2374) );
  INVX3 U1975 ( .A(n2224), .Y(n2376) );
  INVX3 U1976 ( .A(n2226), .Y(n2378) );
  INVX3 U1977 ( .A(n2228), .Y(n2380) );
  INVX3 U1978 ( .A(n432), .Y(n2329) );
  NAND2X2 U1979 ( .A(n484), .B(n405), .Y(n497) );
  CLKINVX1 U1980 ( .A(n564), .Y(n2339) );
  AND2X2 U1981 ( .A(n431), .B(n432), .Y(n416) );
  AND2X2 U1982 ( .A(n549), .B(n566), .Y(n563) );
  AND2X2 U1983 ( .A(n495), .B(n503), .Y(n501) );
  CLKBUFX3 U1984 ( .A(n514), .Y(n2287) );
  CLKBUFX3 U1985 ( .A(n513), .Y(n2289) );
  CLKBUFX3 U1986 ( .A(n512), .Y(n2291) );
  CLKBUFX3 U1987 ( .A(n514), .Y(n2288) );
  CLKBUFX3 U1988 ( .A(n513), .Y(n2290) );
  CLKBUFX3 U1989 ( .A(n512), .Y(n2292) );
  CLKBUFX3 U1990 ( .A(n517), .Y(n2285) );
  CLKBUFX3 U1991 ( .A(n511), .Y(n2293) );
  CLKBUFX3 U1992 ( .A(n510), .Y(n2295) );
  CLKBUFX3 U1993 ( .A(n509), .Y(n2297) );
  CLKBUFX3 U1994 ( .A(n508), .Y(n2299) );
  CLKBUFX3 U1995 ( .A(n505), .Y(n2301) );
  CLKBUFX3 U1996 ( .A(n511), .Y(n2294) );
  CLKBUFX3 U1997 ( .A(n510), .Y(n2296) );
  CLKBUFX3 U1998 ( .A(n509), .Y(n2298) );
  CLKBUFX3 U1999 ( .A(n508), .Y(n2300) );
  CLKBUFX3 U2000 ( .A(n505), .Y(n2302) );
  CLKINVX1 U2001 ( .A(n565), .Y(n2340) );
  AOI222XL U2002 ( .A0(n564), .A1(n2233), .B0(n129), .B1(n563), .C0(n566), 
        .C1(n484), .Y(n565) );
  CLKBUFX3 U2003 ( .A(n490), .Y(n2225) );
  OAI21XL U2004 ( .A0(n485), .A1(n496), .B0(n497), .Y(n490) );
  CLKBUFX3 U2005 ( .A(n507), .Y(n2220) );
  OAI21XL U2006 ( .A0(n515), .A1(n516), .B0(n2285), .Y(n507) );
  INVX3 U2007 ( .A(n2229), .Y(n2381) );
  OAI21XL U2008 ( .A0(n405), .A1(n2391), .B0(n2390), .Y(\next_state[0] ) );
  NAND2X1 U2009 ( .A(n2382), .B(n411), .Y(n408) );
  OAI21XL U2010 ( .A0(n410), .A1(n412), .B0(n413), .Y(n411) );
  NOR4X1 U2011 ( .A(str_now[1]), .B(str_now[2]), .C(str_now[0]), .D(n822), .Y(
        n469) );
  OR4X1 U2012 ( .A(str_now[7]), .B(str_now[6]), .C(str_now[4]), .D(str_now[3]), 
        .Y(n822) );
  NOR2XL U2013 ( .A(N740), .B(N741), .Y(n793) );
  NAND2X1 U2014 ( .A(n2216), .B(n422), .Y(n424) );
  NAND2X1 U2015 ( .A(n2216), .B(n448), .Y(n450) );
  XNOR2X1 U2016 ( .A(str_now[1]), .B(n813), .Y(n812) );
  XNOR2X1 U2017 ( .A(str_now[2]), .B(n815), .Y(n810) );
  XNOR2X1 U2018 ( .A(str_now[3]), .B(n814), .Y(n811) );
  OAI21X2 U2019 ( .A0(n575), .A1(n2390), .B0(n2389), .Y(n448) );
  AOI211X1 U2020 ( .A0(n2387), .A1(n2398), .B0(n576), .C0(n431), .Y(n575) );
  NAND2X1 U2021 ( .A(n430), .B(n472), .Y(n576) );
  CLKINVX1 U2022 ( .A(n471), .Y(n2387) );
  NAND3X1 U2023 ( .A(n2389), .B(n414), .C(n468), .Y(n422) );
  NAND3BX1 U2024 ( .AN(n459), .B(n2216), .C(n469), .Y(n468) );
  XNOR2X1 U2025 ( .A(str_now[7]), .B(n808), .Y(n801) );
  XNOR2X1 U2026 ( .A(str_now[0]), .B(n816), .Y(n809) );
  NAND2X1 U2027 ( .A(n799), .B(n800), .Y(n466) );
  NOR4X1 U2028 ( .A(n801), .B(n802), .C(n803), .D(n804), .Y(n800) );
  NOR4X1 U2029 ( .A(n809), .B(n810), .C(n811), .D(n812), .Y(n799) );
  XNOR2X1 U2030 ( .A(str_now[5]), .B(n805), .Y(n804) );
  XNOR2X1 U2031 ( .A(str_now[6]), .B(n807), .Y(n802) );
  XNOR2X1 U2032 ( .A(str_now[4]), .B(n806), .Y(n803) );
  NOR2X1 U2033 ( .A(n2401), .B(N741), .Y(n771) );
  CLKINVX1 U2034 ( .A(N739), .Y(n2400) );
  XOR2X1 U2035 ( .A(str_now[2]), .B(n588), .Y(n587) );
  XOR2X1 U2036 ( .A(str_now[7]), .B(n597), .Y(n594) );
  NOR4X1 U2037 ( .A(n645), .B(n646), .C(n647), .D(n648), .Y(n644) );
  OAI22XL U2038 ( .A0(n661), .A1(n662), .B0(n663), .B1(n664), .Y(n646) );
  OAI22XL U2039 ( .A0(n655), .A1(n656), .B0(n657), .B1(n658), .Y(n647) );
  OAI22XL U2040 ( .A0(n649), .A1(n650), .B0(n651), .B1(n652), .Y(n648) );
  NOR4X1 U2041 ( .A(n725), .B(n726), .C(n727), .D(n728), .Y(n643) );
  OAI22XL U2042 ( .A0(n743), .A1(n697), .B0(n744), .B1(n680), .Y(n725) );
  OAI22XL U2043 ( .A0(n739), .A1(n695), .B0(n740), .B1(n696), .Y(n726) );
  OAI22XL U2044 ( .A0(n735), .A1(n693), .B0(n736), .B1(n694), .Y(n727) );
  NOR4X1 U2045 ( .A(n748), .B(n749), .C(n750), .D(n751), .Y(n642) );
  OAI22XL U2046 ( .A0(n763), .A1(n706), .B0(n764), .B1(n707), .Y(n749) );
  OAI22XL U2047 ( .A0(n758), .A1(n704), .B0(n759), .B1(n705), .Y(n750) );
  OAI22XL U2048 ( .A0(n752), .A1(n702), .B0(n753), .B1(n703), .Y(n751) );
  NAND2BX1 U2049 ( .AN(n573), .B(n466), .Y(n434) );
  NAND3X1 U2050 ( .A(n681), .B(n1992), .C(n780), .Y(n714) );
  NAND2X1 U2051 ( .A(n573), .B(n466), .Y(n457) );
  NAND2X1 U2052 ( .A(n2216), .B(n470), .Y(n414) );
  OAI211X1 U2053 ( .A0(n413), .A1(n471), .B0(n2383), .C0(n410), .Y(n470) );
  CLKINVX1 U2054 ( .A(n473), .Y(n2383) );
  NAND2X1 U2055 ( .A(n573), .B(n2388), .Y(n460) );
  OAI21XL U2056 ( .A0(n2396), .A1(n473), .B0(n2216), .Y(n798) );
  NAND4X1 U2057 ( .A(n592), .B(n593), .C(n594), .D(n595), .Y(n582) );
  XOR2X1 U2058 ( .A(str_now[5]), .B(n599), .Y(n592) );
  XOR2X1 U2059 ( .A(str_now[4]), .B(n598), .Y(n593) );
  XOR2X1 U2060 ( .A(str_now[6]), .B(n596), .Y(n595) );
  NAND4X1 U2061 ( .A(n584), .B(n585), .C(n586), .D(n587), .Y(n583) );
  XOR2X1 U2062 ( .A(str_now[3]), .B(n589), .Y(n586) );
  XOR2X1 U2063 ( .A(str_now[1]), .B(n591), .Y(n584) );
  XOR2X1 U2064 ( .A(str_now[0]), .B(n590), .Y(n585) );
  AND2X2 U2065 ( .A(n793), .B(n2230), .Y(n780) );
  OR3X2 U2066 ( .A(n459), .B(n469), .C(n573), .Y(n436) );
  AND2X2 U2067 ( .A(n771), .B(n2230), .Y(n754) );
  AND2X2 U2068 ( .A(n745), .B(n2230), .Y(n733) );
  AND2X2 U2069 ( .A(n722), .B(n2230), .Y(n682) );
  AND2XL U2070 ( .A(N741), .B(N740), .Y(n722) );
  AND2XL U2071 ( .A(N741), .B(n2401), .Y(n745) );
  CLKBUFX3 U2072 ( .A(n2170), .Y(n2204) );
  AND2X2 U2073 ( .A(n2015), .B(n2020), .Y(n2170) );
  CLKBUFX3 U2074 ( .A(n2164), .Y(n2193) );
  AND2X2 U2075 ( .A(n2017), .B(n2011), .Y(n2164) );
  CLKBUFX3 U2076 ( .A(n2169), .Y(n2197) );
  AND2X2 U2077 ( .A(n2013), .B(n2017), .Y(n2169) );
  CLKBUFX3 U2078 ( .A(n2174), .Y(n2201) );
  AND2X2 U2079 ( .A(n2015), .B(n2017), .Y(n2174) );
  CLKBUFX3 U2080 ( .A(n2179), .Y(n2205) );
  AND2X2 U2081 ( .A(n2021), .B(n2017), .Y(n2179) );
  CLKBUFX3 U2082 ( .A(n2168), .Y(n2198) );
  AND2X2 U2083 ( .A(n2013), .B(n2018), .Y(n2168) );
  CLKBUFX3 U2084 ( .A(n2173), .Y(n2202) );
  AND2X2 U2085 ( .A(n2015), .B(n2018), .Y(n2173) );
  CLKBUFX3 U2086 ( .A(n2178), .Y(n2206) );
  AND2X2 U2087 ( .A(n2021), .B(n2018), .Y(n2178) );
  CLKBUFX3 U2088 ( .A(n2166), .Y(n2199) );
  AND2X2 U2089 ( .A(n2013), .B(n2019), .Y(n2166) );
  CLKBUFX3 U2090 ( .A(n2171), .Y(n2203) );
  AND2X2 U2091 ( .A(n2015), .B(n2019), .Y(n2171) );
  CLKBUFX3 U2092 ( .A(n2176), .Y(n2207) );
  AND2X2 U2093 ( .A(n2021), .B(n2019), .Y(n2176) );
  CLKBUFX3 U2094 ( .A(n2160), .Y(n2196) );
  AND2X2 U2095 ( .A(n2020), .B(n2011), .Y(n2160) );
  CLKBUFX3 U2096 ( .A(n2165), .Y(n2200) );
  AND2X2 U2097 ( .A(n2013), .B(n2020), .Y(n2165) );
  CLKBUFX3 U2098 ( .A(n2175), .Y(n2208) );
  AND2X2 U2099 ( .A(n2021), .B(n2020), .Y(n2175) );
  CLKINVX1 U2100 ( .A(n2230), .Y(n2192) );
  CLKINVX1 U2101 ( .A(N738), .Y(n2399) );
  NOR4X1 U2102 ( .A(n774), .B(n775), .C(n776), .D(n777), .Y(n641) );
  OAI22XL U2103 ( .A0(n791), .A1(n719), .B0(n792), .B1(n720), .Y(n774) );
  OAI22XL U2104 ( .A0(n787), .A1(n717), .B0(n788), .B1(n718), .Y(n775) );
  OAI22XL U2105 ( .A0(n783), .A1(n715), .B0(n784), .B1(n716), .Y(n776) );
  AND3X2 U2106 ( .A(n808), .B(n816), .C(n805), .Y(n820) );
  NAND2X1 U2107 ( .A(n2389), .B(n464), .Y(n438) );
  OAI2BB1X1 U2108 ( .A0N(n435), .A1N(n2397), .B0(n2216), .Y(n464) );
  OAI2BB1X1 U2109 ( .A0N(n2009), .A1N(n2010), .B0(n574), .Y(n435) );
  AND4X1 U2110 ( .A(n806), .B(n808), .C(n805), .D(n816), .Y(n2009) );
  AND4X1 U2111 ( .A(n815), .B(n814), .C(n813), .D(n807), .Y(n2010) );
  NAND2X1 U2112 ( .A(n2216), .B(n438), .Y(n440) );
  AND4X1 U2113 ( .A(n807), .B(n806), .C(n823), .D(n808), .Y(n821) );
  NOR2BX1 U2114 ( .AN(n816), .B(n805), .Y(n823) );
  NOR3X1 U2115 ( .A(n815), .B(n814), .C(n813), .Y(n819) );
  INVX3 U2116 ( .A(n2217), .Y(n2391) );
  CLKINVX1 U2117 ( .A(n2216), .Y(n2390) );
  NAND4X1 U2118 ( .A(n590), .B(n598), .C(n597), .D(n596), .Y(n581) );
  OR4X1 U2119 ( .A(n591), .B(n588), .C(n589), .D(n599), .Y(n580) );
  CLKINVX1 U2120 ( .A(n412), .Y(n2386) );
  NAND2X1 U2121 ( .A(n389), .B(n390), .Y(n386) );
  NOR4X1 U2122 ( .A(n398), .B(n399), .C(n400), .D(n401), .Y(n385) );
  ADDHXL U2123 ( .A(n2232), .B(\r534/carry [2]), .CO(\r534/carry [3]), .S(N527) );
  NOR2X1 U2124 ( .A(n2217), .B(n484), .Y(n571) );
  CLKBUFX3 U2125 ( .A(n2322), .Y(n2240) );
  CLKBUFX3 U2126 ( .A(n2322), .Y(n2241) );
  CLKBUFX3 U2127 ( .A(n2322), .Y(n2242) );
  NAND4X1 U2128 ( .A(n857), .B(n858), .C(n859), .D(n860), .Y(n390) );
  XNOR2X1 U2129 ( .A(pat_compare_count[4]), .B(pat_count[4]), .Y(n857) );
  XNOR2X1 U2130 ( .A(pat_count[3]), .B(pat_compare_count[3]), .Y(n860) );
  XNOR2X1 U2131 ( .A(pat_count[0]), .B(N834), .Y(n858) );
  NOR2X1 U2132 ( .A(n861), .B(n862), .Y(n859) );
  XNOR2X1 U2133 ( .A(n302), .B(n2231), .Y(n861) );
  XNOR2X1 U2134 ( .A(n301), .B(pat_compare_count[2]), .Y(n862) );
  CLKBUFX3 U2135 ( .A(pat_compare_count[1]), .Y(n2231) );
  NAND2X2 U2136 ( .A(n2219), .B(isstring), .Y(n561) );
  OAI31X1 U2137 ( .A0(n2390), .A1(reset), .A2(n433), .B0(n2330), .Y(n432) );
  OA21XL U2138 ( .A0(n434), .A1(n435), .B0(n436), .Y(n433) );
  CLKINVX1 U2139 ( .A(n437), .Y(n2330) );
  CLKBUFX3 U2140 ( .A(n493), .Y(n2222) );
  OAI31XL U2141 ( .A0(n486), .A1(pat_count[1]), .A2(n303), .B0(n497), .Y(n493)
         );
  CLKBUFX3 U2142 ( .A(n489), .Y(n2226) );
  OAI31XL U2143 ( .A0(n496), .A1(pat_count[1]), .A2(n303), .B0(n497), .Y(n489)
         );
  OAI222XL U2144 ( .A0(n2372), .A1(n514), .B0(n2338), .B1(n506), .C0(n2220), 
        .C1(n137), .Y(n968) );
  OAI222XL U2145 ( .A0(n2372), .A1(n513), .B0(n2337), .B1(n506), .C0(n2220), 
        .C1(n136), .Y(n967) );
  OAI222XL U2146 ( .A0(n2372), .A1(n512), .B0(n2336), .B1(n506), .C0(n2220), 
        .C1(n135), .Y(n966) );
  OAI222XL U2147 ( .A0(n2372), .A1(n2293), .B0(n2335), .B1(n506), .C0(n2220), 
        .C1(n134), .Y(n965) );
  OAI222XL U2148 ( .A0(n2372), .A1(n2295), .B0(n2334), .B1(n506), .C0(n2220), 
        .C1(n133), .Y(n964) );
  OAI222XL U2149 ( .A0(n2372), .A1(n2297), .B0(n2333), .B1(n506), .C0(n132), 
        .C1(n2220), .Y(n963) );
  OAI222XL U2150 ( .A0(n2372), .A1(n2299), .B0(n2332), .B1(n506), .C0(n2220), 
        .C1(n131), .Y(n962) );
  OAI222XL U2151 ( .A0(n2372), .A1(n2301), .B0(n2331), .B1(n506), .C0(n2220), 
        .C1(n130), .Y(n961) );
  OAI222XL U2152 ( .A0(n311), .A1(n2381), .B0(n474), .B1(n2338), .C0(n2229), 
        .C1(n483), .Y(n891) );
  OAI222XL U2153 ( .A0(n310), .A1(n2381), .B0(n474), .B1(n2337), .C0(n2229), 
        .C1(n482), .Y(n890) );
  OAI222XL U2154 ( .A0(n308), .A1(n2381), .B0(n474), .B1(n2335), .C0(n2229), 
        .C1(n480), .Y(n888) );
  OAI222XL U2155 ( .A0(n307), .A1(n2381), .B0(n474), .B1(n2334), .C0(n2229), 
        .C1(n479), .Y(n887) );
  OAI222XL U2156 ( .A0(n306), .A1(n2381), .B0(n474), .B1(n2333), .C0(n2229), 
        .C1(n2218), .Y(n886) );
  OAI222XL U2157 ( .A0(n305), .A1(n2381), .B0(n474), .B1(n2332), .C0(n2229), 
        .C1(n477), .Y(n885) );
  OAI222XL U2158 ( .A0(n304), .A1(n2381), .B0(n474), .B1(n2331), .C0(n2229), 
        .C1(n476), .Y(n884) );
  OAI222XL U2159 ( .A0(n309), .A1(n2381), .B0(n474), .B1(n2336), .C0(n2229), 
        .C1(n481), .Y(n889) );
  OAI21X1 U2160 ( .A0(ispattern), .A1(n2391), .B0(n503), .Y(n500) );
  NOR3X2 U2161 ( .A(n2390), .B(reset), .C(n430), .Y(n437) );
  NAND2X2 U2162 ( .A(chardata[0]), .B(n495), .Y(n483) );
  NAND2X2 U2163 ( .A(chardata[1]), .B(n495), .Y(n482) );
  NAND2X2 U2164 ( .A(chardata[2]), .B(n495), .Y(n481) );
  NAND2X2 U2165 ( .A(chardata[3]), .B(n495), .Y(n480) );
  NAND2X2 U2166 ( .A(chardata[4]), .B(n495), .Y(n479) );
  NAND2X2 U2167 ( .A(chardata[6]), .B(n495), .Y(n477) );
  NAND2X2 U2168 ( .A(n495), .B(chardata[7]), .Y(n476) );
  NOR4X1 U2169 ( .A(chardata[0]), .B(n571), .C(n2218), .D(n2336), .Y(n570) );
  NAND2X1 U2170 ( .A(isstring), .B(n566), .Y(n564) );
  OAI22XL U2171 ( .A0(n2219), .A1(n2394), .B0(n2338), .B1(n561), .Y(n1224) );
  CLKINVX1 U2172 ( .A(\str[32][0] ), .Y(n2394) );
  OAI22XL U2173 ( .A0(n2219), .A1(n2393), .B0(n2337), .B1(n561), .Y(n1222) );
  CLKINVX1 U2174 ( .A(\str[32][1] ), .Y(n2393) );
  OAI22XL U2175 ( .A0(n2219), .A1(n2392), .B0(n2336), .B1(n561), .Y(n1221) );
  OAI22XL U2176 ( .A0(n2219), .A1(n293), .B0(n2331), .B1(n561), .Y(n1223) );
  OAI22XL U2177 ( .A0(n2219), .A1(n297), .B0(n2335), .B1(n561), .Y(n1220) );
  OAI22XL U2178 ( .A0(n2219), .A1(n296), .B0(n2334), .B1(n561), .Y(n1219) );
  OAI22XL U2179 ( .A0(n2219), .A1(n295), .B0(n2333), .B1(n561), .Y(n1218) );
  OAI22XL U2180 ( .A0(n2219), .A1(n294), .B0(n2332), .B1(n561), .Y(n1217) );
  CLKBUFX3 U2181 ( .A(n475), .Y(n2229) );
  AOI2BB2X1 U2182 ( .B0(n484), .B1(ispattern), .A0N(n485), .A1N(n486), .Y(n475) );
  OAI22XL U2183 ( .A0(n524), .A1(n257), .B0(n2365), .B1(n2294), .Y(n1099) );
  OAI22XL U2184 ( .A0(n524), .A1(n256), .B0(n2365), .B1(n2296), .Y(n1068) );
  OAI22XL U2185 ( .A0(n524), .A1(n254), .B0(n2365), .B1(n2300), .Y(n1006) );
  OAI22XL U2186 ( .A0(n524), .A1(n253), .B0(n2365), .B1(n2302), .Y(n975) );
  OAI22XL U2187 ( .A0(n531), .A1(n222), .B0(n2358), .B1(n2294), .Y(n1106) );
  OAI22XL U2188 ( .A0(n531), .A1(n221), .B0(n2358), .B1(n2296), .Y(n1075) );
  OAI22XL U2189 ( .A0(n531), .A1(n219), .B0(n2358), .B1(n2300), .Y(n1013) );
  OAI22XL U2190 ( .A0(n531), .A1(n218), .B0(n2358), .B1(n2302), .Y(n982) );
  OAI22XL U2191 ( .A0(n529), .A1(n232), .B0(n2360), .B1(n2294), .Y(n1104) );
  OAI22XL U2192 ( .A0(n529), .A1(n231), .B0(n2360), .B1(n2296), .Y(n1073) );
  OAI22XL U2193 ( .A0(n529), .A1(n229), .B0(n2360), .B1(n2300), .Y(n1011) );
  OAI22XL U2194 ( .A0(n529), .A1(n228), .B0(n2360), .B1(n2302), .Y(n980) );
  OAI22XL U2195 ( .A0(n527), .A1(n242), .B0(n2362), .B1(n2294), .Y(n1102) );
  OAI22XL U2196 ( .A0(n527), .A1(n241), .B0(n2362), .B1(n2296), .Y(n1071) );
  OAI22XL U2197 ( .A0(n527), .A1(n239), .B0(n2362), .B1(n2300), .Y(n1009) );
  OAI22XL U2198 ( .A0(n527), .A1(n238), .B0(n2362), .B1(n2302), .Y(n978) );
  OAI22XL U2199 ( .A0(n532), .A1(n217), .B0(n2357), .B1(n2294), .Y(n1107) );
  OAI22XL U2200 ( .A0(n532), .A1(n216), .B0(n2357), .B1(n2296), .Y(n1076) );
  OAI22XL U2201 ( .A0(n532), .A1(n214), .B0(n2357), .B1(n2300), .Y(n1014) );
  OAI22XL U2202 ( .A0(n532), .A1(n213), .B0(n2357), .B1(n2302), .Y(n983) );
  OAI22XL U2203 ( .A0(n530), .A1(n227), .B0(n2359), .B1(n2294), .Y(n1105) );
  OAI22XL U2204 ( .A0(n530), .A1(n226), .B0(n2359), .B1(n2296), .Y(n1074) );
  OAI22XL U2205 ( .A0(n530), .A1(n224), .B0(n2359), .B1(n2300), .Y(n1012) );
  OAI22XL U2206 ( .A0(n530), .A1(n223), .B0(n2359), .B1(n2302), .Y(n981) );
  OAI22XL U2207 ( .A0(n528), .A1(n237), .B0(n2361), .B1(n2294), .Y(n1103) );
  OAI22XL U2208 ( .A0(n528), .A1(n236), .B0(n2361), .B1(n2296), .Y(n1072) );
  OAI22XL U2209 ( .A0(n528), .A1(n234), .B0(n2361), .B1(n2300), .Y(n1010) );
  OAI22XL U2210 ( .A0(n528), .A1(n233), .B0(n2361), .B1(n2302), .Y(n979) );
  OAI22XL U2211 ( .A0(n526), .A1(n247), .B0(n2363), .B1(n2294), .Y(n1101) );
  OAI22XL U2212 ( .A0(n526), .A1(n246), .B0(n2363), .B1(n2296), .Y(n1070) );
  OAI22XL U2213 ( .A0(n526), .A1(n244), .B0(n2363), .B1(n2300), .Y(n1008) );
  OAI22XL U2214 ( .A0(n526), .A1(n243), .B0(n2363), .B1(n2302), .Y(n977) );
  OAI22XL U2215 ( .A0(n533), .A1(n212), .B0(n2356), .B1(n2294), .Y(n1108) );
  OAI22XL U2216 ( .A0(n533), .A1(n211), .B0(n2356), .B1(n2296), .Y(n1077) );
  OAI22XL U2217 ( .A0(n533), .A1(n209), .B0(n2356), .B1(n2300), .Y(n1015) );
  OAI22XL U2218 ( .A0(n533), .A1(n208), .B0(n2356), .B1(n2302), .Y(n984) );
  OAI22XL U2219 ( .A0(n539), .A1(n182), .B0(n2350), .B1(n2293), .Y(n1114) );
  OAI22XL U2220 ( .A0(n539), .A1(n181), .B0(n2350), .B1(n2295), .Y(n1083) );
  OAI22XL U2221 ( .A0(n539), .A1(n179), .B0(n2350), .B1(n2299), .Y(n1021) );
  OAI22XL U2222 ( .A0(n539), .A1(n178), .B0(n2350), .B1(n2301), .Y(n990) );
  OAI22XL U2223 ( .A0(n537), .A1(n192), .B0(n2352), .B1(n2293), .Y(n1112) );
  OAI22XL U2224 ( .A0(n537), .A1(n191), .B0(n2352), .B1(n2295), .Y(n1081) );
  OAI22XL U2225 ( .A0(n537), .A1(n189), .B0(n2352), .B1(n2299), .Y(n1019) );
  OAI22XL U2226 ( .A0(n537), .A1(n188), .B0(n2352), .B1(n2301), .Y(n988) );
  OAI22XL U2227 ( .A0(n535), .A1(n202), .B0(n2354), .B1(n2294), .Y(n1110) );
  OAI22XL U2228 ( .A0(n535), .A1(n201), .B0(n2354), .B1(n2296), .Y(n1079) );
  OAI22XL U2229 ( .A0(n535), .A1(n199), .B0(n2354), .B1(n2300), .Y(n1017) );
  OAI22XL U2230 ( .A0(n535), .A1(n198), .B0(n2354), .B1(n2302), .Y(n986) );
  OAI22XL U2231 ( .A0(n540), .A1(n177), .B0(n2349), .B1(n2293), .Y(n1115) );
  OAI22XL U2232 ( .A0(n540), .A1(n176), .B0(n2349), .B1(n2295), .Y(n1084) );
  OAI22XL U2233 ( .A0(n540), .A1(n174), .B0(n2349), .B1(n2299), .Y(n1022) );
  OAI22XL U2234 ( .A0(n540), .A1(n173), .B0(n2349), .B1(n2301), .Y(n991) );
  OAI22XL U2235 ( .A0(n538), .A1(n187), .B0(n2351), .B1(n2293), .Y(n1113) );
  OAI22XL U2236 ( .A0(n538), .A1(n186), .B0(n2351), .B1(n2295), .Y(n1082) );
  OAI22XL U2237 ( .A0(n538), .A1(n184), .B0(n2351), .B1(n2299), .Y(n1020) );
  OAI22XL U2238 ( .A0(n538), .A1(n183), .B0(n2351), .B1(n2301), .Y(n989) );
  OAI22XL U2239 ( .A0(n536), .A1(n197), .B0(n2353), .B1(n2294), .Y(n1111) );
  OAI22XL U2240 ( .A0(n536), .A1(n196), .B0(n2353), .B1(n2296), .Y(n1080) );
  OAI22XL U2241 ( .A0(n536), .A1(n194), .B0(n2353), .B1(n2300), .Y(n1018) );
  OAI22XL U2242 ( .A0(n536), .A1(n193), .B0(n2353), .B1(n2302), .Y(n987) );
  OAI22XL U2243 ( .A0(n534), .A1(n207), .B0(n2355), .B1(n2294), .Y(n1109) );
  OAI22XL U2244 ( .A0(n534), .A1(n206), .B0(n2355), .B1(n2296), .Y(n1078) );
  OAI22XL U2245 ( .A0(n534), .A1(n204), .B0(n2355), .B1(n2300), .Y(n1016) );
  OAI22XL U2246 ( .A0(n534), .A1(n203), .B0(n2355), .B1(n2302), .Y(n985) );
  OAI22XL U2247 ( .A0(n541), .A1(n172), .B0(n2348), .B1(n2293), .Y(n1116) );
  OAI22XL U2248 ( .A0(n541), .A1(n171), .B0(n2348), .B1(n2295), .Y(n1085) );
  OAI22XL U2249 ( .A0(n541), .A1(n169), .B0(n2348), .B1(n2299), .Y(n1023) );
  OAI22XL U2250 ( .A0(n541), .A1(n168), .B0(n2348), .B1(n2301), .Y(n992) );
  OAI22XL U2251 ( .A0(n547), .A1(n142), .B0(n2342), .B1(n2293), .Y(n1122) );
  OAI22XL U2252 ( .A0(n547), .A1(n141), .B0(n2342), .B1(n2295), .Y(n1091) );
  OAI22XL U2253 ( .A0(n547), .A1(n139), .B0(n2342), .B1(n2299), .Y(n1029) );
  OAI22XL U2254 ( .A0(n547), .A1(n138), .B0(n2342), .B1(n2301), .Y(n998) );
  OAI22XL U2255 ( .A0(n545), .A1(n152), .B0(n2344), .B1(n2293), .Y(n1120) );
  OAI22XL U2256 ( .A0(n545), .A1(n151), .B0(n2344), .B1(n2295), .Y(n1089) );
  OAI22XL U2257 ( .A0(n545), .A1(n149), .B0(n2344), .B1(n2299), .Y(n1027) );
  OAI22XL U2258 ( .A0(n545), .A1(n148), .B0(n2344), .B1(n2301), .Y(n996) );
  OAI22XL U2259 ( .A0(n543), .A1(n162), .B0(n2346), .B1(n2293), .Y(n1118) );
  OAI22XL U2260 ( .A0(n543), .A1(n161), .B0(n2346), .B1(n2295), .Y(n1087) );
  OAI22XL U2261 ( .A0(n543), .A1(n159), .B0(n2346), .B1(n2299), .Y(n1025) );
  OAI22XL U2262 ( .A0(n543), .A1(n158), .B0(n2346), .B1(n2301), .Y(n994) );
  OAI22XL U2263 ( .A0(n546), .A1(n147), .B0(n2343), .B1(n2293), .Y(n1121) );
  OAI22XL U2264 ( .A0(n546), .A1(n146), .B0(n2343), .B1(n2295), .Y(n1090) );
  OAI22XL U2265 ( .A0(n546), .A1(n144), .B0(n2343), .B1(n2299), .Y(n1028) );
  OAI22XL U2266 ( .A0(n546), .A1(n143), .B0(n2343), .B1(n2301), .Y(n997) );
  OAI22XL U2267 ( .A0(n544), .A1(n157), .B0(n2345), .B1(n2293), .Y(n1119) );
  OAI22XL U2268 ( .A0(n544), .A1(n156), .B0(n2345), .B1(n2295), .Y(n1088) );
  OAI22XL U2269 ( .A0(n544), .A1(n154), .B0(n2345), .B1(n2299), .Y(n1026) );
  OAI22XL U2270 ( .A0(n544), .A1(n153), .B0(n2345), .B1(n2301), .Y(n995) );
  OAI22XL U2271 ( .A0(n542), .A1(n167), .B0(n2347), .B1(n2293), .Y(n1117) );
  OAI22XL U2272 ( .A0(n542), .A1(n166), .B0(n2347), .B1(n2295), .Y(n1086) );
  OAI22XL U2273 ( .A0(n542), .A1(n164), .B0(n2347), .B1(n2299), .Y(n1024) );
  OAI22XL U2274 ( .A0(n542), .A1(n163), .B0(n2347), .B1(n2301), .Y(n993) );
  OAI22XL U2275 ( .A0(n548), .A1(n292), .B0(n2341), .B1(n2293), .Y(n1123) );
  OAI22XL U2276 ( .A0(n548), .A1(n291), .B0(n2341), .B1(n2295), .Y(n1092) );
  OAI22XL U2277 ( .A0(n548), .A1(n289), .B0(n2341), .B1(n2299), .Y(n1030) );
  OAI22XL U2278 ( .A0(n548), .A1(n288), .B0(n2341), .B1(n2301), .Y(n999) );
  OAI22XL U2279 ( .A0(n523), .A1(n262), .B0(n2366), .B1(n2294), .Y(n1098) );
  OAI22XL U2280 ( .A0(n523), .A1(n261), .B0(n2366), .B1(n2296), .Y(n1067) );
  OAI22XL U2281 ( .A0(n523), .A1(n259), .B0(n2366), .B1(n2300), .Y(n1005) );
  OAI22XL U2282 ( .A0(n523), .A1(n258), .B0(n2366), .B1(n2302), .Y(n974) );
  OAI22XL U2283 ( .A0(n521), .A1(n272), .B0(n2368), .B1(n2293), .Y(n1096) );
  OAI22XL U2284 ( .A0(n521), .A1(n271), .B0(n2368), .B1(n2295), .Y(n1065) );
  OAI22XL U2285 ( .A0(n521), .A1(n269), .B0(n2368), .B1(n2299), .Y(n1003) );
  OAI22XL U2286 ( .A0(n521), .A1(n268), .B0(n2368), .B1(n2301), .Y(n972) );
  OAI22XL U2287 ( .A0(n519), .A1(n282), .B0(n2370), .B1(n511), .Y(n1094) );
  OAI22XL U2288 ( .A0(n519), .A1(n281), .B0(n2370), .B1(n510), .Y(n1063) );
  OAI22XL U2289 ( .A0(n519), .A1(n279), .B0(n2370), .B1(n508), .Y(n1001) );
  OAI22XL U2290 ( .A0(n519), .A1(n278), .B0(n2370), .B1(n505), .Y(n970) );
  OAI22XL U2291 ( .A0(n522), .A1(n267), .B0(n2367), .B1(n511), .Y(n1097) );
  OAI22XL U2292 ( .A0(n522), .A1(n266), .B0(n2367), .B1(n510), .Y(n1066) );
  OAI22XL U2293 ( .A0(n522), .A1(n264), .B0(n2367), .B1(n508), .Y(n1004) );
  OAI22XL U2294 ( .A0(n522), .A1(n263), .B0(n2367), .B1(n505), .Y(n973) );
  OAI22XL U2295 ( .A0(n520), .A1(n277), .B0(n2369), .B1(n511), .Y(n1095) );
  OAI22XL U2296 ( .A0(n520), .A1(n276), .B0(n2369), .B1(n510), .Y(n1064) );
  OAI22XL U2297 ( .A0(n520), .A1(n274), .B0(n2369), .B1(n508), .Y(n1002) );
  OAI22XL U2298 ( .A0(n520), .A1(n273), .B0(n2369), .B1(n505), .Y(n971) );
  OAI22XL U2299 ( .A0(n518), .A1(n287), .B0(n2371), .B1(n511), .Y(n1093) );
  OAI22XL U2300 ( .A0(n518), .A1(n286), .B0(n2371), .B1(n510), .Y(n1062) );
  OAI22XL U2301 ( .A0(n518), .A1(n284), .B0(n2371), .B1(n508), .Y(n1000) );
  OAI22XL U2302 ( .A0(n518), .A1(n283), .B0(n2371), .B1(n505), .Y(n969) );
  OAI22XL U2303 ( .A0(n525), .A1(n252), .B0(n2364), .B1(n2294), .Y(n1100) );
  OAI22XL U2304 ( .A0(n525), .A1(n251), .B0(n2364), .B1(n2296), .Y(n1069) );
  OAI22XL U2305 ( .A0(n525), .A1(n249), .B0(n2364), .B1(n2300), .Y(n1007) );
  OAI22XL U2306 ( .A0(n525), .A1(n248), .B0(n2364), .B1(n2302), .Y(n976) );
  OAI22XL U2307 ( .A0(n2375), .A1(n483), .B0(n327), .B1(n2223), .Y(n953) );
  OAI22XL U2308 ( .A0(n2375), .A1(n482), .B0(n326), .B1(n2223), .Y(n945) );
  OAI22XL U2309 ( .A0(n2375), .A1(n481), .B0(n325), .B1(n2223), .Y(n937) );
  OAI22XL U2310 ( .A0(n2375), .A1(n480), .B0(n324), .B1(n2223), .Y(n929) );
  OAI22XL U2311 ( .A0(n2375), .A1(n479), .B0(n323), .B1(n2223), .Y(n921) );
  OAI22XL U2312 ( .A0(n2375), .A1(n2218), .B0(n322), .B1(n2223), .Y(n913) );
  OAI22XL U2313 ( .A0(n2375), .A1(n477), .B0(n321), .B1(n2223), .Y(n905) );
  OAI22XL U2314 ( .A0(n2375), .A1(n476), .B0(n320), .B1(n2223), .Y(n897) );
  OAI22XL U2315 ( .A0(n2379), .A1(n483), .B0(n359), .B1(n2227), .Y(n949) );
  OAI22XL U2316 ( .A0(n2379), .A1(n482), .B0(n358), .B1(n2227), .Y(n941) );
  OAI22XL U2317 ( .A0(n2379), .A1(n481), .B0(n357), .B1(n2227), .Y(n933) );
  OAI22XL U2318 ( .A0(n2379), .A1(n480), .B0(n356), .B1(n2227), .Y(n925) );
  OAI22XL U2319 ( .A0(n2379), .A1(n479), .B0(n355), .B1(n2227), .Y(n917) );
  OAI22XL U2320 ( .A0(n2379), .A1(n2218), .B0(n354), .B1(n2227), .Y(n909) );
  OAI22XL U2321 ( .A0(n2379), .A1(n477), .B0(n353), .B1(n2227), .Y(n901) );
  OAI22XL U2322 ( .A0(n2379), .A1(n476), .B0(n352), .B1(n2227), .Y(n893) );
  OAI22XL U2323 ( .A0(n2373), .A1(n483), .B0(n375), .B1(n2221), .Y(n955) );
  OAI22XL U2324 ( .A0(n2373), .A1(n482), .B0(n374), .B1(n2221), .Y(n947) );
  OAI22XL U2325 ( .A0(n2373), .A1(n481), .B0(n373), .B1(n2221), .Y(n939) );
  OAI22XL U2326 ( .A0(n2373), .A1(n480), .B0(n372), .B1(n2221), .Y(n931) );
  OAI22XL U2327 ( .A0(n2373), .A1(n479), .B0(n371), .B1(n2221), .Y(n923) );
  OAI22XL U2328 ( .A0(n2373), .A1(n2218), .B0(n370), .B1(n2221), .Y(n915) );
  OAI22XL U2329 ( .A0(n2373), .A1(n477), .B0(n369), .B1(n2221), .Y(n907) );
  OAI22XL U2330 ( .A0(n2373), .A1(n476), .B0(n368), .B1(n2221), .Y(n899) );
  OAI22XL U2331 ( .A0(n2377), .A1(n483), .B0(n343), .B1(n2225), .Y(n951) );
  OAI22XL U2332 ( .A0(n2377), .A1(n482), .B0(n342), .B1(n2225), .Y(n943) );
  OAI22XL U2333 ( .A0(n2377), .A1(n481), .B0(n341), .B1(n2225), .Y(n935) );
  OAI22XL U2334 ( .A0(n2377), .A1(n480), .B0(n340), .B1(n2225), .Y(n927) );
  OAI22XL U2335 ( .A0(n2377), .A1(n479), .B0(n339), .B1(n2225), .Y(n919) );
  OAI22XL U2336 ( .A0(n2377), .A1(n2218), .B0(n338), .B1(n2225), .Y(n911) );
  OAI22XL U2337 ( .A0(n2377), .A1(n477), .B0(n337), .B1(n2225), .Y(n903) );
  OAI22XL U2338 ( .A0(n2377), .A1(n476), .B0(n336), .B1(n2225), .Y(n895) );
  OAI22XL U2339 ( .A0(n2374), .A1(n483), .B0(n319), .B1(n2222), .Y(n954) );
  OAI22XL U2340 ( .A0(n2374), .A1(n482), .B0(n318), .B1(n2222), .Y(n946) );
  OAI22XL U2341 ( .A0(n2374), .A1(n481), .B0(n317), .B1(n2222), .Y(n938) );
  OAI22XL U2342 ( .A0(n2374), .A1(n480), .B0(n316), .B1(n2222), .Y(n930) );
  OAI22XL U2343 ( .A0(n2374), .A1(n479), .B0(n315), .B1(n2222), .Y(n922) );
  OAI22XL U2344 ( .A0(n2374), .A1(n2218), .B0(n314), .B1(n2222), .Y(n914) );
  OAI22XL U2345 ( .A0(n2374), .A1(n477), .B0(n313), .B1(n2222), .Y(n906) );
  OAI22XL U2346 ( .A0(n2374), .A1(n476), .B0(n312), .B1(n2222), .Y(n898) );
  OAI22XL U2347 ( .A0(n2376), .A1(n483), .B0(n335), .B1(n2224), .Y(n952) );
  OAI22XL U2348 ( .A0(n2376), .A1(n482), .B0(n334), .B1(n2224), .Y(n944) );
  OAI22XL U2349 ( .A0(n2376), .A1(n481), .B0(n333), .B1(n2224), .Y(n936) );
  OAI22XL U2350 ( .A0(n2376), .A1(n480), .B0(n332), .B1(n2224), .Y(n928) );
  OAI22XL U2351 ( .A0(n2376), .A1(n479), .B0(n331), .B1(n2224), .Y(n920) );
  OAI22XL U2352 ( .A0(n2376), .A1(n2218), .B0(n330), .B1(n2224), .Y(n912) );
  OAI22XL U2353 ( .A0(n2376), .A1(n477), .B0(n329), .B1(n2224), .Y(n904) );
  OAI22XL U2354 ( .A0(n2376), .A1(n476), .B0(n328), .B1(n2224), .Y(n896) );
  OAI22XL U2355 ( .A0(n2378), .A1(n483), .B0(n351), .B1(n2226), .Y(n950) );
  OAI22XL U2356 ( .A0(n2378), .A1(n482), .B0(n350), .B1(n2226), .Y(n942) );
  OAI22XL U2357 ( .A0(n2378), .A1(n481), .B0(n349), .B1(n2226), .Y(n934) );
  OAI22XL U2358 ( .A0(n2378), .A1(n480), .B0(n348), .B1(n2226), .Y(n926) );
  OAI22XL U2359 ( .A0(n2378), .A1(n479), .B0(n347), .B1(n2226), .Y(n918) );
  OAI22XL U2360 ( .A0(n2378), .A1(n2218), .B0(n346), .B1(n2226), .Y(n910) );
  OAI22XL U2361 ( .A0(n2378), .A1(n477), .B0(n345), .B1(n2226), .Y(n902) );
  OAI22XL U2362 ( .A0(n2378), .A1(n476), .B0(n344), .B1(n2226), .Y(n894) );
  OAI22XL U2363 ( .A0(n2380), .A1(n483), .B0(n367), .B1(n2228), .Y(n948) );
  OAI22XL U2364 ( .A0(n2380), .A1(n482), .B0(n366), .B1(n2228), .Y(n940) );
  OAI22XL U2365 ( .A0(n2380), .A1(n481), .B0(n365), .B1(n2228), .Y(n932) );
  OAI22XL U2366 ( .A0(n2380), .A1(n480), .B0(n364), .B1(n2228), .Y(n924) );
  OAI22XL U2367 ( .A0(n2380), .A1(n479), .B0(n363), .B1(n2228), .Y(n916) );
  OAI22XL U2368 ( .A0(n2380), .A1(n2218), .B0(n362), .B1(n2228), .Y(n908) );
  OAI22XL U2369 ( .A0(n2380), .A1(n477), .B0(n361), .B1(n2228), .Y(n900) );
  OAI22XL U2370 ( .A0(n2380), .A1(n476), .B0(n360), .B1(n2228), .Y(n892) );
  OAI22XL U2371 ( .A0(n290), .A1(n548), .B0(n2341), .B1(n2297), .Y(n1061) );
  OAI22XL U2372 ( .A0(n170), .A1(n541), .B0(n2348), .B1(n2297), .Y(n1054) );
  OAI22XL U2373 ( .A0(n210), .A1(n533), .B0(n2356), .B1(n2298), .Y(n1046) );
  OAI22XL U2374 ( .A0(n220), .A1(n531), .B0(n2358), .B1(n2298), .Y(n1044) );
  OAI22XL U2375 ( .A0(n260), .A1(n523), .B0(n2366), .B1(n2298), .Y(n1036) );
  OAI22XL U2376 ( .A0(n150), .A1(n545), .B0(n2344), .B1(n2297), .Y(n1058) );
  OAI22XL U2377 ( .A0(n190), .A1(n537), .B0(n2352), .B1(n2297), .Y(n1050) );
  OAI22XL U2378 ( .A0(n230), .A1(n529), .B0(n2360), .B1(n2298), .Y(n1042) );
  OAI22XL U2379 ( .A0(n270), .A1(n521), .B0(n2368), .B1(n2298), .Y(n1034) );
  OAI22XL U2380 ( .A0(n160), .A1(n543), .B0(n2346), .B1(n2297), .Y(n1056) );
  OAI22XL U2381 ( .A0(n200), .A1(n535), .B0(n2354), .B1(n2298), .Y(n1048) );
  OAI22XL U2382 ( .A0(n240), .A1(n527), .B0(n2362), .B1(n2298), .Y(n1040) );
  OAI22XL U2383 ( .A0(n280), .A1(n519), .B0(n2370), .B1(n2297), .Y(n1032) );
  OAI22XL U2384 ( .A0(n175), .A1(n540), .B0(n2349), .B1(n2297), .Y(n1053) );
  OAI22XL U2385 ( .A0(n215), .A1(n532), .B0(n2357), .B1(n2298), .Y(n1045) );
  OAI22XL U2386 ( .A0(n255), .A1(n524), .B0(n2365), .B1(n509), .Y(n1037) );
  OAI22XL U2387 ( .A0(n140), .A1(n547), .B0(n2342), .B1(n2297), .Y(n1060) );
  OAI22XL U2388 ( .A0(n180), .A1(n539), .B0(n2350), .B1(n2297), .Y(n1052) );
  OAI22XL U2389 ( .A0(n145), .A1(n546), .B0(n2343), .B1(n2297), .Y(n1059) );
  OAI22XL U2390 ( .A0(n185), .A1(n538), .B0(n2351), .B1(n2297), .Y(n1051) );
  OAI22XL U2391 ( .A0(n225), .A1(n530), .B0(n2359), .B1(n2298), .Y(n1043) );
  OAI22XL U2392 ( .A0(n265), .A1(n522), .B0(n2367), .B1(n509), .Y(n1035) );
  OAI22XL U2393 ( .A0(n155), .A1(n544), .B0(n2345), .B1(n2297), .Y(n1057) );
  OAI22XL U2394 ( .A0(n195), .A1(n536), .B0(n2353), .B1(n2298), .Y(n1049) );
  OAI22XL U2395 ( .A0(n235), .A1(n528), .B0(n2361), .B1(n2298), .Y(n1041) );
  OAI22XL U2396 ( .A0(n275), .A1(n520), .B0(n2369), .B1(n509), .Y(n1033) );
  OAI22XL U2397 ( .A0(n165), .A1(n542), .B0(n2347), .B1(n2297), .Y(n1055) );
  OAI22XL U2398 ( .A0(n205), .A1(n534), .B0(n2355), .B1(n2298), .Y(n1047) );
  OAI22XL U2399 ( .A0(n245), .A1(n526), .B0(n2363), .B1(n2298), .Y(n1039) );
  OAI22XL U2400 ( .A0(n250), .A1(n525), .B0(n2364), .B1(n2298), .Y(n1038) );
  OAI22XL U2401 ( .A0(n285), .A1(n518), .B0(n2371), .B1(n509), .Y(n1031) );
  OAI2BB2XL U2402 ( .B0(n2339), .B1(n2319), .A0N(N530), .A1N(n563), .Y(n1225)
         );
  OAI2BB2XL U2403 ( .B0(n2339), .B1(n128), .A0N(N526), .A1N(n563), .Y(n1229)
         );
  NAND2X1 U2404 ( .A(n567), .B(n568), .Y(n1230) );
  OAI21XL U2405 ( .A0(n2217), .A1(n571), .B0(DOLLOR_flag), .Y(n567) );
  NAND4X1 U2406 ( .A(n2337), .B(n2335), .C(n569), .D(n570), .Y(n568) );
  NOR3X1 U2407 ( .A(chardata[4]), .B(chardata[7]), .C(chardata[6]), .Y(n569)
         );
  OAI2BB2XL U2408 ( .B0(n2365), .B1(n2287), .A0N(n2365), .A1N(\str[24][0] ), 
        .Y(n1192) );
  OAI2BB2XL U2409 ( .B0(n2365), .B1(n2289), .A0N(n2365), .A1N(\str[24][1] ), 
        .Y(n1161) );
  OAI2BB2XL U2410 ( .B0(n2365), .B1(n2291), .A0N(n2365), .A1N(\str[24][2] ), 
        .Y(n1130) );
  OAI2BB2XL U2411 ( .B0(n2356), .B1(n2288), .A0N(n2356), .A1N(\str[15][0] ), 
        .Y(n1201) );
  OAI2BB2XL U2412 ( .B0(n2356), .B1(n2290), .A0N(n2356), .A1N(\str[15][1] ), 
        .Y(n1170) );
  OAI2BB2XL U2413 ( .B0(n2356), .B1(n2292), .A0N(n2356), .A1N(\str[15][2] ), 
        .Y(n1139) );
  OAI2BB2XL U2414 ( .B0(n2350), .B1(n2287), .A0N(n2350), .A1N(\str[9][0] ), 
        .Y(n1207) );
  OAI2BB2XL U2415 ( .B0(n2350), .B1(n2289), .A0N(n2350), .A1N(\str[9][1] ), 
        .Y(n1176) );
  OAI2BB2XL U2416 ( .B0(n2350), .B1(n2291), .A0N(n2350), .A1N(\str[9][2] ), 
        .Y(n1145) );
  OAI2BB2XL U2417 ( .B0(n2358), .B1(n2288), .A0N(n2358), .A1N(\str[17][0] ), 
        .Y(n1199) );
  OAI2BB2XL U2418 ( .B0(n2358), .B1(n2290), .A0N(n2358), .A1N(\str[17][1] ), 
        .Y(n1168) );
  OAI2BB2XL U2419 ( .B0(n2358), .B1(n2292), .A0N(n2358), .A1N(\str[17][2] ), 
        .Y(n1137) );
  OAI2BB2XL U2420 ( .B0(n2352), .B1(n2287), .A0N(n2352), .A1N(\str[11][0] ), 
        .Y(n1205) );
  OAI2BB2XL U2421 ( .B0(n2352), .B1(n2289), .A0N(n2352), .A1N(\str[11][1] ), 
        .Y(n1174) );
  OAI2BB2XL U2422 ( .B0(n2352), .B1(n2291), .A0N(n2352), .A1N(\str[11][2] ), 
        .Y(n1143) );
  OAI2BB2XL U2423 ( .B0(n2360), .B1(n2288), .A0N(n2360), .A1N(\str[19][0] ), 
        .Y(n1197) );
  OAI2BB2XL U2424 ( .B0(n2360), .B1(n2290), .A0N(n2360), .A1N(\str[19][1] ), 
        .Y(n1166) );
  OAI2BB2XL U2425 ( .B0(n2360), .B1(n2292), .A0N(n2360), .A1N(\str[19][2] ), 
        .Y(n1135) );
  OAI2BB2XL U2426 ( .B0(n2354), .B1(n2288), .A0N(n2354), .A1N(\str[13][0] ), 
        .Y(n1203) );
  OAI2BB2XL U2427 ( .B0(n2354), .B1(n2290), .A0N(n2354), .A1N(\str[13][1] ), 
        .Y(n1172) );
  OAI2BB2XL U2428 ( .B0(n2354), .B1(n2292), .A0N(n2354), .A1N(\str[13][2] ), 
        .Y(n1141) );
  OAI2BB2XL U2429 ( .B0(n2362), .B1(n2288), .A0N(n2362), .A1N(\str[21][0] ), 
        .Y(n1195) );
  OAI2BB2XL U2430 ( .B0(n2362), .B1(n2290), .A0N(n2362), .A1N(\str[21][1] ), 
        .Y(n1164) );
  OAI2BB2XL U2431 ( .B0(n2362), .B1(n2292), .A0N(n2362), .A1N(\str[21][2] ), 
        .Y(n1133) );
  OAI2BB2XL U2432 ( .B0(n2349), .B1(n2287), .A0N(n2349), .A1N(\str[8][0] ), 
        .Y(n1208) );
  OAI2BB2XL U2433 ( .B0(n2349), .B1(n2289), .A0N(n2349), .A1N(\str[8][1] ), 
        .Y(n1177) );
  OAI2BB2XL U2434 ( .B0(n2349), .B1(n2291), .A0N(n2349), .A1N(\str[8][2] ), 
        .Y(n1146) );
  OAI2BB2XL U2435 ( .B0(n2357), .B1(n2288), .A0N(n2357), .A1N(\str[16][0] ), 
        .Y(n1200) );
  OAI2BB2XL U2436 ( .B0(n2357), .B1(n2290), .A0N(n2357), .A1N(\str[16][1] ), 
        .Y(n1169) );
  OAI2BB2XL U2437 ( .B0(n2357), .B1(n2292), .A0N(n2357), .A1N(\str[16][2] ), 
        .Y(n1138) );
  OAI2BB2XL U2438 ( .B0(n2351), .B1(n2287), .A0N(n2351), .A1N(\str[10][0] ), 
        .Y(n1206) );
  OAI2BB2XL U2439 ( .B0(n2351), .B1(n2289), .A0N(n2351), .A1N(\str[10][1] ), 
        .Y(n1175) );
  OAI2BB2XL U2440 ( .B0(n2351), .B1(n2291), .A0N(n2351), .A1N(\str[10][2] ), 
        .Y(n1144) );
  OAI2BB2XL U2441 ( .B0(n2359), .B1(n2288), .A0N(n2359), .A1N(\str[18][0] ), 
        .Y(n1198) );
  OAI2BB2XL U2442 ( .B0(n2359), .B1(n2290), .A0N(n2359), .A1N(\str[18][1] ), 
        .Y(n1167) );
  OAI2BB2XL U2443 ( .B0(n2359), .B1(n2292), .A0N(n2359), .A1N(\str[18][2] ), 
        .Y(n1136) );
  OAI2BB2XL U2444 ( .B0(n2353), .B1(n2288), .A0N(n2353), .A1N(\str[12][0] ), 
        .Y(n1204) );
  OAI2BB2XL U2445 ( .B0(n2353), .B1(n2290), .A0N(n2353), .A1N(\str[12][1] ), 
        .Y(n1173) );
  OAI2BB2XL U2446 ( .B0(n2353), .B1(n2292), .A0N(n2353), .A1N(\str[12][2] ), 
        .Y(n1142) );
  OAI2BB2XL U2447 ( .B0(n2361), .B1(n2288), .A0N(n2361), .A1N(\str[20][0] ), 
        .Y(n1196) );
  OAI2BB2XL U2448 ( .B0(n2361), .B1(n2290), .A0N(n2361), .A1N(\str[20][1] ), 
        .Y(n1165) );
  OAI2BB2XL U2449 ( .B0(n2361), .B1(n2292), .A0N(n2361), .A1N(\str[20][2] ), 
        .Y(n1134) );
  OAI2BB2XL U2450 ( .B0(n2355), .B1(n2288), .A0N(n2355), .A1N(\str[14][0] ), 
        .Y(n1202) );
  OAI2BB2XL U2451 ( .B0(n2355), .B1(n2290), .A0N(n2355), .A1N(\str[14][1] ), 
        .Y(n1171) );
  OAI2BB2XL U2452 ( .B0(n2355), .B1(n2292), .A0N(n2355), .A1N(\str[14][2] ), 
        .Y(n1140) );
  OAI2BB2XL U2453 ( .B0(n2363), .B1(n2288), .A0N(n2363), .A1N(\str[22][0] ), 
        .Y(n1194) );
  OAI2BB2XL U2454 ( .B0(n2363), .B1(n2290), .A0N(n2363), .A1N(\str[22][1] ), 
        .Y(n1163) );
  OAI2BB2XL U2455 ( .B0(n2363), .B1(n2292), .A0N(n2363), .A1N(\str[22][2] ), 
        .Y(n1132) );
  OAI2BB2XL U2456 ( .B0(n2341), .B1(n2287), .A0N(n2341), .A1N(\str[31][0] ), 
        .Y(n1216) );
  OAI2BB2XL U2457 ( .B0(n2341), .B1(n2289), .A0N(n2341), .A1N(\str[31][1] ), 
        .Y(n1185) );
  OAI2BB2XL U2458 ( .B0(n2341), .B1(n2291), .A0N(n2341), .A1N(\str[31][2] ), 
        .Y(n1154) );
  OAI2BB2XL U2459 ( .B0(n2348), .B1(n2287), .A0N(n2348), .A1N(\str[7][0] ), 
        .Y(n1209) );
  OAI2BB2XL U2460 ( .B0(n2348), .B1(n2289), .A0N(n2348), .A1N(\str[7][1] ), 
        .Y(n1178) );
  OAI2BB2XL U2461 ( .B0(n2348), .B1(n2291), .A0N(n2348), .A1N(\str[7][2] ), 
        .Y(n1147) );
  OAI2BB2XL U2462 ( .B0(n2342), .B1(n2287), .A0N(n2342), .A1N(\str[1][0] ), 
        .Y(n1215) );
  OAI2BB2XL U2463 ( .B0(n2342), .B1(n2289), .A0N(n2342), .A1N(\str[1][1] ), 
        .Y(n1184) );
  OAI2BB2XL U2464 ( .B0(n2342), .B1(n2291), .A0N(n2342), .A1N(\str[1][2] ), 
        .Y(n1153) );
  OAI2BB2XL U2465 ( .B0(n2366), .B1(n2288), .A0N(n2366), .A1N(\str[25][0] ), 
        .Y(n1191) );
  OAI2BB2XL U2466 ( .B0(n2366), .B1(n2290), .A0N(n2366), .A1N(\str[25][1] ), 
        .Y(n1160) );
  OAI2BB2XL U2467 ( .B0(n2366), .B1(n2292), .A0N(n2366), .A1N(\str[25][2] ), 
        .Y(n1129) );
  OAI2BB2XL U2468 ( .B0(n2344), .B1(n2287), .A0N(n2344), .A1N(\str[3][0] ), 
        .Y(n1213) );
  OAI2BB2XL U2469 ( .B0(n2344), .B1(n2289), .A0N(n2344), .A1N(\str[3][1] ), 
        .Y(n1182) );
  OAI2BB2XL U2470 ( .B0(n2344), .B1(n2291), .A0N(n2344), .A1N(\str[3][2] ), 
        .Y(n1151) );
  OAI2BB2XL U2471 ( .B0(n2368), .B1(n514), .A0N(n2368), .A1N(\str[27][0] ), 
        .Y(n1189) );
  OAI2BB2XL U2472 ( .B0(n2368), .B1(n513), .A0N(n2368), .A1N(\str[27][1] ), 
        .Y(n1158) );
  OAI2BB2XL U2473 ( .B0(n2368), .B1(n512), .A0N(n2368), .A1N(\str[27][2] ), 
        .Y(n1127) );
  OAI2BB2XL U2474 ( .B0(n2346), .B1(n2287), .A0N(n2346), .A1N(\str[5][0] ), 
        .Y(n1211) );
  OAI2BB2XL U2475 ( .B0(n2346), .B1(n2289), .A0N(n2346), .A1N(\str[5][1] ), 
        .Y(n1180) );
  OAI2BB2XL U2476 ( .B0(n2346), .B1(n2291), .A0N(n2346), .A1N(\str[5][2] ), 
        .Y(n1149) );
  OAI2BB2XL U2477 ( .B0(n2370), .B1(n514), .A0N(n2370), .A1N(\str[29][0] ), 
        .Y(n1187) );
  OAI2BB2XL U2478 ( .B0(n2370), .B1(n513), .A0N(n2370), .A1N(\str[29][1] ), 
        .Y(n1156) );
  OAI2BB2XL U2479 ( .B0(n2370), .B1(n512), .A0N(n2370), .A1N(\str[29][2] ), 
        .Y(n1125) );
  OAI2BB2XL U2480 ( .B0(n2343), .B1(n2287), .A0N(n2343), .A1N(\str[2][0] ), 
        .Y(n1214) );
  OAI2BB2XL U2481 ( .B0(n2343), .B1(n2289), .A0N(n2343), .A1N(\str[2][1] ), 
        .Y(n1183) );
  OAI2BB2XL U2482 ( .B0(n2343), .B1(n2291), .A0N(n2343), .A1N(\str[2][2] ), 
        .Y(n1152) );
  OAI2BB2XL U2483 ( .B0(n2367), .B1(n514), .A0N(n2367), .A1N(\str[26][0] ), 
        .Y(n1190) );
  OAI2BB2XL U2484 ( .B0(n2367), .B1(n513), .A0N(n2367), .A1N(\str[26][1] ), 
        .Y(n1159) );
  OAI2BB2XL U2485 ( .B0(n2367), .B1(n512), .A0N(n2367), .A1N(\str[26][2] ), 
        .Y(n1128) );
  OAI2BB2XL U2486 ( .B0(n2345), .B1(n2287), .A0N(n2345), .A1N(\str[4][0] ), 
        .Y(n1212) );
  OAI2BB2XL U2487 ( .B0(n2345), .B1(n2289), .A0N(n2345), .A1N(\str[4][1] ), 
        .Y(n1181) );
  OAI2BB2XL U2488 ( .B0(n2345), .B1(n2291), .A0N(n2345), .A1N(\str[4][2] ), 
        .Y(n1150) );
  OAI2BB2XL U2489 ( .B0(n2369), .B1(n514), .A0N(n2369), .A1N(\str[28][0] ), 
        .Y(n1188) );
  OAI2BB2XL U2490 ( .B0(n2369), .B1(n513), .A0N(n2369), .A1N(\str[28][1] ), 
        .Y(n1157) );
  OAI2BB2XL U2491 ( .B0(n2369), .B1(n512), .A0N(n2369), .A1N(\str[28][2] ), 
        .Y(n1126) );
  OAI2BB2XL U2492 ( .B0(n2347), .B1(n2287), .A0N(n2347), .A1N(\str[6][0] ), 
        .Y(n1210) );
  OAI2BB2XL U2493 ( .B0(n2347), .B1(n2289), .A0N(n2347), .A1N(\str[6][1] ), 
        .Y(n1179) );
  OAI2BB2XL U2494 ( .B0(n2347), .B1(n2291), .A0N(n2347), .A1N(\str[6][2] ), 
        .Y(n1148) );
  OAI2BB2XL U2495 ( .B0(n2371), .B1(n2287), .A0N(n2371), .A1N(\str[30][0] ), 
        .Y(n1186) );
  OAI2BB2XL U2496 ( .B0(n2371), .B1(n2289), .A0N(n2371), .A1N(\str[30][1] ), 
        .Y(n1155) );
  OAI2BB2XL U2497 ( .B0(n2371), .B1(n2291), .A0N(n2371), .A1N(\str[30][2] ), 
        .Y(n1124) );
  OAI2BB2XL U2498 ( .B0(n2364), .B1(n2288), .A0N(n2364), .A1N(\str[23][0] ), 
        .Y(n1193) );
  OAI2BB2XL U2499 ( .B0(n2364), .B1(n2290), .A0N(n2364), .A1N(\str[23][1] ), 
        .Y(n1162) );
  OAI2BB2XL U2500 ( .B0(n2364), .B1(n2292), .A0N(n2364), .A1N(\str[23][2] ), 
        .Y(n1131) );
  OAI2BB2XL U2501 ( .B0(n2339), .B1(n125), .A0N(N529), .A1N(n563), .Y(n1226)
         );
  OR2X1 U2502 ( .A(isstring), .B(ispattern), .Y(n405) );
  CLKINVX1 U2503 ( .A(n429), .Y(n2328) );
  AOI222XL U2504 ( .A0(star_str_location[5]), .A1(n2329), .B0(N890), .B1(n416), 
        .C0(n417), .C1(n1998), .Y(n429) );
  CLKINVX1 U2505 ( .A(n420), .Y(n2326) );
  AOI222XL U2506 ( .A0(star_str_location[4]), .A1(n2329), .B0(N889), .B1(n416), 
        .C0(n417), .C1(str_compare_count[4]), .Y(n420) );
  CLKINVX1 U2507 ( .A(n419), .Y(n2325) );
  AOI222XL U2508 ( .A0(star_str_location[3]), .A1(n2329), .B0(N888), .B1(n416), 
        .C0(n417), .C1(str_compare_count[3]), .Y(n419) );
  CLKINVX1 U2509 ( .A(n415), .Y(n2323) );
  AOI222XL U2510 ( .A0(star_str_location[1]), .A1(n2329), .B0(N886), .B1(n416), 
        .C0(n417), .C1(str_compare_count[1]), .Y(n415) );
  CLKINVX1 U2511 ( .A(n418), .Y(n2324) );
  AOI222XL U2512 ( .A0(star_str_location[2]), .A1(n2329), .B0(N887), .B1(n416), 
        .C0(n417), .C1(str_compare_count[2]), .Y(n418) );
  CLKINVX1 U2513 ( .A(n421), .Y(n2327) );
  AOI222XL U2514 ( .A0(star_str_location[0]), .A1(n2329), .B0(N885), .B1(n416), 
        .C0(n417), .C1(n2230), .Y(n421) );
  OAI2BB1X1 U2515 ( .A0N(n500), .A1N(pat_count[0]), .B0(n502), .Y(n960) );
  AOI32X1 U2516 ( .A0(n484), .A1(n503), .A2(ispattern), .B0(n303), .B1(n501), 
        .Y(n502) );
  CLKBUFX3 U2517 ( .A(n560), .Y(n2219) );
  NOR4X1 U2518 ( .A(n2391), .B(n2319), .C(n516), .D(n562), .Y(n560) );
  NAND3BX1 U2519 ( .AN(reset), .B(n125), .C(n2320), .Y(n562) );
  CLKBUFX3 U2520 ( .A(n492), .Y(n2223) );
  OAI31XL U2521 ( .A0(n486), .A1(pat_count[0]), .A2(n302), .B0(n497), .Y(n492)
         );
  CLKBUFX3 U2522 ( .A(n488), .Y(n2227) );
  OAI31XL U2523 ( .A0(n496), .A1(pat_count[0]), .A2(n302), .B0(n497), .Y(n488)
         );
  CLKBUFX3 U2524 ( .A(n494), .Y(n2221) );
  OAI31XL U2525 ( .A0(n499), .A1(n2391), .A2(n485), .B0(n497), .Y(n494) );
  NAND3BX1 U2526 ( .AN(pat_count[4]), .B(n301), .C(pat_count[3]), .Y(n499) );
  CLKBUFX3 U2527 ( .A(n491), .Y(n2224) );
  OAI31XL U2528 ( .A0(n486), .A1(n302), .A2(n303), .B0(n497), .Y(n491) );
  CLKBUFX3 U2529 ( .A(n487), .Y(n2228) );
  OAI31XL U2530 ( .A0(n496), .A1(n302), .A2(n303), .B0(n497), .Y(n487) );
  CLKBUFX3 U2531 ( .A(n478), .Y(n2218) );
  NAND2X1 U2532 ( .A(chardata[5]), .B(n495), .Y(n478) );
  AO22X1 U2533 ( .A0(n500), .A1(pat_count[4]), .B0(N657), .B1(n501), .Y(n956)
         );
  AO22X1 U2534 ( .A0(n564), .A1(str_count[3]), .B0(N528), .B1(n563), .Y(n1227)
         );
  AO22X1 U2535 ( .A0(n500), .A1(pat_count[3]), .B0(N656), .B1(n501), .Y(n957)
         );
  AO22X1 U2536 ( .A0(n500), .A1(pat_count[2]), .B0(N655), .B1(n501), .Y(n958)
         );
  AO22X1 U2537 ( .A0(n500), .A1(pat_count[1]), .B0(N654), .B1(n501), .Y(n959)
         );
  AO22X1 U2538 ( .A0(n564), .A1(n2232), .B0(N527), .B1(n563), .Y(n1228) );
  AND2X2 U2539 ( .A(ispattern), .B(n2217), .Y(n495) );
  CLKINVX1 U2540 ( .A(chardata[2]), .Y(n2336) );
  CLKINVX1 U2541 ( .A(chardata[3]), .Y(n2335) );
  CLKINVX1 U2542 ( .A(chardata[1]), .Y(n2337) );
  CLKINVX1 U2543 ( .A(chardata[0]), .Y(n2338) );
  CLKINVX1 U2544 ( .A(chardata[4]), .Y(n2334) );
  CLKINVX1 U2545 ( .A(chardata[5]), .Y(n2333) );
  CLKINVX1 U2546 ( .A(chardata[6]), .Y(n2332) );
  CLKINVX1 U2547 ( .A(chardata[7]), .Y(n2331) );
  OAI222XL U2548 ( .A0(n670), .A1(n285), .B0(n668), .B1(n290), .C0(n664), .C1(
        n280), .Y(n676) );
  NOR4X1 U2549 ( .A(n770), .B(\str[13][0] ), .C(\str[13][2] ), .D(\str[13][1] ), .Y(n769) );
  NOR4X1 U2550 ( .A(n773), .B(\str[14][0] ), .C(\str[14][2] ), .D(\str[14][1] ), .Y(n767) );
  NOR4X1 U2551 ( .A(n772), .B(\str[15][0] ), .C(\str[15][2] ), .D(\str[15][1] ), .Y(n768) );
  OR2X1 U2552 ( .A(str_compare_count[1]), .B(n2230), .Y(n2303) );
  OAI22XL U2553 ( .A0(n2189), .A1(n438), .B0(n445), .B1(n440), .Y(n875) );
  AOI222XL U2554 ( .A0(N859), .A1(n441), .B0(N888), .B1(n442), .C0(N900), .C1(
        n443), .Y(n445) );
  OAI22XL U2555 ( .A0(n2190), .A1(n438), .B0(n444), .B1(n440), .Y(n874) );
  AOI222XL U2556 ( .A0(N858), .A1(n441), .B0(N887), .B1(n442), .C0(N899), .C1(
        n443), .Y(n444) );
  OAI22XL U2557 ( .A0(n2191), .A1(n438), .B0(n439), .B1(n440), .Y(n873) );
  AOI222XL U2558 ( .A0(N857), .A1(n441), .B0(N886), .B1(n442), .C0(N898), .C1(
        n443), .Y(n439) );
  OAI22XL U2559 ( .A0(n110), .A1(n438), .B0(n446), .B1(n440), .Y(n876) );
  AOI222XL U2560 ( .A0(N860), .A1(n441), .B0(N889), .B1(n442), .C0(N901), .C1(
        n443), .Y(n446) );
  OAI22XL U2561 ( .A0(n114), .A1(n438), .B0(n447), .B1(n440), .Y(n877) );
  AOI222XL U2562 ( .A0(n114), .A1(n441), .B0(N885), .B1(n442), .C0(n2007), 
        .C1(n443), .Y(n447) );
  OAI22XL U2563 ( .A0(n104), .A1(n438), .B0(n456), .B1(n440), .Y(n882) );
  AOI222XL U2564 ( .A0(N861), .A1(n441), .B0(N890), .B1(n442), .C0(N902), .C1(
        n443), .Y(n456) );
  OAI22XL U2565 ( .A0(n1992), .A1(n295), .B0(n714), .B1(n132), .Y(n713) );
  NOR4X1 U2566 ( .A(n734), .B(\str[16][0] ), .C(\str[16][2] ), .D(\str[16][1] ), .Y(n729) );
  NOR4X1 U2567 ( .A(n732), .B(\str[17][0] ), .C(\str[17][2] ), .D(\str[17][1] ), .Y(n730) );
  NAND4X1 U2568 ( .A(n217), .B(n216), .C(n214), .D(n213), .Y(n734) );
  OAI22XL U2569 ( .A0(n702), .A1(n170), .B0(n703), .B1(n175), .Y(n701) );
  OAI22XL U2570 ( .A0(n690), .A1(n210), .B0(n691), .B1(n215), .Y(n689) );
  NOR4X1 U2571 ( .A(n676), .B(n677), .C(n678), .D(n679), .Y(n675) );
  OAI22XL U2572 ( .A0(n658), .A1(n270), .B0(n662), .B1(n275), .Y(n677) );
  OAI22XL U2573 ( .A0(n652), .A1(n260), .B0(n656), .B1(n265), .Y(n678) );
  OAI22XL U2574 ( .A0(n680), .A1(n250), .B0(n650), .B1(n255), .Y(n679) );
  NOR4X1 U2575 ( .A(n686), .B(n687), .C(n688), .D(n689), .Y(n674) );
  OAI22XL U2576 ( .A0(n696), .A1(n240), .B0(n697), .B1(n245), .Y(n686) );
  OAI22XL U2577 ( .A0(n694), .A1(n230), .B0(n695), .B1(n235), .Y(n687) );
  OAI22XL U2578 ( .A0(n692), .A1(n220), .B0(n693), .B1(n225), .Y(n688) );
  NOR4X1 U2579 ( .A(n698), .B(n699), .C(n700), .D(n701), .Y(n673) );
  OAI22XL U2580 ( .A0(n708), .A1(n200), .B0(n709), .B1(n205), .Y(n698) );
  OAI22XL U2581 ( .A0(n706), .A1(n190), .B0(n707), .B1(n195), .Y(n699) );
  OAI22XL U2582 ( .A0(n704), .A1(n180), .B0(n705), .B1(n185), .Y(n700) );
  NOR4X1 U2583 ( .A(n710), .B(n711), .C(n712), .D(n713), .Y(n672) );
  OAI22XL U2584 ( .A0(n719), .A1(n160), .B0(n720), .B1(n165), .Y(n710) );
  OAI22XL U2585 ( .A0(n717), .A1(n150), .B0(n718), .B1(n155), .Y(n711) );
  OAI22XL U2586 ( .A0(n715), .A1(n140), .B0(n716), .B1(n145), .Y(n712) );
  OAI22XL U2587 ( .A0(n122), .A1(n448), .B0(n449), .B1(n450), .Y(n878) );
  AOI222XL U2588 ( .A0(n122), .A1(n2398), .B0(star_pat_location[1]), .B1(n451), 
        .C0(N869), .C1(n452), .Y(n449) );
  OAI22XL U2589 ( .A0(n121), .A1(n448), .B0(n453), .B1(n450), .Y(n879) );
  AOI222XL U2590 ( .A0(N836), .A1(n2398), .B0(star_pat_location[2]), .B1(n451), 
        .C0(N870), .C1(n452), .Y(n453) );
  OAI22XL U2591 ( .A0(n120), .A1(n448), .B0(n454), .B1(n450), .Y(n880) );
  AOI222XL U2592 ( .A0(N837), .A1(n2398), .B0(star_pat_location[3]), .B1(n451), 
        .C0(N871), .C1(n452), .Y(n454) );
  OAI22XL U2593 ( .A0(N868), .A1(n448), .B0(n455), .B1(n450), .Y(n881) );
  AOI222XL U2594 ( .A0(N834), .A1(n2398), .B0(star_pat_location[0]), .B1(n451), 
        .C0(N868), .C1(n452), .Y(n455) );
  OAI22XL U2595 ( .A0(n115), .A1(n448), .B0(n572), .B1(n450), .Y(n1231) );
  AOI222XL U2596 ( .A0(N838), .A1(n2398), .B0(star_pat_location[4]), .B1(n451), 
        .C0(N872), .C1(n452), .Y(n572) );
  OAI22XL U2597 ( .A0(n422), .A1(n98), .B0(n426), .B1(n424), .Y(n870) );
  AOI22X1 U2598 ( .A0(N881), .A1(n425), .B0(N847), .B1(n2398), .Y(n426) );
  OAI22XL U2599 ( .A0(n422), .A1(n99), .B0(n423), .B1(n424), .Y(n869) );
  AOI22X1 U2600 ( .A0(N880), .A1(n425), .B0(n99), .B1(n2398), .Y(n423) );
  OAI22XL U2601 ( .A0(n422), .A1(n97), .B0(n427), .B1(n424), .Y(n871) );
  AOI22X1 U2602 ( .A0(N882), .A1(n425), .B0(N848), .B1(n2398), .Y(n427) );
  OAI22XL U2603 ( .A0(n422), .A1(n100), .B0(n428), .B1(n424), .Y(n872) );
  AOI22X1 U2604 ( .A0(n100), .A1(n425), .B0(N845), .B1(n2398), .Y(n428) );
  OAI22XL U2605 ( .A0(n422), .A1(n96), .B0(n465), .B1(n424), .Y(n883) );
  AOI22X1 U2606 ( .A0(N883), .A1(n425), .B0(N849), .B1(n2398), .Y(n465) );
  OAI2BB2XL U2607 ( .B0(n114), .B1(n408), .A0N(n2407), .A1N(n409), .Y(n867) );
  OAI2BB2XL U2608 ( .B0(n110), .B1(n408), .A0N(n2403), .A1N(n409), .Y(n863) );
  OAI2BB2XL U2609 ( .B0(n2189), .B1(n408), .A0N(n2404), .A1N(n409), .Y(n864)
         );
  OAI2BB2XL U2610 ( .B0(n2190), .B1(n408), .A0N(n2405), .A1N(n409), .Y(n865)
         );
  OAI2BB2XL U2611 ( .B0(n2191), .B1(n408), .A0N(n2406), .A1N(n409), .Y(n866)
         );
  OAI2BB2XL U2612 ( .B0(n104), .B1(n408), .A0N(\first_index[5] ), .A1N(n409), 
        .Y(n868) );
  CLKINVX1 U2613 ( .A(n796), .Y(n2384) );
  AOI32X1 U2614 ( .A0(n2396), .A1(n797), .A2(n2216), .B0(STAR_flag), .B1(n2385), .Y(n796) );
  CLKINVX1 U2615 ( .A(n797), .Y(n2385) );
  NAND2X1 U2616 ( .A(n2389), .B(n798), .Y(n797) );
  OAI2BB1X1 U2617 ( .A0N(n577), .A1N(n578), .B0(n579), .Y(n471) );
  NAND4X1 U2618 ( .A(n2191), .B(n2190), .C(n114), .D(n640), .Y(n578) );
  OAI22XL U2619 ( .A0(n580), .A1(n581), .B0(n582), .B1(n583), .Y(n579) );
  NAND4X1 U2620 ( .A(n641), .B(n642), .C(n643), .D(n644), .Y(n577) );
  NOR4X1 U2621 ( .A(n724), .B(\str[31][0] ), .C(\str[31][2] ), .D(\str[31][1] ), .Y(n667) );
  NOR4X1 U2622 ( .A(n723), .B(\str[30][0] ), .C(\str[30][2] ), .D(\str[30][1] ), .Y(n669) );
  NAND4X1 U2623 ( .A(n672), .B(n673), .C(n674), .D(n675), .Y(n671) );
  CLKBUFX3 U2624 ( .A(str_compare_count[0]), .Y(n2230) );
  NOR4X1 U2625 ( .A(n782), .B(\str[32][0] ), .C(\str[32][2] ), .D(\str[32][1] ), .Y(n778) );
  NOR4X1 U2626 ( .A(n781), .B(\str[0][0] ), .C(\str[0][2] ), .D(\str[0][1] ), 
        .Y(n779) );
  NAND4X1 U2627 ( .A(n297), .B(n296), .C(n294), .D(n293), .Y(n782) );
  CLKINVX1 U2628 ( .A(n2310), .Y(n2321) );
  OAI22XL U2629 ( .A0(n2209), .A1(n318), .B0(n2210), .B1(n326), .Y(n853) );
  OAI22XL U2630 ( .A0(n120), .A1(n374), .B0(n828), .B1(n310), .Y(n854) );
  OAI22XL U2631 ( .A0(n2214), .A1(n334), .B0(n2215), .B1(n342), .Y(n856) );
  OAI22XL U2632 ( .A0(n2209), .A1(n317), .B0(n2210), .B1(n325), .Y(n845) );
  OAI22XL U2633 ( .A0(n120), .A1(n373), .B0(n828), .B1(n309), .Y(n846) );
  OAI22XL U2634 ( .A0(n2214), .A1(n333), .B0(n2215), .B1(n341), .Y(n848) );
  OAI22XL U2635 ( .A0(n2209), .A1(n316), .B0(n2210), .B1(n324), .Y(n849) );
  OAI22XL U2636 ( .A0(n120), .A1(n372), .B0(n828), .B1(n308), .Y(n850) );
  OAI22XL U2637 ( .A0(n2214), .A1(n332), .B0(n2215), .B1(n340), .Y(n852) );
  OAI222XL U2638 ( .A0(n2211), .A1(n353), .B0(n2212), .B1(n361), .C0(n2213), 
        .C1(n345), .Y(n843) );
  OAI222XL U2639 ( .A0(n2211), .A1(n352), .B0(n2212), .B1(n360), .C0(n2213), 
        .C1(n344), .Y(n826) );
  OAI222XL U2640 ( .A0(n2211), .A1(n355), .B0(n2212), .B1(n363), .C0(n2213), 
        .C1(n347), .Y(n839) );
  OAI222XL U2641 ( .A0(n2211), .A1(n354), .B0(n2212), .B1(n362), .C0(n2213), 
        .C1(n346), .Y(n831) );
  OAI222XL U2642 ( .A0(n2211), .A1(n359), .B0(n2212), .B1(n367), .C0(n2213), 
        .C1(n351), .Y(n835) );
  OAI22XL U2643 ( .A0(n2209), .A1(n314), .B0(n2210), .B1(n322), .Y(n829) );
  OAI22XL U2644 ( .A0(n120), .A1(n370), .B0(n828), .B1(n306), .Y(n830) );
  OAI22XL U2645 ( .A0(n2214), .A1(n330), .B0(n2215), .B1(n338), .Y(n832) );
  OAI22XL U2646 ( .A0(n2209), .A1(n312), .B0(n2210), .B1(n320), .Y(n824) );
  OAI22XL U2647 ( .A0(n2214), .A1(n328), .B0(n2215), .B1(n336), .Y(n827) );
  OAI22XL U2648 ( .A0(n120), .A1(n368), .B0(n828), .B1(n304), .Y(n825) );
  OAI22XL U2649 ( .A0(n2209), .A1(n319), .B0(n2210), .B1(n327), .Y(n833) );
  OAI22XL U2650 ( .A0(n2214), .A1(n335), .B0(n2215), .B1(n343), .Y(n836) );
  OAI22XL U2651 ( .A0(n120), .A1(n375), .B0(n828), .B1(n311), .Y(n834) );
  OAI22XL U2652 ( .A0(n2209), .A1(n313), .B0(n2210), .B1(n321), .Y(n841) );
  OAI22XL U2653 ( .A0(n2214), .A1(n329), .B0(n2215), .B1(n337), .Y(n844) );
  OAI22XL U2654 ( .A0(n120), .A1(n369), .B0(n828), .B1(n305), .Y(n842) );
  OAI22XL U2655 ( .A0(n2209), .A1(n315), .B0(n2210), .B1(n323), .Y(n837) );
  OAI22XL U2656 ( .A0(n2214), .A1(n331), .B0(n2215), .B1(n339), .Y(n840) );
  OAI22XL U2657 ( .A0(n120), .A1(n371), .B0(n828), .B1(n307), .Y(n838) );
  NAND3X2 U2658 ( .A(n122), .B(n121), .C(N868), .Y(n607) );
  NAND2X1 U2659 ( .A(STAR_flag), .B(N864), .Y(n573) );
  CLKBUFX3 U2660 ( .A(n604), .Y(n2213) );
  CLKBUFX3 U2661 ( .A(n606), .Y(n2212) );
  ADDHXL U2662 ( .A(n2406), .B(n2407), .CO(\r546/carry [2]), .S(N898) );
  ADDHXL U2663 ( .A(n2405), .B(\r546/carry [2]), .CO(\r546/carry [3]), .S(N899) );
  ADDHXL U2664 ( .A(n2404), .B(\r546/carry [3]), .CO(\r546/carry [4]), .S(N900) );
  NAND3X1 U2665 ( .A(n122), .B(n121), .C(N834), .Y(n608) );
  NAND3X1 U2666 ( .A(n2231), .B(n121), .C(N834), .Y(n610) );
  NAND3X1 U2667 ( .A(N868), .B(n121), .C(n2231), .Y(n609) );
  CLKBUFX3 U2668 ( .A(n605), .Y(n2211) );
  ADDHXL U2669 ( .A(n2403), .B(\r546/carry [4]), .CO(\r546/carry [5]), .S(N901) );
  CLKBUFX3 U2670 ( .A(str_count[0]), .Y(n2233) );
  CLKBUFX3 U2671 ( .A(str_count[2]), .Y(n2232) );
  CLKINVX1 U2672 ( .A(star_str_location[1]), .Y(n2318) );
  NOR4X1 U2673 ( .A(n600), .B(n601), .C(n602), .D(n603), .Y(n596) );
  OAI22XL U2674 ( .A0(n2214), .A1(n337), .B0(n2215), .B1(n345), .Y(n600) );
  OAI22XL U2675 ( .A0(n2209), .A1(n321), .B0(n2210), .B1(n329), .Y(n601) );
  OAI22XL U2676 ( .A0(n2212), .A1(n369), .B0(n607), .B1(n313), .Y(n602) );
  NOR4X1 U2677 ( .A(n612), .B(n613), .C(n614), .D(n615), .Y(n597) );
  OAI22XL U2678 ( .A0(n336), .A1(n2214), .B0(n344), .B1(n2215), .Y(n612) );
  OAI22XL U2679 ( .A0(n320), .A1(n2209), .B0(n328), .B1(n2210), .Y(n613) );
  OAI22XL U2680 ( .A0(n2212), .A1(n368), .B0(n312), .B1(n607), .Y(n614) );
  NOR4X1 U2681 ( .A(n616), .B(n617), .C(n618), .D(n619), .Y(n598) );
  OAI22XL U2682 ( .A0(n2214), .A1(n339), .B0(n2215), .B1(n347), .Y(n616) );
  OAI22XL U2683 ( .A0(n2209), .A1(n323), .B0(n2210), .B1(n331), .Y(n617) );
  OAI22XL U2684 ( .A0(n2212), .A1(n371), .B0(n607), .B1(n315), .Y(n618) );
  NOR4X1 U2685 ( .A(n620), .B(n621), .C(n622), .D(n623), .Y(n590) );
  OAI22XL U2686 ( .A0(n2214), .A1(n343), .B0(n2215), .B1(n351), .Y(n620) );
  OAI22XL U2687 ( .A0(n2209), .A1(n327), .B0(n2210), .B1(n335), .Y(n621) );
  OAI22XL U2688 ( .A0(n2212), .A1(n375), .B0(n607), .B1(n319), .Y(n622) );
  NOR4X1 U2689 ( .A(n632), .B(n633), .C(n634), .D(n635), .Y(n588) );
  OAI22XL U2690 ( .A0(n2214), .A1(n341), .B0(n2215), .B1(n349), .Y(n632) );
  OAI22XL U2691 ( .A0(n2209), .A1(n325), .B0(n2210), .B1(n333), .Y(n633) );
  OAI22XL U2692 ( .A0(n2212), .A1(n373), .B0(n607), .B1(n317), .Y(n634) );
  NOR4X1 U2693 ( .A(n624), .B(n625), .C(n626), .D(n627), .Y(n599) );
  OAI22XL U2694 ( .A0(n2214), .A1(n338), .B0(n2215), .B1(n346), .Y(n624) );
  OAI22XL U2695 ( .A0(n2209), .A1(n322), .B0(n2210), .B1(n330), .Y(n625) );
  OAI22XL U2696 ( .A0(n2212), .A1(n370), .B0(n607), .B1(n314), .Y(n626) );
  NOR4X1 U2697 ( .A(n628), .B(n629), .C(n630), .D(n631), .Y(n589) );
  OAI22XL U2698 ( .A0(n2214), .A1(n340), .B0(n2215), .B1(n348), .Y(n628) );
  OAI22XL U2699 ( .A0(n2209), .A1(n324), .B0(n2210), .B1(n332), .Y(n629) );
  OAI22XL U2700 ( .A0(n2212), .A1(n372), .B0(n607), .B1(n316), .Y(n630) );
  NOR4X1 U2701 ( .A(n636), .B(n637), .C(n638), .D(n639), .Y(n591) );
  OAI22XL U2702 ( .A0(n2214), .A1(n342), .B0(n2215), .B1(n350), .Y(n636) );
  OAI22XL U2703 ( .A0(n2209), .A1(n326), .B0(n2210), .B1(n334), .Y(n637) );
  OAI22XL U2704 ( .A0(n2212), .A1(n374), .B0(n607), .B1(n318), .Y(n638) );
  NAND2X1 U2705 ( .A(n498), .B(n301), .Y(n486) );
  NOR3X1 U2706 ( .A(pat_count[3]), .B(pat_count[4]), .C(n2391), .Y(n498) );
  CLKBUFX3 U2707 ( .A(n388), .Y(n2216) );
  NOR4BX1 U2708 ( .AN(state[0]), .B(state[1]), .C(state[2]), .D(state[3]), .Y(
        n388) );
  CLKBUFX3 U2709 ( .A(n504), .Y(n2217) );
  NOR4X1 U2710 ( .A(state[0]), .B(state[1]), .C(state[2]), .D(state[3]), .Y(
        n504) );
  XNOR2X1 U2711 ( .A(n2189), .B(N528), .Y(n401) );
  NAND2X1 U2712 ( .A(n498), .B(pat_count[2]), .Y(n496) );
  NOR4X1 U2713 ( .A(n757), .B(\str[7][0] ), .C(\str[7][2] ), .D(\str[7][1] ), 
        .Y(n752) );
  NAND4X1 U2714 ( .A(n172), .B(n171), .C(n169), .D(n168), .Y(n757) );
  NOR4X1 U2715 ( .A(n762), .B(\str[9][0] ), .C(\str[9][2] ), .D(\str[9][1] ), 
        .Y(n758) );
  NAND4X1 U2716 ( .A(n182), .B(n181), .C(n179), .D(n178), .Y(n762) );
  NOR4X1 U2717 ( .A(n766), .B(\str[11][0] ), .C(\str[11][2] ), .D(\str[11][1] ), .Y(n763) );
  NAND4X1 U2718 ( .A(n192), .B(n191), .C(n189), .D(n188), .Y(n766) );
  NOR4X1 U2719 ( .A(n786), .B(\str[1][0] ), .C(\str[1][2] ), .D(\str[1][1] ), 
        .Y(n783) );
  NAND4X1 U2720 ( .A(n142), .B(n141), .C(n139), .D(n138), .Y(n786) );
  NOR4X1 U2721 ( .A(n790), .B(\str[3][0] ), .C(\str[3][2] ), .D(\str[3][1] ), 
        .Y(n787) );
  NAND4X1 U2722 ( .A(n152), .B(n151), .C(n149), .D(n148), .Y(n790) );
  NOR4X1 U2723 ( .A(n795), .B(\str[5][0] ), .C(\str[5][2] ), .D(\str[5][1] ), 
        .Y(n791) );
  NAND4X1 U2724 ( .A(n162), .B(n161), .C(n159), .D(n158), .Y(n795) );
  NOR4X1 U2725 ( .A(n654), .B(\str[24][0] ), .C(\str[24][2] ), .D(\str[24][1] ), .Y(n649) );
  NAND4X1 U2726 ( .A(n257), .B(n256), .C(n254), .D(n253), .Y(n654) );
  NOR4X1 U2727 ( .A(n660), .B(\str[26][0] ), .C(\str[26][2] ), .D(\str[26][1] ), .Y(n655) );
  NAND4X1 U2728 ( .A(n267), .B(n266), .C(n264), .D(n263), .Y(n660) );
  NOR4X1 U2729 ( .A(n666), .B(\str[28][0] ), .C(\str[28][2] ), .D(\str[28][1] ), .Y(n661) );
  NAND4X1 U2730 ( .A(n277), .B(n276), .C(n274), .D(n273), .Y(n666) );
  NOR4X1 U2731 ( .A(n738), .B(\str[18][0] ), .C(\str[18][2] ), .D(\str[18][1] ), .Y(n735) );
  NAND4X1 U2732 ( .A(n227), .B(n226), .C(n224), .D(n223), .Y(n738) );
  NOR4X1 U2733 ( .A(n742), .B(\str[20][0] ), .C(\str[20][2] ), .D(\str[20][1] ), .Y(n739) );
  NAND4X1 U2734 ( .A(n237), .B(n236), .C(n234), .D(n233), .Y(n742) );
  NOR4X1 U2735 ( .A(n747), .B(\str[22][0] ), .C(\str[22][2] ), .D(\str[22][1] ), .Y(n743) );
  NAND4X1 U2736 ( .A(n247), .B(n246), .C(n244), .D(n243), .Y(n747) );
  NOR4X1 U2737 ( .A(n653), .B(\str[25][0] ), .C(\str[25][2] ), .D(\str[25][1] ), .Y(n651) );
  NAND4X1 U2738 ( .A(n262), .B(n261), .C(n259), .D(n258), .Y(n653) );
  NOR4X1 U2739 ( .A(n659), .B(\str[27][0] ), .C(\str[27][2] ), .D(\str[27][1] ), .Y(n657) );
  NAND4X1 U2740 ( .A(n272), .B(n271), .C(n269), .D(n268), .Y(n659) );
  NOR4X1 U2741 ( .A(n665), .B(\str[29][0] ), .C(\str[29][2] ), .D(\str[29][1] ), .Y(n663) );
  NAND4X1 U2742 ( .A(n282), .B(n281), .C(n279), .D(n278), .Y(n665) );
  NOR4X1 U2743 ( .A(n737), .B(\str[19][0] ), .C(\str[19][2] ), .D(\str[19][1] ), .Y(n736) );
  NAND4X1 U2744 ( .A(n232), .B(n231), .C(n229), .D(n228), .Y(n737) );
  NOR4X1 U2745 ( .A(n741), .B(\str[21][0] ), .C(\str[21][2] ), .D(\str[21][1] ), .Y(n740) );
  NAND4X1 U2746 ( .A(n242), .B(n241), .C(n239), .D(n238), .Y(n741) );
  NOR4X1 U2747 ( .A(n746), .B(\str[23][0] ), .C(\str[23][2] ), .D(\str[23][1] ), .Y(n744) );
  NAND4X1 U2748 ( .A(n252), .B(n251), .C(n249), .D(n248), .Y(n746) );
  NOR4X1 U2749 ( .A(n755), .B(\str[8][0] ), .C(\str[8][2] ), .D(\str[8][1] ), 
        .Y(n753) );
  NAND4X1 U2750 ( .A(n177), .B(n176), .C(n174), .D(n173), .Y(n755) );
  NOR4X1 U2751 ( .A(n760), .B(\str[10][0] ), .C(\str[10][2] ), .D(\str[10][1] ), .Y(n759) );
  NAND4X1 U2752 ( .A(n187), .B(n186), .C(n184), .D(n183), .Y(n760) );
  NOR4X1 U2753 ( .A(n765), .B(\str[12][0] ), .C(\str[12][2] ), .D(\str[12][1] ), .Y(n764) );
  NAND4X1 U2754 ( .A(n197), .B(n196), .C(n194), .D(n193), .Y(n765) );
  NOR4X1 U2755 ( .A(n785), .B(\str[2][0] ), .C(\str[2][2] ), .D(\str[2][1] ), 
        .Y(n784) );
  NAND4X1 U2756 ( .A(n147), .B(n146), .C(n144), .D(n143), .Y(n785) );
  NOR4X1 U2757 ( .A(n789), .B(\str[4][0] ), .C(\str[4][2] ), .D(\str[4][1] ), 
        .Y(n788) );
  NAND4X1 U2758 ( .A(n157), .B(n156), .C(n154), .D(n153), .Y(n789) );
  NOR4X1 U2759 ( .A(n794), .B(\str[6][0] ), .C(\str[6][2] ), .D(\str[6][1] ), 
        .Y(n792) );
  NAND4X1 U2760 ( .A(n167), .B(n166), .C(n164), .D(n163), .Y(n794) );
  NAND4X1 U2761 ( .A(n100), .B(n99), .C(n462), .D(n98), .Y(n412) );
  NOR2X1 U2762 ( .A(compare_count[4]), .B(compare_count[3]), .Y(n462) );
  NAND2X1 U2763 ( .A(n303), .B(n302), .Y(n485) );
  NOR3X1 U2764 ( .A(str_compare_count[3]), .B(n1998), .C(str_compare_count[4]), 
        .Y(n640) );
  NAND4X1 U2765 ( .A(n402), .B(n403), .C(n404), .D(DOLLOR_flag), .Y(n398) );
  XNOR2X1 U2766 ( .A(N526), .B(str_compare_count[1]), .Y(n403) );
  XNOR2X1 U2767 ( .A(N529), .B(str_compare_count[4]), .Y(n404) );
  XNOR2X1 U2768 ( .A(N530), .B(n1998), .Y(n402) );
  NAND4X1 U2769 ( .A(n134), .B(n133), .C(n131), .D(n130), .Y(n781) );
  NAND4X1 U2770 ( .A(n287), .B(n286), .C(n284), .D(n283), .Y(n723) );
  NAND4X1 U2771 ( .A(n292), .B(n291), .C(n289), .D(n288), .Y(n724) );
  NAND4X1 U2772 ( .A(n222), .B(n221), .C(n219), .D(n218), .Y(n732) );
  NAND4X1 U2773 ( .A(n212), .B(n211), .C(n209), .D(n208), .Y(n772) );
  NAND4X1 U2774 ( .A(n207), .B(n206), .C(n204), .D(n203), .Y(n773) );
  NAND4X1 U2775 ( .A(n202), .B(n201), .C(n199), .D(n198), .Y(n770) );
  ADDHXL U2776 ( .A(n2231), .B(N834), .CO(\r543/carry [2]), .S(N869) );
  ADDHXL U2777 ( .A(pat_compare_count[2]), .B(\r543/carry [2]), .CO(
        \r543/carry [3]), .S(N870) );
  ADDHXL U2778 ( .A(str_compare_count[3]), .B(\r540/carry [3]), .CO(
        \r540/carry [4]), .S(N859) );
  ADDHXL U2779 ( .A(str_compare_count[1]), .B(n2230), .CO(\r540/carry [2]), 
        .S(N857) );
  ADDHXL U2780 ( .A(str_compare_count[2]), .B(\r540/carry [2]), .CO(
        \r540/carry [3]), .S(N858) );
  ADDHXL U2781 ( .A(str_compare_count[4]), .B(\r540/carry [4]), .CO(
        \r540/carry [5]), .S(N860) );
  ADDHXL U2782 ( .A(pat_compare_count[3]), .B(\r543/carry [3]), .CO(
        \r543/carry [4]), .S(N871) );
  XNOR2X1 U2783 ( .A(n114), .B(n129), .Y(n400) );
  XNOR2X1 U2784 ( .A(n2190), .B(N527), .Y(n399) );
  NOR4X1 U2785 ( .A(DOLLOR_flag), .B(n395), .C(n396), .D(n397), .Y(n394) );
  XNOR2X1 U2786 ( .A(n125), .B(str_compare_count[4]), .Y(n395) );
  XNOR2X1 U2787 ( .A(n128), .B(str_compare_count[1]), .Y(n396) );
  XNOR2X1 U2788 ( .A(n2319), .B(n1998), .Y(n397) );
  NAND4X1 U2789 ( .A(n391), .B(n392), .C(n393), .D(n394), .Y(n389) );
  XNOR2X1 U2790 ( .A(n2230), .B(n2233), .Y(n392) );
  XNOR2X1 U2791 ( .A(str_compare_count[3]), .B(str_count[3]), .Y(n391) );
  XNOR2X1 U2792 ( .A(str_compare_count[2]), .B(n2232), .Y(n393) );
  ADDHXL U2793 ( .A(pat_count[1]), .B(pat_count[0]), .CO(\add_100/carry [2]), 
        .S(N654) );
  ADDHXL U2794 ( .A(compare_count[1]), .B(N845), .CO(\r544/carry [2]), .S(N880) );
  ADDHXL U2795 ( .A(pat_count[2]), .B(\add_100/carry [2]), .CO(
        \add_100/carry [3]), .S(N655) );
  ADDHXL U2796 ( .A(compare_count[2]), .B(\r544/carry [2]), .CO(
        \r544/carry [3]), .S(N881) );
  ADDHXL U2797 ( .A(pat_count[3]), .B(\add_100/carry [3]), .CO(
        \add_100/carry [4]), .S(N656) );
  ADDHXL U2798 ( .A(compare_count[3]), .B(\r544/carry [3]), .CO(
        \r544/carry [4]), .S(N882) );
  NOR2X1 U2799 ( .A(n2192), .B(str_compare_count[1]), .Y(n2017) );
  NOR2X1 U2800 ( .A(n2189), .B(n2190), .Y(n2011) );
  NOR2X1 U2801 ( .A(n2192), .B(n2191), .Y(n2018) );
  NOR2X1 U2802 ( .A(n2191), .B(n2230), .Y(n2019) );
  NOR2X1 U2803 ( .A(str_compare_count[1]), .B(n2230), .Y(n2020) );
  AO22X1 U2804 ( .A0(\str[14][0] ), .A1(n2195), .B0(\str[12][0] ), .B1(n2196), 
        .Y(n2012) );
  AOI221XL U2805 ( .A0(\str[13][0] ), .A1(n2193), .B0(\str[15][0] ), .B1(n2194), .C0(n2012), .Y(n2026) );
  NOR2X1 U2806 ( .A(n2189), .B(str_compare_count[2]), .Y(n2013) );
  AO22X1 U2807 ( .A0(\str[10][0] ), .A1(n2199), .B0(\str[8][0] ), .B1(n2200), 
        .Y(n2014) );
  AOI221XL U2808 ( .A0(\str[9][0] ), .A1(n2197), .B0(\str[11][0] ), .B1(n2198), 
        .C0(n2014), .Y(n2025) );
  NOR2X1 U2809 ( .A(n2190), .B(str_compare_count[3]), .Y(n2015) );
  AO22X1 U2810 ( .A0(\str[6][0] ), .A1(n2203), .B0(\str[4][0] ), .B1(n2204), 
        .Y(n2016) );
  AOI221XL U2811 ( .A0(\str[5][0] ), .A1(n2201), .B0(\str[7][0] ), .B1(n2202), 
        .C0(n2016), .Y(n2024) );
  NOR2X1 U2812 ( .A(str_compare_count[2]), .B(str_compare_count[3]), .Y(n2021)
         );
  AO22X1 U2813 ( .A0(\str[2][0] ), .A1(n2207), .B0(\str[0][0] ), .B1(n2208), 
        .Y(n2022) );
  AOI221XL U2814 ( .A0(\str[1][0] ), .A1(n2205), .B0(\str[3][0] ), .B1(n2206), 
        .C0(n2022), .Y(n2023) );
  NAND4X1 U2815 ( .A(n2026), .B(n2025), .C(n2024), .D(n2023), .Y(n2036) );
  AO22X1 U2816 ( .A0(\str[30][0] ), .A1(n2195), .B0(\str[28][0] ), .B1(n2196), 
        .Y(n2027) );
  AOI221XL U2817 ( .A0(\str[29][0] ), .A1(n2193), .B0(\str[31][0] ), .B1(n2194), .C0(n2027), .Y(n2034) );
  AO22X1 U2818 ( .A0(\str[26][0] ), .A1(n2199), .B0(\str[24][0] ), .B1(n2200), 
        .Y(n2028) );
  AOI221XL U2819 ( .A0(\str[25][0] ), .A1(n2197), .B0(\str[27][0] ), .B1(n2198), .C0(n2028), .Y(n2033) );
  AO22X1 U2820 ( .A0(\str[22][0] ), .A1(n2203), .B0(\str[20][0] ), .B1(n2204), 
        .Y(n2029) );
  AOI221XL U2821 ( .A0(\str[21][0] ), .A1(n2201), .B0(\str[23][0] ), .B1(n2202), .C0(n2029), .Y(n2032) );
  AO22X1 U2822 ( .A0(\str[18][0] ), .A1(n2207), .B0(\str[16][0] ), .B1(n2208), 
        .Y(n2030) );
  AOI221XL U2823 ( .A0(\str[17][0] ), .A1(n2205), .B0(\str[19][0] ), .B1(n2206), .C0(n2030), .Y(n2031) );
  NAND4X1 U2824 ( .A(n2034), .B(n2033), .C(n2032), .D(n2031), .Y(n2035) );
  AOI222XL U2825 ( .A0(\str[32][0] ), .A1(n1998), .B0(n2036), .B1(n2187), .C0(
        n2035), .C1(n2185), .Y(n2037) );
  CLKINVX1 U2826 ( .A(n2037), .Y(str_now[0]) );
  AO22X1 U2827 ( .A0(\str[14][1] ), .A1(n2195), .B0(\str[12][1] ), .B1(n2196), 
        .Y(n2038) );
  AOI221XL U2828 ( .A0(\str[13][1] ), .A1(n2193), .B0(\str[15][1] ), .B1(n2194), .C0(n2038), .Y(n2045) );
  AO22X1 U2829 ( .A0(\str[10][1] ), .A1(n2199), .B0(\str[8][1] ), .B1(n2200), 
        .Y(n2039) );
  AOI221XL U2830 ( .A0(\str[9][1] ), .A1(n2197), .B0(\str[11][1] ), .B1(n2198), 
        .C0(n2039), .Y(n2044) );
  AO22X1 U2831 ( .A0(\str[6][1] ), .A1(n2203), .B0(\str[4][1] ), .B1(n2204), 
        .Y(n2040) );
  AOI221XL U2832 ( .A0(\str[5][1] ), .A1(n2201), .B0(\str[7][1] ), .B1(n2202), 
        .C0(n2040), .Y(n2043) );
  AO22X1 U2833 ( .A0(\str[2][1] ), .A1(n2207), .B0(\str[0][1] ), .B1(n2208), 
        .Y(n2041) );
  AOI221XL U2834 ( .A0(\str[1][1] ), .A1(n2205), .B0(\str[3][1] ), .B1(n2206), 
        .C0(n2041), .Y(n2042) );
  NAND4X1 U2835 ( .A(n2045), .B(n2044), .C(n2043), .D(n2042), .Y(n2055) );
  AO22X1 U2836 ( .A0(\str[30][1] ), .A1(n2195), .B0(\str[28][1] ), .B1(n2196), 
        .Y(n2046) );
  AOI221XL U2837 ( .A0(\str[29][1] ), .A1(n2193), .B0(\str[31][1] ), .B1(n2194), .C0(n2046), .Y(n2053) );
  AO22X1 U2838 ( .A0(\str[26][1] ), .A1(n2199), .B0(\str[24][1] ), .B1(n2200), 
        .Y(n2047) );
  AOI221XL U2839 ( .A0(\str[25][1] ), .A1(n2197), .B0(\str[27][1] ), .B1(n2198), .C0(n2047), .Y(n2052) );
  AO22X1 U2840 ( .A0(\str[22][1] ), .A1(n2203), .B0(\str[20][1] ), .B1(n2204), 
        .Y(n2048) );
  AOI221XL U2841 ( .A0(\str[21][1] ), .A1(n2201), .B0(\str[23][1] ), .B1(n2202), .C0(n2048), .Y(n2051) );
  AO22X1 U2842 ( .A0(\str[18][1] ), .A1(n2207), .B0(\str[16][1] ), .B1(n2208), 
        .Y(n2049) );
  AOI221XL U2843 ( .A0(\str[17][1] ), .A1(n2205), .B0(\str[19][1] ), .B1(n2206), .C0(n2049), .Y(n2050) );
  NAND4X1 U2844 ( .A(n2053), .B(n2052), .C(n2051), .D(n2050), .Y(n2054) );
  AOI222XL U2845 ( .A0(\str[32][1] ), .A1(n1998), .B0(n2055), .B1(n2187), .C0(
        n2054), .C1(n2185), .Y(n2056) );
  CLKINVX1 U2846 ( .A(n2056), .Y(str_now[1]) );
  AO22X1 U2847 ( .A0(\str[14][2] ), .A1(n2195), .B0(\str[12][2] ), .B1(n2196), 
        .Y(n2057) );
  AOI221XL U2848 ( .A0(\str[13][2] ), .A1(n2193), .B0(\str[15][2] ), .B1(n2194), .C0(n2057), .Y(n2064) );
  AO22X1 U2849 ( .A0(\str[10][2] ), .A1(n2199), .B0(\str[8][2] ), .B1(n2200), 
        .Y(n2058) );
  AOI221XL U2850 ( .A0(\str[9][2] ), .A1(n2197), .B0(\str[11][2] ), .B1(n2198), 
        .C0(n2058), .Y(n2063) );
  AO22X1 U2851 ( .A0(\str[6][2] ), .A1(n2203), .B0(\str[4][2] ), .B1(n2204), 
        .Y(n2059) );
  AOI221XL U2852 ( .A0(\str[5][2] ), .A1(n2201), .B0(\str[7][2] ), .B1(n2202), 
        .C0(n2059), .Y(n2062) );
  AO22X1 U2853 ( .A0(\str[2][2] ), .A1(n2207), .B0(\str[0][2] ), .B1(n2208), 
        .Y(n2060) );
  AOI221XL U2854 ( .A0(\str[1][2] ), .A1(n2205), .B0(\str[3][2] ), .B1(n2206), 
        .C0(n2060), .Y(n2061) );
  NAND4X1 U2855 ( .A(n2064), .B(n2063), .C(n2062), .D(n2061), .Y(n2074) );
  AO22X1 U2856 ( .A0(\str[30][2] ), .A1(n2195), .B0(\str[28][2] ), .B1(n2196), 
        .Y(n2065) );
  AOI221XL U2857 ( .A0(\str[29][2] ), .A1(n2193), .B0(\str[31][2] ), .B1(n2194), .C0(n2065), .Y(n2072) );
  AO22X1 U2858 ( .A0(\str[26][2] ), .A1(n2199), .B0(\str[24][2] ), .B1(n2200), 
        .Y(n2066) );
  AOI221XL U2859 ( .A0(\str[25][2] ), .A1(n2197), .B0(\str[27][2] ), .B1(n2198), .C0(n2066), .Y(n2071) );
  AO22X1 U2860 ( .A0(\str[22][2] ), .A1(n2203), .B0(\str[20][2] ), .B1(n2204), 
        .Y(n2067) );
  AOI221XL U2861 ( .A0(\str[21][2] ), .A1(n2201), .B0(\str[23][2] ), .B1(n2202), .C0(n2067), .Y(n2070) );
  AO22X1 U2862 ( .A0(\str[18][2] ), .A1(n2207), .B0(\str[16][2] ), .B1(n2208), 
        .Y(n2068) );
  AOI221XL U2863 ( .A0(\str[17][2] ), .A1(n2205), .B0(\str[19][2] ), .B1(n2206), .C0(n2068), .Y(n2069) );
  NAND4X1 U2864 ( .A(n2072), .B(n2071), .C(n2070), .D(n2069), .Y(n2073) );
  AOI222XL U2865 ( .A0(\str[32][2] ), .A1(n1998), .B0(n2074), .B1(n2187), .C0(
        n2073), .C1(n2185), .Y(n2075) );
  CLKINVX1 U2866 ( .A(n2075), .Y(str_now[2]) );
  AO22X1 U2867 ( .A0(\str[14][3] ), .A1(n2195), .B0(\str[12][3] ), .B1(n2196), 
        .Y(n2076) );
  AOI221XL U2868 ( .A0(\str[13][3] ), .A1(n2193), .B0(\str[15][3] ), .B1(n2194), .C0(n2076), .Y(n2083) );
  AO22X1 U2869 ( .A0(\str[10][3] ), .A1(n2199), .B0(\str[8][3] ), .B1(n2200), 
        .Y(n2077) );
  AOI221XL U2870 ( .A0(\str[9][3] ), .A1(n2197), .B0(\str[11][3] ), .B1(n2198), 
        .C0(n2077), .Y(n2082) );
  AO22X1 U2871 ( .A0(\str[6][3] ), .A1(n2203), .B0(\str[4][3] ), .B1(n2204), 
        .Y(n2078) );
  AOI221XL U2872 ( .A0(\str[5][3] ), .A1(n2201), .B0(\str[7][3] ), .B1(n2202), 
        .C0(n2078), .Y(n2081) );
  AO22X1 U2873 ( .A0(\str[2][3] ), .A1(n2207), .B0(\str[0][3] ), .B1(n2208), 
        .Y(n2079) );
  AOI221XL U2874 ( .A0(\str[1][3] ), .A1(n2205), .B0(\str[3][3] ), .B1(n2206), 
        .C0(n2079), .Y(n2080) );
  NAND4X1 U2875 ( .A(n2083), .B(n2082), .C(n2081), .D(n2080), .Y(n2093) );
  AO22X1 U2876 ( .A0(\str[30][3] ), .A1(n2195), .B0(\str[28][3] ), .B1(n2196), 
        .Y(n2084) );
  AOI221XL U2877 ( .A0(\str[29][3] ), .A1(n2193), .B0(\str[31][3] ), .B1(n2194), .C0(n2084), .Y(n2091) );
  AO22X1 U2878 ( .A0(\str[26][3] ), .A1(n2199), .B0(\str[24][3] ), .B1(n2200), 
        .Y(n2085) );
  AOI221XL U2879 ( .A0(\str[25][3] ), .A1(n2197), .B0(\str[27][3] ), .B1(n2198), .C0(n2085), .Y(n2090) );
  AO22X1 U2880 ( .A0(\str[22][3] ), .A1(n2203), .B0(\str[20][3] ), .B1(n2204), 
        .Y(n2086) );
  AOI221XL U2881 ( .A0(\str[21][3] ), .A1(n2201), .B0(\str[23][3] ), .B1(n2202), .C0(n2086), .Y(n2089) );
  AO22X1 U2882 ( .A0(\str[18][3] ), .A1(n2207), .B0(\str[16][3] ), .B1(n2208), 
        .Y(n2087) );
  AOI221XL U2883 ( .A0(\str[17][3] ), .A1(n2205), .B0(\str[19][3] ), .B1(n2206), .C0(n2087), .Y(n2088) );
  NAND4X1 U2884 ( .A(n2091), .B(n2090), .C(n2089), .D(n2088), .Y(n2092) );
  AOI222XL U2885 ( .A0(\str[32][3] ), .A1(n1998), .B0(n2093), .B1(n2187), .C0(
        n2092), .C1(n2185), .Y(n2094) );
  CLKINVX1 U2886 ( .A(n2094), .Y(str_now[3]) );
  AO22X1 U2887 ( .A0(\str[14][4] ), .A1(n2195), .B0(\str[12][4] ), .B1(n2196), 
        .Y(n2095) );
  AOI221XL U2888 ( .A0(\str[13][4] ), .A1(n2193), .B0(\str[15][4] ), .B1(n2194), .C0(n2095), .Y(n2102) );
  AO22X1 U2889 ( .A0(\str[10][4] ), .A1(n2199), .B0(\str[8][4] ), .B1(n2200), 
        .Y(n2096) );
  AOI221XL U2890 ( .A0(\str[9][4] ), .A1(n2197), .B0(\str[11][4] ), .B1(n2198), 
        .C0(n2096), .Y(n2101) );
  AO22X1 U2891 ( .A0(\str[6][4] ), .A1(n2203), .B0(\str[4][4] ), .B1(n2204), 
        .Y(n2097) );
  AOI221XL U2892 ( .A0(\str[5][4] ), .A1(n2201), .B0(\str[7][4] ), .B1(n2202), 
        .C0(n2097), .Y(n2100) );
  AO22X1 U2893 ( .A0(\str[2][4] ), .A1(n2207), .B0(\str[0][4] ), .B1(n2208), 
        .Y(n2098) );
  AOI221XL U2894 ( .A0(\str[1][4] ), .A1(n2205), .B0(\str[3][4] ), .B1(n2206), 
        .C0(n2098), .Y(n2099) );
  NAND4X1 U2895 ( .A(n2102), .B(n2101), .C(n2100), .D(n2099), .Y(n2112) );
  AO22X1 U2896 ( .A0(\str[30][4] ), .A1(n2195), .B0(\str[28][4] ), .B1(n2196), 
        .Y(n2103) );
  AOI221XL U2897 ( .A0(\str[29][4] ), .A1(n2193), .B0(\str[31][4] ), .B1(n2194), .C0(n2103), .Y(n2110) );
  AO22X1 U2898 ( .A0(\str[26][4] ), .A1(n2199), .B0(\str[24][4] ), .B1(n2200), 
        .Y(n2104) );
  AOI221XL U2899 ( .A0(\str[25][4] ), .A1(n2197), .B0(\str[27][4] ), .B1(n2198), .C0(n2104), .Y(n2109) );
  AO22X1 U2900 ( .A0(\str[22][4] ), .A1(n2203), .B0(\str[20][4] ), .B1(n2204), 
        .Y(n2105) );
  AOI221XL U2901 ( .A0(\str[21][4] ), .A1(n2201), .B0(\str[23][4] ), .B1(n2202), .C0(n2105), .Y(n2108) );
  AO22X1 U2902 ( .A0(\str[18][4] ), .A1(n2207), .B0(\str[16][4] ), .B1(n2208), 
        .Y(n2106) );
  AOI221XL U2903 ( .A0(\str[17][4] ), .A1(n2205), .B0(\str[19][4] ), .B1(n2206), .C0(n2106), .Y(n2107) );
  NAND4X1 U2904 ( .A(n2110), .B(n2109), .C(n2108), .D(n2107), .Y(n2111) );
  AOI222XL U2905 ( .A0(\str[32][4] ), .A1(n1998), .B0(n2112), .B1(n2187), .C0(
        n2111), .C1(n2185), .Y(n2113) );
  CLKINVX1 U2906 ( .A(n2113), .Y(str_now[4]) );
  AO22X1 U2907 ( .A0(\str[14][5] ), .A1(n2195), .B0(\str[12][5] ), .B1(n2196), 
        .Y(n2114) );
  AOI221XL U2908 ( .A0(\str[13][5] ), .A1(n2193), .B0(\str[15][5] ), .B1(n2194), .C0(n2114), .Y(n2121) );
  AO22X1 U2909 ( .A0(\str[10][5] ), .A1(n2199), .B0(\str[8][5] ), .B1(n2200), 
        .Y(n2115) );
  AOI221XL U2910 ( .A0(\str[9][5] ), .A1(n2197), .B0(\str[11][5] ), .B1(n2198), 
        .C0(n2115), .Y(n2120) );
  AO22X1 U2911 ( .A0(\str[6][5] ), .A1(n2203), .B0(\str[4][5] ), .B1(n2204), 
        .Y(n2116) );
  AOI221XL U2912 ( .A0(\str[5][5] ), .A1(n2201), .B0(\str[7][5] ), .B1(n2202), 
        .C0(n2116), .Y(n2119) );
  AO22X1 U2913 ( .A0(\str[2][5] ), .A1(n2207), .B0(\str[0][5] ), .B1(n2208), 
        .Y(n2117) );
  AOI221XL U2914 ( .A0(\str[1][5] ), .A1(n2205), .B0(\str[3][5] ), .B1(n2206), 
        .C0(n2117), .Y(n2118) );
  NAND4X1 U2915 ( .A(n2121), .B(n2120), .C(n2119), .D(n2118), .Y(n2131) );
  AO22X1 U2916 ( .A0(\str[30][5] ), .A1(n2195), .B0(\str[28][5] ), .B1(n2196), 
        .Y(n2122) );
  AOI221XL U2917 ( .A0(\str[29][5] ), .A1(n2193), .B0(\str[31][5] ), .B1(n2194), .C0(n2122), .Y(n2129) );
  AO22X1 U2918 ( .A0(\str[26][5] ), .A1(n2199), .B0(\str[24][5] ), .B1(n2200), 
        .Y(n2123) );
  AOI221XL U2919 ( .A0(\str[25][5] ), .A1(n2197), .B0(\str[27][5] ), .B1(n2198), .C0(n2123), .Y(n2128) );
  AO22X1 U2920 ( .A0(\str[22][5] ), .A1(n2203), .B0(\str[20][5] ), .B1(n2204), 
        .Y(n2124) );
  AOI221XL U2921 ( .A0(\str[21][5] ), .A1(n2201), .B0(\str[23][5] ), .B1(n2202), .C0(n2124), .Y(n2127) );
  AO22X1 U2922 ( .A0(\str[18][5] ), .A1(n2207), .B0(\str[16][5] ), .B1(n2208), 
        .Y(n2125) );
  AOI221XL U2923 ( .A0(\str[17][5] ), .A1(n2205), .B0(\str[19][5] ), .B1(n2206), .C0(n2125), .Y(n2126) );
  NAND4X1 U2924 ( .A(n2129), .B(n2128), .C(n2127), .D(n2126), .Y(n2130) );
  AOI222XL U2925 ( .A0(\str[32][5] ), .A1(n1998), .B0(n2131), .B1(n2187), .C0(
        n2130), .C1(n2185), .Y(n2132) );
  CLKINVX1 U2926 ( .A(n2132), .Y(str_now[5]) );
  AO22X1 U2927 ( .A0(\str[14][6] ), .A1(n2195), .B0(\str[12][6] ), .B1(n2196), 
        .Y(n2133) );
  AOI221XL U2928 ( .A0(\str[13][6] ), .A1(n2193), .B0(\str[15][6] ), .B1(n2194), .C0(n2133), .Y(n2140) );
  AO22X1 U2929 ( .A0(\str[10][6] ), .A1(n2199), .B0(\str[8][6] ), .B1(n2200), 
        .Y(n2134) );
  AOI221XL U2930 ( .A0(\str[9][6] ), .A1(n2197), .B0(\str[11][6] ), .B1(n2198), 
        .C0(n2134), .Y(n2139) );
  AO22X1 U2931 ( .A0(\str[6][6] ), .A1(n2203), .B0(\str[4][6] ), .B1(n2204), 
        .Y(n2135) );
  AOI221XL U2932 ( .A0(\str[5][6] ), .A1(n2201), .B0(\str[7][6] ), .B1(n2202), 
        .C0(n2135), .Y(n2138) );
  AO22X1 U2933 ( .A0(\str[2][6] ), .A1(n2207), .B0(\str[0][6] ), .B1(n2208), 
        .Y(n2136) );
  AOI221XL U2934 ( .A0(\str[1][6] ), .A1(n2205), .B0(\str[3][6] ), .B1(n2206), 
        .C0(n2136), .Y(n2137) );
  NAND4X1 U2935 ( .A(n2140), .B(n2139), .C(n2138), .D(n2137), .Y(n2150) );
  AO22X1 U2936 ( .A0(\str[30][6] ), .A1(n2195), .B0(\str[28][6] ), .B1(n2196), 
        .Y(n2141) );
  AOI221XL U2937 ( .A0(\str[29][6] ), .A1(n2193), .B0(\str[31][6] ), .B1(n2194), .C0(n2141), .Y(n2148) );
  AO22X1 U2938 ( .A0(\str[26][6] ), .A1(n2199), .B0(\str[24][6] ), .B1(n2200), 
        .Y(n2142) );
  AOI221XL U2939 ( .A0(\str[25][6] ), .A1(n2197), .B0(\str[27][6] ), .B1(n2198), .C0(n2142), .Y(n2147) );
  AO22X1 U2940 ( .A0(\str[22][6] ), .A1(n2203), .B0(\str[20][6] ), .B1(n2204), 
        .Y(n2143) );
  AOI221XL U2941 ( .A0(\str[21][6] ), .A1(n2201), .B0(\str[23][6] ), .B1(n2202), .C0(n2143), .Y(n2146) );
  AO22X1 U2942 ( .A0(\str[18][6] ), .A1(n2207), .B0(\str[16][6] ), .B1(n2208), 
        .Y(n2144) );
  AOI221XL U2943 ( .A0(\str[17][6] ), .A1(n2205), .B0(\str[19][6] ), .B1(n2206), .C0(n2144), .Y(n2145) );
  NAND4X1 U2944 ( .A(n2148), .B(n2147), .C(n2146), .D(n2145), .Y(n2149) );
  AOI222XL U2945 ( .A0(\str[32][6] ), .A1(n1998), .B0(n2150), .B1(n2187), .C0(
        n2149), .C1(n2185), .Y(n2151) );
  CLKINVX1 U2946 ( .A(n2151), .Y(str_now[6]) );
  AO22X1 U2947 ( .A0(\str[14][7] ), .A1(n2195), .B0(\str[12][7] ), .B1(n2196), 
        .Y(n2152) );
  AOI221XL U2948 ( .A0(\str[13][7] ), .A1(n2193), .B0(\str[15][7] ), .B1(n2194), .C0(n2152), .Y(n2159) );
  AO22X1 U2949 ( .A0(\str[10][7] ), .A1(n2199), .B0(\str[8][7] ), .B1(n2200), 
        .Y(n2153) );
  AOI221XL U2950 ( .A0(\str[9][7] ), .A1(n2197), .B0(\str[11][7] ), .B1(n2198), 
        .C0(n2153), .Y(n2158) );
  AO22X1 U2951 ( .A0(\str[6][7] ), .A1(n2203), .B0(\str[4][7] ), .B1(n2204), 
        .Y(n2154) );
  AOI221XL U2952 ( .A0(\str[5][7] ), .A1(n2201), .B0(\str[7][7] ), .B1(n2202), 
        .C0(n2154), .Y(n2157) );
  AO22X1 U2953 ( .A0(\str[2][7] ), .A1(n2207), .B0(\str[0][7] ), .B1(n2208), 
        .Y(n2155) );
  AOI221XL U2954 ( .A0(\str[1][7] ), .A1(n2205), .B0(\str[3][7] ), .B1(n2206), 
        .C0(n2155), .Y(n2156) );
  NAND4X1 U2955 ( .A(n2159), .B(n2158), .C(n2157), .D(n2156), .Y(n2186) );
  AO22X1 U2956 ( .A0(\str[30][7] ), .A1(n2195), .B0(\str[28][7] ), .B1(n2196), 
        .Y(n2162) );
  AOI221XL U2957 ( .A0(\str[29][7] ), .A1(n2193), .B0(\str[31][7] ), .B1(n2194), .C0(n2162), .Y(n2183) );
  AO22X1 U2958 ( .A0(\str[26][7] ), .A1(n2199), .B0(\str[24][7] ), .B1(n2200), 
        .Y(n2167) );
  AOI221XL U2959 ( .A0(\str[25][7] ), .A1(n2197), .B0(\str[27][7] ), .B1(n2198), .C0(n2167), .Y(n2182) );
  AO22X1 U2960 ( .A0(\str[22][7] ), .A1(n2203), .B0(\str[20][7] ), .B1(n2204), 
        .Y(n2172) );
  AOI221XL U2961 ( .A0(\str[21][7] ), .A1(n2201), .B0(\str[23][7] ), .B1(n2202), .C0(n2172), .Y(n2181) );
  AO22X1 U2962 ( .A0(\str[18][7] ), .A1(n2207), .B0(\str[16][7] ), .B1(n2208), 
        .Y(n2177) );
  AOI221XL U2963 ( .A0(\str[17][7] ), .A1(n2205), .B0(\str[19][7] ), .B1(n2206), .C0(n2177), .Y(n2180) );
  NAND4X1 U2964 ( .A(n2183), .B(n2182), .C(n2181), .D(n2180), .Y(n2184) );
  AOI222XL U2965 ( .A0(\str[32][7] ), .A1(n1998), .B0(n2187), .B1(n2186), .C0(
        n2185), .C1(n2184), .Y(n2188) );
  CLKINVX1 U2966 ( .A(n2188), .Y(str_now[7]) );
  XOR2X1 U2967 ( .A(pat_compare_count[4]), .B(\add_113/carry [4]), .Y(N838) );
  AND2X1 U2968 ( .A(\add_113/carry [3]), .B(pat_compare_count[3]), .Y(
        \add_113/carry [4]) );
  XOR2X1 U2969 ( .A(pat_compare_count[3]), .B(\add_113/carry [3]), .Y(N837) );
  AND2X1 U2970 ( .A(n2231), .B(pat_compare_count[2]), .Y(\add_113/carry [3])
         );
  XOR2X1 U2971 ( .A(pat_compare_count[2]), .B(n2231), .Y(N836) );
  XOR2X1 U2972 ( .A(compare_count[4]), .B(\add_115/carry [4]), .Y(N849) );
  AND2X1 U2973 ( .A(\add_115/carry [3]), .B(compare_count[3]), .Y(
        \add_115/carry [4]) );
  XOR2X1 U2974 ( .A(compare_count[3]), .B(\add_115/carry [3]), .Y(N848) );
  AND2X1 U2975 ( .A(compare_count[1]), .B(compare_count[2]), .Y(
        \add_115/carry [3]) );
  XOR2X1 U2976 ( .A(compare_count[2]), .B(compare_count[1]), .Y(N847) );
  XOR2X1 U2977 ( .A(\r534/carry [5]), .B(str_count[5]), .Y(N530) );
  OAI2BB1X1 U2978 ( .A0N(n2230), .A1N(str_compare_count[1]), .B0(n2303), .Y(
        N738) );
  NOR2X1 U2979 ( .A(n2303), .B(str_compare_count[2]), .Y(n2304) );
  AO21X1 U2980 ( .A0(n2303), .A1(str_compare_count[2]), .B0(n2304), .Y(N739)
         );
  NAND2X1 U2981 ( .A(n2304), .B(n2189), .Y(n2305) );
  XNOR2X1 U2982 ( .A(str_compare_count[4]), .B(n2305), .Y(N741) );
  NOR2X1 U2983 ( .A(str_compare_count[4]), .B(n2305), .Y(n2306) );
  XOR2X1 U2984 ( .A(\r540/carry [5]), .B(n1998), .Y(N861) );
  XOR2X1 U2985 ( .A(\r543/carry [4]), .B(pat_compare_count[4]), .Y(N872) );
  XOR2X1 U2986 ( .A(\r544/carry [4]), .B(compare_count[4]), .Y(N883) );
  CLKINVX1 U2987 ( .A(star_str_location[0]), .Y(N885) );
  XOR2X1 U2988 ( .A(\r545/carry [5]), .B(star_str_location[5]), .Y(N890) );
  XOR2X1 U2989 ( .A(\r546/carry [5]), .B(\first_index[5] ), .Y(N902) );
  XOR2X1 U2990 ( .A(\add_100/carry [4]), .B(pat_count[4]), .Y(N657) );
  NAND2BX1 U2991 ( .AN(star_str_location[4]), .B(str_count[4]), .Y(n2317) );
  NOR2BX1 U2992 ( .AN(star_str_location[4]), .B(str_count[4]), .Y(n2307) );
  OA22X1 U2993 ( .A0(n2307), .A1(n2319), .B0(n2307), .B1(star_str_location[5]), 
        .Y(n2316) );
  NAND2BX1 U2994 ( .AN(star_str_location[2]), .B(n2232), .Y(n2310) );
  AOI2BB1X1 U2995 ( .A0N(n2318), .A1N(str_count[1]), .B0(star_str_location[0]), 
        .Y(n2308) );
  AO22X1 U2996 ( .A0(n2308), .A1(n2233), .B0(str_count[1]), .B1(n2318), .Y(
        n2313) );
  NOR2BX1 U2997 ( .AN(star_str_location[2]), .B(n2232), .Y(n2309) );
  OAI22XL U2998 ( .A0(n2309), .A1(n2320), .B0(star_str_location[3]), .B1(n2309), .Y(n2312) );
  OAI22XL U2999 ( .A0(star_str_location[3]), .A1(n2320), .B0(
        star_str_location[3]), .B1(n2310), .Y(n2311) );
  AOI221XL U3000 ( .A0(str_count[3]), .A1(n2321), .B0(n2313), .B1(n2312), .C0(
        n2311), .Y(n2315) );
  OA22X1 U3001 ( .A0(star_str_location[5]), .A1(n2319), .B0(n2317), .B1(
        star_str_location[5]), .Y(n2314) );
  OAI221XL U3002 ( .A0(n2317), .A1(n2319), .B0(n2316), .B1(n2315), .C0(n2314), 
        .Y(N864) );
endmodule

