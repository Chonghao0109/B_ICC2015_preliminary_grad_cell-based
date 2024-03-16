/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Sat Mar 16 17:53:54 2024
/////////////////////////////////////////////////////////////


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   n691, n692, n693, n694, n695, n696, n697, n698, ina, inb, inc, N412,
         N413, N414, N415, N416, N417, N418, N459, N460, N461, N462, N464,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n315, n316, \C1/Z_0 ,
         \DP_OP_54J1_123_3697/n7 , \DP_OP_54J1_123_3697/n6 ,
         \DP_OP_54J1_123_3697/n5 , \DP_OP_54J1_123_3697/n4 ,
         \DP_OP_54J1_123_3697/n3 , \DP_OP_54J1_123_3697/n2 ,
         \DP_OP_54J1_123_3697/n1 , n320, n321, n322, n323, n325, n327, n329,
         n331, n333, n335, n337, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
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
         n621, n622, n623, n624, n625, n626, n627, n628, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n687, n688,
         n689, n690;
  wire   [3:0] set_cs;
  wire   [1:0] current_md;
  wire   [3:0] state_y;
  wire   [3:0] state_x;
  wire   [7:0] square_o;
  wire   [3:0] XA;
  wire   [3:0] YA;
  wire   [3:0] XB;
  wire   [3:0] YB;
  wire   [3:0] XC;
  wire   [3:0] YC;
  wire   [3:0] RA;
  wire   [3:0] RB;
  wire   [3:0] RC;
  wire   [8:0] cal_reg_1;
  wire   [8:0] cal_reg_2;

  EDFFX1 \current_md_reg[0]  ( .D(mode[0]), .E(n687), .CK(clk), .Q(
        current_md[0]) );
  EDFFX1 \current_md_reg[1]  ( .D(mode[1]), .E(n687), .CK(clk), .Q(
        current_md[1]) );
  EDFFX1 \XC_reg[0]  ( .D(central[4]), .E(N462), .CK(clk), .Q(XC[0]), .QN(n347) );
  EDFFX1 \YC_reg[0]  ( .D(central[0]), .E(N462), .CK(clk), .Q(YC[0]), .QN(n343) );
  EDFFX1 \YA_reg[0]  ( .D(central[16]), .E(N462), .CK(clk), .Q(YA[0]), .QN(
        n348) );
  EDFFX1 \XB_reg[1]  ( .D(central[13]), .E(N462), .CK(clk), .Q(XB[1]) );
  EDFFX1 \YB_reg[1]  ( .D(central[9]), .E(N462), .CK(clk), .Q(YB[1]) );
  EDFFX1 \cal_reg_2_reg[2]  ( .D(n346), .E(N464), .CK(clk), .Q(cal_reg_2[2])
         );
  DFFRX1 \state_y_reg[3]  ( .D(n304), .CK(clk), .RN(n282), .Q(state_y[3]), 
        .QN(n671) );
  DFFQX1 \cal_reg_1_reg[8]  ( .D(n300), .CK(clk), .Q(cal_reg_1[8]) );
  DFFQX1 \cal_reg_1_reg[1]  ( .D(n298), .CK(clk), .Q(cal_reg_1[1]) );
  DFFQX1 \cal_reg_1_reg[0]  ( .D(n299), .CK(clk), .Q(cal_reg_1[0]) );
  DFFQX1 \cal_reg_1_reg[2]  ( .D(n297), .CK(clk), .Q(cal_reg_1[2]) );
  DFFQX1 \cal_reg_1_reg[3]  ( .D(n296), .CK(clk), .Q(cal_reg_1[3]) );
  DFFQX1 \cal_reg_1_reg[4]  ( .D(n295), .CK(clk), .Q(cal_reg_1[4]) );
  DFFQX1 \cal_reg_1_reg[5]  ( .D(n294), .CK(clk), .Q(cal_reg_1[5]) );
  DFFQX1 \cal_reg_1_reg[7]  ( .D(n292), .CK(clk), .Q(cal_reg_1[7]) );
  DFFRX1 \set_cs_reg[0]  ( .D(n315), .CK(clk), .RN(n282), .Q(set_cs[0]), .QN(
        n684) );
  DFFRX2 \state_x_reg[3]  ( .D(n301), .CK(clk), .RN(n282), .Q(state_x[3]), 
        .QN(n670) );
  DFFSX2 \state_y_reg[0]  ( .D(n307), .CK(clk), .SN(n282), .Q(state_y[0]), 
        .QN(n677) );
  DFFRX1 \set_cs_reg[2]  ( .D(n310), .CK(clk), .RN(n282), .Q(set_cs[2]), .QN(
        n673) );
  DFFX1 \XA_reg[0]  ( .D(n667), .CK(clk), .Q(XA[0]), .QN(n690) );
  EDFFX1 \YB_reg[0]  ( .D(central[8]), .E(n687), .CK(clk), .Q(YB[0]), .QN(n668) );
  EDFFX1 \XB_reg[0]  ( .D(central[12]), .E(n687), .CK(clk), .Q(XB[0]), .QN(
        n676) );
  DFFRX1 \set_cs_reg[1]  ( .D(n316), .CK(clk), .RN(n282), .Q(set_cs[1]), .QN(
        n689) );
  EDFFXL \XC_reg[1]  ( .D(central[5]), .E(n687), .CK(clk), .Q(XC[1]) );
  DFFSX1 \state_x_reg[0]  ( .D(n303), .CK(clk), .SN(n282), .Q(state_x[0]) );
  DFFRX1 \candidate_reg[1]  ( .D(n289), .CK(clk), .RN(n282), .Q(n697), .QN(
        n337) );
  ADDHXL \DP_OP_54J1_123_3697/U7  ( .A(n697), .B(\DP_OP_54J1_123_3697/n7 ), 
        .CO(\DP_OP_54J1_123_3697/n6 ), .S(N413) );
  DFFRX1 \candidate_reg[4]  ( .D(n286), .CK(clk), .RN(n282), .Q(n694), .QN(
        n335) );
  ADDHXL \DP_OP_54J1_123_3697/U4  ( .A(n694), .B(\DP_OP_54J1_123_3697/n4 ), 
        .CO(\DP_OP_54J1_123_3697/n3 ), .S(N416) );
  DFFRX1 \candidate_reg[3]  ( .D(n287), .CK(clk), .RN(n282), .Q(n695), .QN(
        n333) );
  ADDHXL \DP_OP_54J1_123_3697/U5  ( .A(n695), .B(\DP_OP_54J1_123_3697/n5 ), 
        .CO(\DP_OP_54J1_123_3697/n4 ), .S(N415) );
  DFFRX1 \candidate_reg[2]  ( .D(n288), .CK(clk), .RN(n282), .Q(n696), .QN(
        n331) );
  ADDHXL \DP_OP_54J1_123_3697/U6  ( .A(n696), .B(\DP_OP_54J1_123_3697/n6 ), 
        .CO(\DP_OP_54J1_123_3697/n5 ), .S(N414) );
  DFFRX1 \candidate_reg[6]  ( .D(n284), .CK(clk), .RN(n282), .Q(n692), .QN(
        n329) );
  ADDHXL \DP_OP_54J1_123_3697/U2  ( .A(n692), .B(\DP_OP_54J1_123_3697/n2 ), 
        .CO(\DP_OP_54J1_123_3697/n1 ), .S(N418) );
  DFFRX1 \candidate_reg[5]  ( .D(n285), .CK(clk), .RN(n282), .Q(n693), .QN(
        n327) );
  ADDHXL \DP_OP_54J1_123_3697/U3  ( .A(n693), .B(\DP_OP_54J1_123_3697/n3 ), 
        .CO(\DP_OP_54J1_123_3697/n2 ), .S(N417) );
  DFFRX1 \candidate_reg[0]  ( .D(n290), .CK(clk), .RN(n282), .Q(n698), .QN(
        n325) );
  ADDHXL \DP_OP_54J1_123_3697/U8  ( .A(\C1/Z_0 ), .B(n698), .CO(
        \DP_OP_54J1_123_3697/n7 ), .S(N412) );
  DFFRX1 \candidate_reg[7]  ( .D(n283), .CK(clk), .RN(n282), .Q(n691), .QN(
        n323) );
  EDFFXL ina_reg ( .D(n688), .E(N459), .CK(clk), .Q(ina) );
  EDFFXL inb_reg ( .D(n688), .E(N460), .CK(clk), .Q(inb) );
  EDFFXL \RB_reg[3]  ( .D(radius[7]), .E(n687), .CK(clk), .Q(RB[3]) );
  EDFFXL \RB_reg[2]  ( .D(radius[6]), .E(n687), .CK(clk), .Q(RB[2]) );
  EDFFXL \RB_reg[1]  ( .D(radius[5]), .E(n687), .CK(clk), .Q(RB[1]) );
  EDFFXL \RB_reg[0]  ( .D(radius[4]), .E(n687), .CK(clk), .Q(RB[0]) );
  EDFFXL \RA_reg[3]  ( .D(radius[11]), .E(n687), .CK(clk), .Q(RA[3]) );
  EDFFXL \RA_reg[2]  ( .D(radius[10]), .E(N462), .CK(clk), .Q(RA[2]) );
  EDFFXL \RA_reg[1]  ( .D(radius[9]), .E(n687), .CK(clk), .Q(RA[1]) );
  EDFFXL \RA_reg[0]  ( .D(radius[8]), .E(n687), .CK(clk), .Q(RA[0]) );
  EDFFXL \XC_reg[3]  ( .D(central[7]), .E(n687), .CK(clk), .Q(XC[3]), .QN(n680) );
  EDFFXL \XC_reg[2]  ( .D(central[6]), .E(n687), .CK(clk), .Q(XC[2]) );
  EDFFXL \RC_reg[3]  ( .D(radius[3]), .E(N462), .CK(clk), .Q(RC[3]) );
  EDFFXL \RC_reg[2]  ( .D(radius[2]), .E(N462), .CK(clk), .Q(RC[2]) );
  EDFFXL \RC_reg[1]  ( .D(radius[1]), .E(N462), .CK(clk), .Q(RC[1]) );
  EDFFXL \RC_reg[0]  ( .D(radius[0]), .E(n687), .CK(clk), .Q(RC[0]) );
  EDFFXL inc_reg ( .D(n688), .E(N461), .CK(clk), .Q(inc) );
  EDFFXL \YC_reg[3]  ( .D(central[3]), .E(n687), .CK(clk), .Q(YC[3]), .QN(n683) );
  EDFFXL \YC_reg[2]  ( .D(central[2]), .E(n687), .CK(clk), .Q(YC[2]) );
  EDFFXL \YC_reg[1]  ( .D(central[1]), .E(N462), .CK(clk), .Q(YC[1]) );
  EDFFXL \XA_reg[3]  ( .D(central[23]), .E(n687), .CK(clk), .Q(XA[3]), .QN(
        n678) );
  EDFFXL \XA_reg[2]  ( .D(central[22]), .E(n687), .CK(clk), .Q(XA[2]) );
  EDFFXL \XA_reg[1]  ( .D(central[21]), .E(n687), .CK(clk), .Q(XA[1]) );
  EDFFXL \YA_reg[3]  ( .D(central[19]), .E(n687), .CK(clk), .Q(YA[3]), .QN(
        n681) );
  EDFFXL \YA_reg[2]  ( .D(central[18]), .E(N462), .CK(clk), .Q(YA[2]) );
  EDFFXL \YA_reg[1]  ( .D(central[17]), .E(N462), .CK(clk), .Q(YA[1]) );
  EDFFXL \XB_reg[3]  ( .D(central[15]), .E(N462), .CK(clk), .Q(XB[3]), .QN(
        n679) );
  EDFFXL \XB_reg[2]  ( .D(central[14]), .E(N462), .CK(clk), .Q(XB[2]) );
  EDFFXL \YB_reg[3]  ( .D(central[11]), .E(N462), .CK(clk), .Q(YB[3]), .QN(
        n682) );
  EDFFXL \YB_reg[2]  ( .D(central[10]), .E(N462), .CK(clk), .Q(YB[2]) );
  EDFFXL \cal_reg_2_reg[7]  ( .D(n453), .E(N464), .CK(clk), .Q(cal_reg_2[7])
         );
  EDFFXL \cal_reg_2_reg[6]  ( .D(square_o[6]), .E(N464), .CK(clk), .Q(
        cal_reg_2[6]) );
  EDFFXL \cal_reg_2_reg[5]  ( .D(square_o[5]), .E(N464), .CK(clk), .Q(
        cal_reg_2[5]) );
  EDFFXL \cal_reg_2_reg[4]  ( .D(square_o[4]), .E(N464), .CK(clk), .Q(
        cal_reg_2[4]) );
  EDFFXL \cal_reg_2_reg[3]  ( .D(square_o[3]), .E(N464), .CK(clk), .Q(
        cal_reg_2[3]) );
  EDFFXL \cal_reg_2_reg[0]  ( .D(square_o[0]), .E(N464), .CK(clk), .QN(n685)
         );
  DFFRX1 \set_cs_reg[3]  ( .D(n309), .CK(clk), .RN(n282), .Q(set_cs[3]), .QN(
        n669) );
  DFFRX2 \state_x_reg[2]  ( .D(n302), .CK(clk), .RN(n282), .Q(state_x[2]), 
        .QN(n675) );
  DFFRX2 \state_y_reg[1]  ( .D(n306), .CK(clk), .RN(n282), .Q(state_y[1]), 
        .QN(n672) );
  DFFQX1 \cal_reg_1_reg[6]  ( .D(n293), .CK(clk), .Q(cal_reg_1[6]) );
  DFFRX2 \state_x_reg[1]  ( .D(n308), .CK(clk), .RN(n282), .Q(state_x[1]), 
        .QN(n674) );
  DFFRX2 \state_y_reg[2]  ( .D(n305), .CK(clk), .RN(n282), .Q(state_y[2]), 
        .QN(n320) );
  CLKBUFX3 U334 ( .A(n583), .Y(n665) );
  NAND2X1 U335 ( .A(n623), .B(n282), .Y(n585) );
  AOI21X2 U336 ( .A0(n612), .A1(n322), .B0(n611), .Y(n633) );
  OR2X1 U337 ( .A(square_o[3]), .B(cal_reg_1[3]), .Y(n322) );
  NAND2X1 U338 ( .A(square_o[4]), .B(cal_reg_1[4]), .Y(n630) );
  NOR2X2 U339 ( .A(n517), .B(n509), .Y(n453) );
  OR2X1 U340 ( .A(n517), .B(n518), .Y(n345) );
  OAI31XL U341 ( .A0(n539), .A1(XB[0]), .A2(n471), .B0(n470), .Y(n475) );
  INVXL U342 ( .A(n384), .Y(n486) );
  BUFX2 U343 ( .A(state_x[0]), .Y(n543) );
  NOR2XL U344 ( .A(n539), .B(XC[0]), .Y(n369) );
  OAI22XL U345 ( .A0(YC[2]), .A1(n320), .B0(n402), .B1(n400), .Y(n444) );
  AOI33XL U346 ( .A0(XC[3]), .A1(n426), .A2(n670), .B0(state_x[3]), .B1(n425), 
        .B2(n680), .Y(n427) );
  NOR2XL U347 ( .A(n424), .B(n373), .Y(n375) );
  NOR2XL U348 ( .A(n509), .B(n518), .Y(n511) );
  AOI211XL U349 ( .A0(n376), .A1(n375), .B0(n580), .C0(n374), .Y(n377) );
  CLKINVX1 U350 ( .A(n609), .Y(n642) );
  OAI31XL U351 ( .A0(n677), .A1(YC[0]), .A2(n497), .B0(n496), .Y(n501) );
  AOI211XL U352 ( .A0(n505), .A1(n379), .B0(n378), .C0(n377), .Y(n410) );
  NOR3XL U353 ( .A(n459), .B(n458), .C(n620), .Y(n460) );
  NAND2XL U354 ( .A(n574), .B(busy), .Y(n533) );
  CLKBUFX3 U355 ( .A(n584), .Y(n664) );
  INVXL U356 ( .A(n652), .Y(n293) );
  XOR2X1 U357 ( .A(n341), .B(n516), .Y(square_o[6]) );
  NOR2XL U358 ( .A(n580), .B(n582), .Y(N460) );
  INVXL U359 ( .A(n666), .Y(n292) );
  INVX4 U360 ( .A(rst), .Y(n282) );
  BUFX4 U361 ( .A(N462), .Y(n687) );
  AOI222X1 U362 ( .A0(n665), .A1(cal_reg_1[6]), .B0(n664), .B1(n651), .C0(n662), .C1(square_o[6]), .Y(n652) );
  AOI222X1 U363 ( .A0(n665), .A1(cal_reg_1[5]), .B0(n664), .B1(n647), .C0(n662), .C1(square_o[5]), .Y(n648) );
  INVX2 U364 ( .A(n649), .Y(n655) );
  NOR2X2 U365 ( .A(square_o[6]), .B(cal_reg_1[6]), .Y(n649) );
  NAND2X1 U366 ( .A(n597), .B(n603), .Y(n599) );
  INVX2 U367 ( .A(n630), .Y(n641) );
  NOR2X1 U368 ( .A(square_o[4]), .B(cal_reg_1[4]), .Y(n609) );
  INVX1 U369 ( .A(n605), .Y(n597) );
  NAND2X1 U370 ( .A(n659), .B(n658), .Y(n660) );
  INVX1 U371 ( .A(n657), .Y(n659) );
  NOR2X1 U372 ( .A(n519), .B(n518), .Y(n520) );
  INVX4 U373 ( .A(n530), .Y(n519) );
  ADDHX1 U374 ( .A(n511), .B(n510), .CO(n513), .S(n527) );
  AOI211X1 U375 ( .A0(n501), .A1(n500), .B0(n580), .C0(n499), .Y(n502) );
  AOI211X1 U376 ( .A0(n481), .A1(n480), .B0(n580), .C0(n479), .Y(n482) );
  NOR2X1 U377 ( .A(n501), .B(n500), .Y(n499) );
  AOI211X1 U378 ( .A0(n405), .A1(n404), .B0(n580), .C0(n403), .Y(n406) );
  INVX2 U379 ( .A(n401), .Y(n497) );
  NOR2X1 U380 ( .A(n438), .B(n385), .Y(n386) );
  NOR2X1 U381 ( .A(n443), .B(n402), .Y(n404) );
  OAI2BB1X1 U382 ( .A0N(cal_reg_1[2]), .A1N(n548), .B0(cal_reg_2[2]), .Y(n547)
         );
  NAND2X1 U383 ( .A(YC[1]), .B(n672), .Y(n498) );
  NAND2X1 U384 ( .A(XB[2]), .B(n675), .Y(n412) );
  CLKINVX1 U385 ( .A(n644), .Y(n631) );
  NAND2X1 U386 ( .A(n321), .B(n644), .Y(n645) );
  NAND2X1 U387 ( .A(n655), .B(n653), .Y(n650) );
  INVX3 U388 ( .A(n633), .Y(n643) );
  NOR2X1 U389 ( .A(n649), .B(n657), .Y(n636) );
  INVX1 U390 ( .A(n653), .Y(n654) );
  NAND2X1 U391 ( .A(n642), .B(n630), .Y(n613) );
  CLKINVX1 U392 ( .A(n521), .Y(n523) );
  OR2X1 U393 ( .A(n527), .B(n526), .Y(n340) );
  INVX4 U394 ( .A(n510), .Y(n517) );
  NAND2X1 U395 ( .A(square_o[0]), .B(cal_reg_1[0]), .Y(n598) );
  XOR2X1 U396 ( .A(n637), .B(n559), .Y(n638) );
  XOR2X1 U397 ( .A(n661), .B(n660), .Y(n663) );
  AOI21X1 U398 ( .A0(n636), .A1(n656), .B0(n635), .Y(n637) );
  AOI21X1 U399 ( .A0(n656), .A1(n655), .B0(n654), .Y(n661) );
  NAND2X2 U400 ( .A(n321), .B(n642), .Y(n634) );
  AOI21X1 U401 ( .A0(n643), .A1(n642), .B0(n641), .Y(n646) );
  XNOR2X1 U402 ( .A(n613), .B(n643), .Y(n614) );
  OAI21X1 U403 ( .A0(n657), .A1(n653), .B0(n658), .Y(n635) );
  NAND2X1 U404 ( .A(n523), .B(n522), .Y(n524) );
  AND2X2 U405 ( .A(n530), .B(n531), .Y(n346) );
  OAI222X1 U406 ( .A0(n564), .A1(n508), .B0(n618), .B1(n507), .C0(n620), .C1(
        n506), .Y(n530) );
  INVX1 U407 ( .A(n598), .Y(n639) );
  OAI31X1 U408 ( .A0(n464), .A1(n463), .A2(n618), .B0(n462), .Y(square_o[0])
         );
  INVX1 U409 ( .A(n372), .Y(n477) );
  OAI2BB1X1 U410 ( .A0N(cal_reg_1[4]), .A1N(n552), .B0(cal_reg_2[4]), .Y(n551)
         );
  NOR3BX4 U411 ( .AN(en), .B(rst), .C(busy), .Y(N462) );
  NOR2X1 U412 ( .A(n677), .B(n575), .Y(n625) );
  AOI211X1 U413 ( .A0(n565), .A1(n676), .B0(n539), .C0(n454), .Y(n464) );
  AOI211X1 U414 ( .A0(n565), .A1(XB[0]), .B0(n543), .C0(n455), .Y(n463) );
  CLKBUFX3 U415 ( .A(n532), .Y(n538) );
  INVX3 U416 ( .A(n619), .Y(n505) );
  NOR2X1 U417 ( .A(n582), .B(n581), .Y(N459) );
  INVX1 U418 ( .A(cal_reg_1[8]), .Y(n559) );
  INVX1 U419 ( .A(cal_reg_1[3]), .Y(n549) );
  INVX1 U420 ( .A(cal_reg_1[5]), .Y(n553) );
  INVX1 U421 ( .A(n615), .Y(n295) );
  XOR2X1 U422 ( .A(n646), .B(n645), .Y(n647) );
  INVX1 U423 ( .A(n601), .Y(n297) );
  AOI21X2 U424 ( .A0(n321), .A1(n641), .B0(n631), .Y(n632) );
  INVX1 U425 ( .A(n608), .Y(n296) );
  XNOR2X2 U426 ( .A(n525), .B(n524), .Y(square_o[5]) );
  XOR2X2 U427 ( .A(n529), .B(n342), .Y(square_o[4]) );
  NOR2X1 U428 ( .A(n346), .B(cal_reg_1[2]), .Y(n605) );
  NAND2X1 U429 ( .A(n340), .B(n528), .Y(n529) );
  NOR2X1 U430 ( .A(n519), .B(n509), .Y(n512) );
  INVX1 U431 ( .A(n453), .Y(n515) );
  INVX1 U432 ( .A(n561), .Y(n688) );
  INVX1 U433 ( .A(n586), .Y(n299) );
  OR2X1 U434 ( .A(square_o[0]), .B(cal_reg_1[0]), .Y(n339) );
  OAI31X1 U435 ( .A0(n677), .A1(YB[0]), .A2(n491), .B0(n490), .Y(n495) );
  OAI2BB1X1 U436 ( .A0N(cal_reg_1[6]), .A1N(n556), .B0(cal_reg_2[6]), .Y(n555)
         );
  NAND3X1 U437 ( .A(n677), .B(YB[0]), .C(n491), .Y(n490) );
  NAND3X1 U438 ( .A(n677), .B(YA[0]), .C(n486), .Y(n485) );
  NAND3X1 U439 ( .A(n539), .B(XA[0]), .C(n466), .Y(n465) );
  OR2X1 U440 ( .A(n575), .B(n624), .Y(n577) );
  NOR2X1 U441 ( .A(n620), .B(n585), .Y(n584) );
  OAI31X1 U442 ( .A0(n543), .A1(n361), .A2(n676), .B0(n472), .Y(n362) );
  OAI31X1 U443 ( .A0(state_y[0]), .A1(n399), .A2(n343), .B0(n498), .Y(n400) );
  INVX1 U444 ( .A(n581), .Y(n350) );
  OAI31X2 U445 ( .A0(state_y[0]), .A1(n390), .A2(n668), .B0(n492), .Y(n391) );
  NAND2X1 U446 ( .A(n620), .B(n618), .Y(n616) );
  NAND3X1 U447 ( .A(n689), .B(n684), .C(n282), .Y(n582) );
  OAI22X1 U448 ( .A0(n679), .A1(state_x[3]), .B0(n359), .B1(n415), .Y(n363) );
  NAND2X1 U449 ( .A(n514), .B(n515), .Y(n516) );
  OAI31X1 U450 ( .A0(n677), .A1(YA[0]), .A2(n486), .B0(n485), .Y(n489) );
  OAI31X1 U451 ( .A0(n539), .A1(XA[0]), .A2(n466), .B0(n465), .Y(n469) );
  INVX3 U452 ( .A(n355), .Y(n466) );
  INVX3 U453 ( .A(n392), .Y(n491) );
  NOR2XL U454 ( .A(XC[2]), .B(n675), .Y(n424) );
  NOR2XL U455 ( .A(XA[2]), .B(n675), .Y(n419) );
  INVXL U456 ( .A(n591), .Y(n587) );
  NOR2XL U457 ( .A(XC[3]), .B(n670), .Y(n368) );
  NOR2XL U458 ( .A(XA[3]), .B(n670), .Y(n351) );
  OAI31X1 U459 ( .A0(state_y[0]), .A1(n382), .A2(n348), .B0(n487), .Y(n383) );
  NOR2XL U460 ( .A(n677), .B(YA[0]), .Y(n381) );
  NOR2XL U461 ( .A(YA[2]), .B(n320), .Y(n438) );
  NOR2XL U462 ( .A(YC[2]), .B(n320), .Y(n443) );
  NOR2XL U463 ( .A(n677), .B(YC[0]), .Y(n398) );
  NOR2XL U464 ( .A(YB[2]), .B(n320), .Y(n433) );
  NOR2XL U465 ( .A(n677), .B(YB[0]), .Y(n389) );
  OAI211XL U466 ( .A0(n591), .A1(inc), .B0(current_md[1]), .C0(current_md[0]), 
        .Y(n589) );
  CLKINVX1 U467 ( .A(n610), .Y(n611) );
  AOI33XL U468 ( .A0(XA[3]), .A1(n421), .A2(n670), .B0(state_x[3]), .B1(n420), 
        .B2(n678), .Y(n428) );
  AOI33XL U469 ( .A0(XB[3]), .A1(n416), .A2(n670), .B0(state_x[3]), .B1(n415), 
        .B2(n679), .Y(n430) );
  ADDHXL U470 ( .A(cal_reg_1[1]), .B(n639), .CO(n602), .S(n640) );
  BUFX2 U471 ( .A(state_y[3]), .Y(n579) );
  AOI211XL U472 ( .A0(n565), .A1(n668), .B0(n677), .C0(n456), .Y(n459) );
  AOI211XL U473 ( .A0(n565), .A1(YB[0]), .B0(state_y[0]), .C0(n457), .Y(n458)
         );
  BUFX2 U474 ( .A(n350), .Y(n565) );
  AND2X1 U475 ( .A(n339), .B(n598), .Y(n344) );
  NOR2XL U476 ( .A(XB[3]), .B(n670), .Y(n359) );
  NAND3XL U477 ( .A(n677), .B(YC[0]), .C(n497), .Y(n496) );
  NAND3XL U478 ( .A(n539), .B(XB[0]), .C(n471), .Y(n470) );
  NAND3XL U479 ( .A(n539), .B(XC[0]), .C(n477), .Y(n476) );
  NOR2XL U480 ( .A(XB[2]), .B(n675), .Y(n414) );
  NOR2XL U481 ( .A(n539), .B(XB[0]), .Y(n360) );
  NOR2XL U482 ( .A(n376), .B(n375), .Y(n374) );
  NOR2XL U483 ( .A(n419), .B(n356), .Y(n357) );
  OAI22XL U484 ( .A0(n466), .A1(n418), .B0(n355), .B1(n354), .Y(n358) );
  AOI211XL U485 ( .A0(n396), .A1(n395), .B0(n581), .C0(n394), .Y(n407) );
  NOR2XL U486 ( .A(n433), .B(n393), .Y(n395) );
  NOR2XL U487 ( .A(n405), .B(n404), .Y(n403) );
  INVXL U488 ( .A(n588), .Y(n595) );
  NOR2XL U489 ( .A(n542), .B(n574), .Y(n546) );
  NAND2XL U490 ( .A(n543), .B(state_x[1]), .Y(n573) );
  NAND4XL U491 ( .A(n579), .B(n542), .C(n677), .D(n672), .Y(n536) );
  NAND2X1 U492 ( .A(n453), .B(cal_reg_1[7]), .Y(n658) );
  NAND2X2 U493 ( .A(square_o[5]), .B(cal_reg_1[5]), .Y(n644) );
  NAND2X1 U494 ( .A(square_o[3]), .B(cal_reg_1[3]), .Y(n610) );
  OAI21X1 U495 ( .A0(n605), .A1(n604), .B0(n603), .Y(n612) );
  INVXL U496 ( .A(n602), .Y(n604) );
  NOR2X1 U497 ( .A(n453), .B(cal_reg_1[7]), .Y(n657) );
  NOR2XL U498 ( .A(n618), .B(n623), .Y(n532) );
  NAND2XL U499 ( .A(state_y[1]), .B(n625), .Y(n628) );
  NOR2XL U500 ( .A(current_md[1]), .B(current_md[0]), .Y(n590) );
  INVXL U501 ( .A(n616), .Y(n568) );
  NOR2X2 U502 ( .A(n517), .B(n519), .Y(n526) );
  OAI222X1 U503 ( .A0(n564), .A1(n452), .B0(n618), .B1(n451), .C0(n620), .C1(
        n450), .Y(n514) );
  NOR2X2 U504 ( .A(n513), .B(n512), .Y(n521) );
  NAND2X2 U505 ( .A(n527), .B(n526), .Y(n528) );
  NAND2X1 U506 ( .A(n513), .B(n512), .Y(n522) );
  CLKINVX1 U507 ( .A(n514), .Y(n509) );
  XNOR2X1 U508 ( .A(n650), .B(n656), .Y(n651) );
  XOR2X1 U509 ( .A(\DP_OP_54J1_123_3697/n1 ), .B(n691), .Y(n534) );
  MX2X1 U510 ( .A(XA[0]), .B(central[20]), .S0(n687), .Y(n667) );
  OAI211XL U511 ( .A0(n571), .A1(n623), .B0(n570), .C0(n569), .Y(n310) );
  OAI211XL U512 ( .A0(state_y[0]), .A1(n575), .B0(busy), .C0(n537), .Y(n307)
         );
  AOI222XL U513 ( .A0(n665), .A1(cal_reg_1[3]), .B0(n664), .B1(n607), .C0(n662), .C1(square_o[3]), .Y(n608) );
  XNOR2X1 U514 ( .A(n606), .B(n612), .Y(n607) );
  NAND2XL U515 ( .A(n322), .B(n610), .Y(n606) );
  OAI211XL U516 ( .A0(n669), .A1(n571), .B0(n580), .C0(n563), .Y(n309) );
  XOR2X1 U517 ( .A(n345), .B(n531), .Y(square_o[3]) );
  INVXL U518 ( .A(cal_reg_1[7]), .Y(n558) );
  OR2X4 U519 ( .A(square_o[5]), .B(cal_reg_1[5]), .Y(n321) );
  INVX3 U520 ( .A(n520), .Y(n531) );
  OAI22X1 U521 ( .A0(n683), .A1(n579), .B0(n397), .B1(n444), .Y(n401) );
  NAND2X2 U522 ( .A(set_cs[0]), .B(n689), .Y(n618) );
  NOR2X2 U523 ( .A(n564), .B(n585), .Y(N464) );
  OAI32XL U524 ( .A0(n579), .A1(n320), .A2(n628), .B0(n578), .B1(n671), .Y(
        n304) );
  AOI33XL U525 ( .A0(YB[3]), .A1(n435), .A2(n671), .B0(n579), .B1(n434), .B2(
        n682), .Y(n449) );
  AOI33XL U526 ( .A0(YA[3]), .A1(n440), .A2(n671), .B0(n579), .B1(n439), .B2(
        n681), .Y(n447) );
  AOI33XL U527 ( .A0(YC[3]), .A1(n445), .A2(n671), .B0(n579), .B1(n444), .B2(
        n683), .Y(n446) );
  NOR2XL U528 ( .A(YA[3]), .B(n671), .Y(n380) );
  NOR2XL U529 ( .A(YB[3]), .B(n671), .Y(n388) );
  NOR2XL U530 ( .A(YC[3]), .B(n671), .Y(n397) );
  NAND2X2 U531 ( .A(n673), .B(n669), .Y(n619) );
  AOI222XL U532 ( .A0(n665), .A1(cal_reg_1[2]), .B0(n664), .B1(n600), .C0(n662), .C1(n346), .Y(n601) );
  NAND2X1 U533 ( .A(n346), .B(cal_reg_1[2]), .Y(n603) );
  AOI222XL U534 ( .A0(n665), .A1(cal_reg_1[4]), .B0(n664), .B1(n614), .C0(n662), .C1(square_o[4]), .Y(n615) );
  NAND2X2 U535 ( .A(square_o[6]), .B(cal_reg_1[6]), .Y(n653) );
  NAND2X2 U536 ( .A(set_cs[1]), .B(n684), .Y(n620) );
  NAND2XL U537 ( .A(n575), .B(busy), .Y(n576) );
  AOI22XL U538 ( .A0(n546), .A1(n573), .B0(n574), .B1(busy), .Y(n572) );
  INVX16 U539 ( .A(n349), .Y(busy) );
  NAND2X2 U540 ( .A(n669), .B(set_cs[2]), .Y(n581) );
  CLKINVX1 U541 ( .A(square_o[0]), .Y(n518) );
  INVX12 U542 ( .A(n323), .Y(candidate[7]) );
  INVX12 U543 ( .A(n325), .Y(candidate[0]) );
  INVX12 U544 ( .A(n327), .Y(candidate[5]) );
  INVX12 U545 ( .A(n329), .Y(candidate[6]) );
  INVX12 U546 ( .A(n331), .Y(candidate[2]) );
  INVX12 U547 ( .A(n333), .Y(candidate[3]) );
  INVX12 U548 ( .A(n335), .Y(candidate[4]) );
  INVX12 U549 ( .A(n337), .Y(candidate[1]) );
  OAI31X1 U550 ( .A0(n543), .A1(n353), .A2(n690), .B0(n467), .Y(n354) );
  OA21XL U551 ( .A0(n521), .A1(n528), .B0(n522), .Y(n341) );
  OR2X2 U552 ( .A(n345), .B(n531), .Y(n342) );
  NOR2XL U553 ( .A(n396), .B(n395), .Y(n394) );
  AND2X1 U554 ( .A(inb), .B(ina), .Y(n591) );
  AOI22XL U555 ( .A0(n592), .A1(n591), .B0(ina), .B1(n590), .Y(n593) );
  OAI211XL U556 ( .A0(n596), .A1(n595), .B0(n594), .C0(n593), .Y(\C1/Z_0 ) );
  XNOR2X1 U557 ( .A(n599), .B(n602), .Y(n600) );
  NOR2XL U558 ( .A(n620), .B(n623), .Y(n562) );
  OAI32XL U559 ( .A0(state_x[2]), .A1(n574), .A2(n573), .B0(n572), .B1(n675), 
        .Y(n302) );
  NOR2XL U560 ( .A(n623), .B(n582), .Y(N461) );
  NOR3BX1 U561 ( .AN(n505), .B(set_cs[1]), .C(set_cs[0]), .Y(n349) );
  NOR2X1 U562 ( .A(n689), .B(n684), .Y(n566) );
  CLKINVX1 U563 ( .A(n566), .Y(n564) );
  NAND2X2 U564 ( .A(n673), .B(set_cs[3]), .Y(n580) );
  CLKINVX1 U565 ( .A(n580), .Y(n567) );
  AOI222XL U566 ( .A0(n565), .A1(RB[2]), .B0(n505), .B1(RA[2]), .C0(n567), 
        .C1(RC[2]), .Y(n411) );
  NAND2X1 U567 ( .A(XA[2]), .B(n675), .Y(n417) );
  CLKINVX1 U568 ( .A(n417), .Y(n356) );
  NOR2X1 U569 ( .A(XA[1]), .B(n674), .Y(n353) );
  NAND2X1 U570 ( .A(XA[1]), .B(n674), .Y(n467) );
  OAI22XL U571 ( .A0(XA[2]), .A1(n675), .B0(n356), .B1(n354), .Y(n420) );
  OAI22XL U572 ( .A0(n678), .A1(state_x[3]), .B0(n351), .B1(n420), .Y(n355) );
  INVX3 U573 ( .A(n543), .Y(n539) );
  NOR2X1 U574 ( .A(n539), .B(XA[0]), .Y(n352) );
  OA21XL U575 ( .A0(n353), .A1(n352), .B0(n467), .Y(n418) );
  AOI2BB2X1 U576 ( .B0(n358), .B1(n357), .A0N(n358), .A1N(n357), .Y(n379) );
  CLKINVX1 U577 ( .A(n412), .Y(n364) );
  NOR2X1 U578 ( .A(XB[1]), .B(n674), .Y(n361) );
  NAND2X1 U579 ( .A(XB[1]), .B(n674), .Y(n472) );
  OAI22XL U580 ( .A0(XB[2]), .A1(n675), .B0(n364), .B1(n362), .Y(n415) );
  INVX1 U581 ( .A(n363), .Y(n471) );
  OA21XL U582 ( .A0(n361), .A1(n360), .B0(n472), .Y(n413) );
  OAI22XL U583 ( .A0(n471), .A1(n413), .B0(n363), .B1(n362), .Y(n367) );
  NOR2X1 U584 ( .A(n414), .B(n364), .Y(n366) );
  NOR2X1 U585 ( .A(n367), .B(n366), .Y(n365) );
  AOI211X1 U586 ( .A0(n367), .A1(n366), .B0(n581), .C0(n365), .Y(n378) );
  NAND2X1 U587 ( .A(XC[2]), .B(n675), .Y(n422) );
  CLKINVX1 U588 ( .A(n422), .Y(n373) );
  NOR2X1 U589 ( .A(XC[1]), .B(n674), .Y(n370) );
  NAND2X1 U590 ( .A(XC[1]), .B(n674), .Y(n478) );
  OAI31X1 U591 ( .A0(n543), .A1(n370), .A2(n347), .B0(n478), .Y(n371) );
  OAI22X1 U592 ( .A0(XC[2]), .A1(n675), .B0(n373), .B1(n371), .Y(n425) );
  OAI22X1 U593 ( .A0(n680), .A1(state_x[3]), .B0(n368), .B1(n425), .Y(n372) );
  OA21XL U594 ( .A0(n370), .A1(n369), .B0(n478), .Y(n423) );
  OAI22XL U595 ( .A0(n477), .A1(n423), .B0(n372), .B1(n371), .Y(n376) );
  NAND2X1 U596 ( .A(YA[2]), .B(n320), .Y(n436) );
  INVX1 U597 ( .A(n436), .Y(n385) );
  NOR2X1 U598 ( .A(YA[1]), .B(n672), .Y(n382) );
  NAND2X1 U599 ( .A(YA[1]), .B(n672), .Y(n487) );
  OAI22XL U600 ( .A0(YA[2]), .A1(n320), .B0(n385), .B1(n383), .Y(n439) );
  OAI22XL U601 ( .A0(n681), .A1(n579), .B0(n380), .B1(n439), .Y(n384) );
  OA21XL U602 ( .A0(n382), .A1(n381), .B0(n487), .Y(n437) );
  OAI22XL U603 ( .A0(n486), .A1(n437), .B0(n384), .B1(n383), .Y(n387) );
  AOI2BB2X1 U604 ( .B0(n387), .B1(n386), .A0N(n387), .A1N(n386), .Y(n408) );
  NAND2X1 U605 ( .A(YB[2]), .B(n320), .Y(n431) );
  INVX1 U606 ( .A(n431), .Y(n393) );
  NOR2X1 U607 ( .A(YB[1]), .B(n672), .Y(n390) );
  NAND2X1 U608 ( .A(YB[1]), .B(n672), .Y(n492) );
  OAI22XL U609 ( .A0(YB[2]), .A1(n320), .B0(n393), .B1(n391), .Y(n434) );
  OAI22XL U610 ( .A0(n682), .A1(n579), .B0(n388), .B1(n434), .Y(n392) );
  OA21XL U611 ( .A0(n390), .A1(n389), .B0(n492), .Y(n432) );
  OAI22XL U612 ( .A0(n491), .A1(n432), .B0(n392), .B1(n391), .Y(n396) );
  NAND2X1 U613 ( .A(YC[2]), .B(n320), .Y(n441) );
  INVX1 U614 ( .A(n441), .Y(n402) );
  NOR2X1 U615 ( .A(YC[1]), .B(n672), .Y(n399) );
  OA21XL U616 ( .A0(n399), .A1(n398), .B0(n498), .Y(n442) );
  OAI22XL U617 ( .A0(n497), .A1(n442), .B0(n401), .B1(n400), .Y(n405) );
  AOI211X1 U618 ( .A0(n505), .A1(n408), .B0(n407), .C0(n406), .Y(n409) );
  OAI222X4 U619 ( .A0(n564), .A1(n411), .B0(n618), .B1(n410), .C0(n620), .C1(
        n409), .Y(n510) );
  AOI222XL U620 ( .A0(n565), .A1(RB[3]), .B0(n505), .B1(RA[3]), .C0(n567), 
        .C1(RC[3]), .Y(n452) );
  OAI21XL U621 ( .A0(n414), .A1(n413), .B0(n412), .Y(n416) );
  OAI21XL U622 ( .A0(n419), .A1(n418), .B0(n417), .Y(n421) );
  OAI21XL U623 ( .A0(n424), .A1(n423), .B0(n422), .Y(n426) );
  OAI22XL U624 ( .A0(n619), .A1(n428), .B0(n580), .B1(n427), .Y(n429) );
  AOI2BB1X1 U625 ( .A0N(n581), .A1N(n430), .B0(n429), .Y(n451) );
  OAI21XL U626 ( .A0(n433), .A1(n432), .B0(n431), .Y(n435) );
  OAI21XL U627 ( .A0(n438), .A1(n437), .B0(n436), .Y(n440) );
  OAI21XL U628 ( .A0(n443), .A1(n442), .B0(n441), .Y(n445) );
  OAI22XL U629 ( .A0(n619), .A1(n447), .B0(n580), .B1(n446), .Y(n448) );
  AOI2BB1X1 U630 ( .A0N(n581), .A1N(n449), .B0(n448), .Y(n450) );
  OAI22XL U631 ( .A0(XA[0]), .A1(n619), .B0(XC[0]), .B1(n580), .Y(n454) );
  OAI22XL U632 ( .A0(n619), .A1(n690), .B0(n580), .B1(n347), .Y(n455) );
  AOI222XL U633 ( .A0(n565), .A1(RB[0]), .B0(n505), .B1(RA[0]), .C0(n567), 
        .C1(RC[0]), .Y(n461) );
  OAI22XL U634 ( .A0(YA[0]), .A1(n619), .B0(YC[0]), .B1(n580), .Y(n456) );
  OAI22XL U635 ( .A0(n619), .A1(n348), .B0(n580), .B1(n343), .Y(n457) );
  AOI2BB1X1 U636 ( .A0N(n461), .A1N(n564), .B0(n460), .Y(n462) );
  AOI222XL U637 ( .A0(n565), .A1(RB[1]), .B0(n505), .B1(RA[1]), .C0(n567), 
        .C1(RC[1]), .Y(n508) );
  OAI21XL U638 ( .A0(XA[1]), .A1(n674), .B0(n467), .Y(n468) );
  AOI2BB2X1 U639 ( .B0(n469), .B1(n468), .A0N(n469), .A1N(n468), .Y(n484) );
  OAI21XL U640 ( .A0(XB[1]), .A1(n674), .B0(n472), .Y(n474) );
  NOR2X1 U641 ( .A(n475), .B(n474), .Y(n473) );
  AOI211X1 U642 ( .A0(n475), .A1(n474), .B0(n581), .C0(n473), .Y(n483) );
  OAI31X1 U643 ( .A0(n539), .A1(XC[0]), .A2(n477), .B0(n476), .Y(n481) );
  OAI21XL U644 ( .A0(XC[1]), .A1(n674), .B0(n478), .Y(n480) );
  NOR2X1 U645 ( .A(n481), .B(n480), .Y(n479) );
  AOI211X1 U646 ( .A0(n505), .A1(n484), .B0(n483), .C0(n482), .Y(n507) );
  OAI21XL U647 ( .A0(YA[1]), .A1(n672), .B0(n487), .Y(n488) );
  AOI2BB2X1 U648 ( .B0(n489), .B1(n488), .A0N(n489), .A1N(n488), .Y(n504) );
  OAI21XL U649 ( .A0(YB[1]), .A1(n672), .B0(n492), .Y(n494) );
  NOR2X1 U650 ( .A(n495), .B(n494), .Y(n493) );
  AOI211X1 U651 ( .A0(n495), .A1(n494), .B0(n581), .C0(n493), .Y(n503) );
  OAI21XL U652 ( .A0(YC[1]), .A1(n672), .B0(n498), .Y(n500) );
  AOI211X1 U653 ( .A0(n505), .A1(n504), .B0(n503), .C0(n502), .Y(n506) );
  NAND2X1 U654 ( .A(n528), .B(n342), .Y(n525) );
  NAND2X1 U655 ( .A(set_cs[2]), .B(set_cs[3]), .Y(n623) );
  CLKINVX1 U656 ( .A(n538), .Y(n574) );
  OAI21X2 U657 ( .A0(n538), .A1(en), .B0(n533), .Y(n535) );
  AO22X1 U658 ( .A0(n535), .A1(n691), .B0(n538), .B1(n534), .Y(n283) );
  AO22X1 U659 ( .A0(n535), .A1(n692), .B0(n538), .B1(N418), .Y(n284) );
  AO22X1 U660 ( .A0(n535), .A1(n693), .B0(n538), .B1(N417), .Y(n285) );
  AO22X1 U661 ( .A0(n535), .A1(n694), .B0(n538), .B1(N416), .Y(n286) );
  AO22X1 U662 ( .A0(n535), .A1(n698), .B0(n538), .B1(N412), .Y(n290) );
  AO22X1 U663 ( .A0(n535), .A1(n695), .B0(n538), .B1(N415), .Y(n287) );
  AO22X1 U664 ( .A0(n535), .A1(n697), .B0(n538), .B1(N413), .Y(n289) );
  AO22X1 U665 ( .A0(n535), .A1(n696), .B0(n538), .B1(N414), .Y(n288) );
  OAI221XL U666 ( .A0(n538), .A1(n539), .B0(n574), .B1(n543), .C0(busy), .Y(
        n303) );
  NOR4X1 U667 ( .A(n543), .B(state_x[2]), .C(state_x[1]), .D(n670), .Y(n542)
         );
  NAND2X1 U668 ( .A(n538), .B(n542), .Y(n575) );
  NOR2X1 U669 ( .A(state_y[2]), .B(n536), .Y(n624) );
  OAI21XL U670 ( .A0(n624), .A1(n575), .B0(state_y[0]), .Y(n537) );
  NAND2XL U671 ( .A(n543), .B(n538), .Y(n541) );
  OAI21XL U672 ( .A0(n574), .A1(n539), .B0(busy), .Y(n540) );
  OAI22XL U673 ( .A0(state_x[1]), .A1(n541), .B0(n674), .B1(n540), .Y(n308) );
  NAND2XL U674 ( .A(state_x[3]), .B(n675), .Y(n544) );
  OAI31XL U675 ( .A0(state_x[3]), .A1(n675), .A2(n573), .B0(n544), .Y(n545) );
  OAI2BB2XL U676 ( .B0(n572), .B1(n670), .A0N(n546), .A1N(n545), .Y(n301) );
  AO21X1 U677 ( .A0(n685), .A1(cal_reg_1[0]), .B0(cal_reg_1[1]), .Y(n548) );
  OAI21XL U678 ( .A0(cal_reg_1[2]), .A1(n548), .B0(n547), .Y(n550) );
  AOI222XL U679 ( .A0(cal_reg_2[3]), .A1(n550), .B0(cal_reg_2[3]), .B1(n549), 
        .C0(n550), .C1(n549), .Y(n552) );
  OAI21XL U680 ( .A0(cal_reg_1[4]), .A1(n552), .B0(n551), .Y(n554) );
  AOI222XL U681 ( .A0(cal_reg_2[5]), .A1(n554), .B0(cal_reg_2[5]), .B1(n553), 
        .C0(n554), .C1(n553), .Y(n556) );
  OAI21XL U682 ( .A0(cal_reg_1[6]), .A1(n556), .B0(n555), .Y(n557) );
  AOI222XL U683 ( .A0(cal_reg_2[7]), .A1(n558), .B0(cal_reg_2[7]), .B1(n557), 
        .C0(n558), .C1(n557), .Y(n560) );
  NAND2BX1 U684 ( .AN(n560), .B(n559), .Y(n561) );
  BUFX12 U685 ( .A(n562), .Y(valid) );
  OAI21XL U686 ( .A0(n624), .A1(n684), .B0(n689), .Y(n571) );
  OAI211XL U687 ( .A0(n566), .A1(n590), .B0(n565), .C0(n568), .Y(n563) );
  OAI22XL U688 ( .A0(n566), .A1(n565), .B0(n564), .B1(n673), .Y(n570) );
  NOR2BX1 U689 ( .AN(current_md[1]), .B(current_md[0]), .Y(n588) );
  NOR2BX1 U690 ( .AN(current_md[0]), .B(current_md[1]), .Y(n592) );
  OAI211XL U691 ( .A0(n588), .A1(n592), .B0(n568), .C0(n567), .Y(n569) );
  OA21XL U692 ( .A0(state_y[0]), .A1(n577), .B0(n576), .Y(n626) );
  OAI21XL U693 ( .A0(state_y[1]), .A1(n577), .B0(n626), .Y(n627) );
  AOI2BB1X1 U694 ( .A0N(n577), .A1N(state_y[2]), .B0(n627), .Y(n578) );
  NAND2BX1 U695 ( .AN(n585), .B(n616), .Y(n583) );
  NOR2X2 U696 ( .A(n618), .B(n585), .Y(n662) );
  AOI222XL U697 ( .A0(n665), .A1(cal_reg_1[0]), .B0(n344), .B1(n664), .C0(
        square_o[0]), .C1(n662), .Y(n586) );
  OAI21XL U698 ( .A0(ina), .A1(inb), .B0(n587), .Y(n596) );
  AO21X1 U699 ( .A0(inc), .A1(n596), .B0(n589), .Y(n594) );
  INVXL U700 ( .A(n624), .Y(n617) );
  OAI2BB2XL U701 ( .B0(n618), .B1(n617), .A0N(n623), .A1N(n616), .Y(n316) );
  OAI22XL U702 ( .A0(en), .A1(n619), .B0(n689), .B1(n669), .Y(n621) );
  OA22X1 U703 ( .A0(set_cs[0]), .A1(n621), .B0(set_cs[2]), .B1(n620), .Y(n622)
         );
  OAI31XL U704 ( .A0(set_cs[1]), .A1(n624), .A2(n623), .B0(n622), .Y(n315) );
  AOI2BB2X1 U705 ( .B0(state_y[1]), .B1(n626), .A0N(state_y[1]), .A1N(n625), 
        .Y(n306) );
  AOI2BB2X1 U706 ( .B0(n320), .B1(n628), .A0N(n320), .A1N(n627), .Y(n305) );
  OAI21X4 U707 ( .A0(n634), .A1(n633), .B0(n632), .Y(n656) );
  AO22X1 U708 ( .A0(cal_reg_1[8]), .A1(n665), .B0(n664), .B1(n638), .Y(n300)
         );
  AO22X1 U709 ( .A0(cal_reg_1[1]), .A1(n665), .B0(n664), .B1(n640), .Y(n298)
         );
  INVX1 U710 ( .A(n648), .Y(n294) );
  AOI222X1 U711 ( .A0(n665), .A1(cal_reg_1[7]), .B0(n664), .B1(n663), .C0(n662), .C1(n453), .Y(n666) );
endmodule

