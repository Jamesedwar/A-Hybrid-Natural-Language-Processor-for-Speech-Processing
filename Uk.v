module Uk(Ukp, add, CS,cen); 
output[7:0] Ukp;
input[7:0] add;
input CS,cen;
reg [7:0] Ukp;
reg [7:0] ROM[0:255];
always @(posedge CS or negedge cen)
begin
if(cen==0)
begin
ROM[0] <= 8'h0;	
ROM[1] <= 8'h2;	
ROM[2] <= 8'h2;	 
ROM[3] <= 8'h2;	
ROM[4] <= 8'h2;	
ROM[5] <= 8'h2;	
ROM[6] <= 8'h2;	
ROM[7] <= 8'h2;	
ROM[8] <= 8'h2;	
ROM[9] <= 8'h2;	
ROM[10] <= 8'h2;	
ROM[11] <= 8'h2;	
ROM[12] <= 8'h2;	
ROM[13] <= 8'h2;	
ROM[14] <= 8'h2;	
ROM[15] <= 8'h2;	
ROM[16] <= 8'h2;	
ROM[17] <= 8'h2;	
ROM[18] <= 8'h2;	
ROM[19] <= 8'h2;	
ROM[20] <= 8'h2;	
ROM[21] <= 8'h2;	
ROM[22] <= 8'h2;	
ROM[23] <= 8'h2;	
ROM[24] <= 8'h2;	
ROM[25] <= 8'h2;	
ROM[26] <= 8'h2;	
ROM[27] <= 8'h2;	
ROM[28] <= 8'h2;	
ROM[29] <= 8'h2;	
ROM[30] <= 8'h2;	
ROM[31] <= 8'h2;	
ROM[32] <= 8'h2;	
ROM[33] <= 8'h2;	
ROM[34] <= 8'h2;	
ROM[35] <= 8'h2;	
ROM[36] <= 8'h2;	
ROM[37] <= 8'h2;	
ROM[38] <= 8'h2;	
ROM[39] <= 8'h2;	
ROM[40] <= 8'h2;	
ROM[41] <= 8'h2;	
ROM[42] <= 8'h2;	
ROM[43] <= 8'h2;	
ROM[44] <= 8'h2;	
ROM[45] <= 8'h2;	
ROM[46] <= 8'h2;	
ROM[47] <= 8'h2;	
ROM[48] <= 8'h2;	
ROM[49] <= 8'h2;	
ROM[50] <= 8'h2;	
ROM[51] <= 8'h2;	
ROM[52] <= 8'h2;	
ROM[53] <= 8'h2;	
ROM[54] <= 8'h2;	
ROM[55] <= 8'h2;	
ROM[56] <= 8'h2;	
ROM[57] <= 8'h2;	
ROM[58] <= 8'h2;	
ROM[59] <= 8'h2;	
ROM[60] <= 8'h2;	
ROM[61] <= 8'h2;	
ROM[62] <= 8'h2;	
ROM[63] <= 8'h2;	
ROM[64] <= 8'h2;	
ROM[65] <= 8'h2;	
ROM[66] <= 8'h2;	
ROM[67] <= 8'h2;	
ROM[68] <= 8'h2;	
ROM[69] <= 8'h2;	
ROM[70] <= 8'h2;	
ROM[71] <= 8'h2;	
ROM[72] <= 8'h2;	
ROM[73] <= 8'h2;	
ROM[74] <= 8'h2;	
ROM[75] <= 8'h2;	
ROM[76] <= 8'h2;	
ROM[77] <= 8'h2;	
ROM[78] <= 8'h2;	
ROM[79] <= 8'h2;	
ROM[80] <= 8'h2;	
ROM[81] <= 8'h2;	
ROM[82] <= 8'h2;	
ROM[83] <= 8'h2;	
ROM[84] <= 8'h2;	
ROM[85] <= 8'h2;	
ROM[86] <= 8'h2;	
ROM[87] <= 8'h2;	
ROM[88] <= 8'h2;	
ROM[89] <= 8'h2;	
ROM[90] <= 8'h2;	
ROM[91] <= 8'h2;	
ROM[92] <= 8'h2;	
ROM[93] <= 8'h2;	
ROM[94] <= 8'h2;	
ROM[95] <= 8'h2;	
ROM[96] <= 8'h2;	
ROM[97] <= 8'h2;	
ROM[98] <= 8'h2;		
ROM[99] <= 8'h2;	
ROM[100] <= 8'h2;	
ROM[101] <= 8'h2;	
ROM[102] <= 8'h2;	
ROM[103] <= 8'h2;	
ROM[104] <= 8'h2;	
ROM[105] <= 8'h2;	
ROM[106] <= 8'h2;	
ROM[107] <= 8'h2;	
ROM[108] <= 8'h2;	
ROM[109] <= 8'h2;	
ROM[110] <= 8'h2;	
ROM[111] <= 8'h2;	
ROM[112] <= 8'h2;	
ROM[113] <= 8'h2;	
ROM[114] <= 8'h2;	
ROM[115] <= 8'h2;	
ROM[116] <= 8'h2;	
ROM[117] <= 8'h2;	
ROM[118] <= 8'h2;	
ROM[119] <= 8'h2;	
ROM[120] <= 8'h2;	
ROM[121] <= 8'h2;	
ROM[122] <= 8'h2;	
ROM[123] <= 8'h2;	
ROM[124] <= 8'h2;	
ROM[125] <= 8'h2;	
ROM[126] <= 8'h2;	
ROM[127] <= 8'h2;	
ROM[128] <= 8'h2;	
ROM[129] <= 8'h2;	
ROM[130] <= 8'h2;	
ROM[131] <= 8'h2;	
ROM[132] <= 8'h2;	
ROM[133] <= 8'h2;	
ROM[134] <= 8'h2;	
ROM[135] <= 8'h2;	
ROM[136] <= 8'h2;	
ROM[137] <= 8'h2;	
ROM[138] <= 8'h2;	
ROM[139] <= 8'h2;	
ROM[140] <= 8'h2;	
ROM[141] <= 8'h2;	
ROM[142] <= 8'h2;	
ROM[143] <= 8'h2;	
ROM[144] <= 8'h2;	
ROM[145] <= 8'h2;	
ROM[146] <= 8'h2;	
ROM[147] <= 8'h2;	
ROM[148] <= 8'h2;	
ROM[149] <= 8'h2;	
ROM[150] <= 8'h2;	
ROM[151] <= 8'h2;	
ROM[152] <= 8'h2;	
ROM[153] <= 8'h2;	
ROM[154] <= 8'h2;	
ROM[155] <= 8'h2;	
ROM[156] <= 8'h2;	
ROM[157] <= 8'h2;	
ROM[158] <= 8'h2;	
ROM[159] <= 8'h2;	
ROM[160] <= 8'h2;	
ROM[161] <= 8'h2;	
ROM[162] <= 8'h2;	
ROM[163] <= 8'h2;	
ROM[164] <= 8'h2;	
ROM[165] <= 8'h2;	
ROM[166] <= 8'h2;	
ROM[167] <= 8'h2;	
ROM[168] <= 8'h2;	
ROM[169] <= 8'h2;	
ROM[170] <= 8'h2;	
ROM[171] <= 8'h2;	
ROM[172] <= 8'h2;	
ROM[173] <= 8'h2;	
ROM[174] <= 8'h2;	
ROM[175] <= 8'h2;	
ROM[176] <= 8'h2;	
ROM[177] <= 8'h2;	
ROM[178] <= 8'h2;	
ROM[179] <= 8'h2;	
ROM[180] <= 8'h2;	
ROM[181] <= 8'h2;	
ROM[182] <= 8'h2;	
ROM[183] <= 8'h2;	
ROM[184] <= 8'h2;	
ROM[185] <= 8'h2;	
ROM[186] <= 8'h2;	
ROM[187] <= 8'h2;	
ROM[188] <= 8'h2;	
ROM[189] <= 8'h2;	
ROM[190] <= 8'h2;	
ROM[191] <= 8'h2;	
ROM[192] <= 8'h2;	
ROM[193] <= 8'h2;	
ROM[194] <= 8'h2;	
ROM[195] <= 8'h2;	
ROM[196] <= 8'h2;	
ROM[197] <= 8'h2;	
ROM[198] <= 8'h2;		
ROM[199] <= 8'h2;	
ROM[200] <= 8'h2;	
ROM[201] <= 8'h2;	
ROM[202] <= 8'h2;	
ROM[203] <= 8'h2;	
ROM[204] <= 8'h2;	
ROM[205] <= 8'h2;	
ROM[206] <= 8'h2;	
ROM[207] <= 8'h2;	
ROM[208] <= 8'h2;	
ROM[209] <= 8'h2;	
ROM[210] <= 8'h2;	
ROM[211] <= 8'h2;	
ROM[212] <= 8'h2;	
ROM[213] <= 8'h2;	
ROM[214] <= 8'h2;	
ROM[215] <= 8'h2;	
ROM[216] <= 8'h2;	
ROM[217] <= 8'h2;	
ROM[218] <= 8'h2;	
ROM[219] <= 8'h2;	
ROM[220] <= 8'h2;	
ROM[221] <= 8'h2;	
ROM[222] <= 8'h2;	
ROM[223] <= 8'h2;	
ROM[224] <= 8'h2;	
ROM[225] <= 8'h2;	
ROM[226] <= 8'h2;	
ROM[227] <= 8'h2;	
ROM[228] <= 8'h2;	
ROM[229] <= 8'h2;	
ROM[230] <= 8'h2;	
ROM[231] <= 8'h2;	
ROM[232] <= 8'h2;	
ROM[233] <= 8'h2;	
ROM[234] <= 8'h2;	
ROM[235] <= 8'h2;	
ROM[236] <= 8'h2;	
ROM[237] <= 8'h2;	
ROM[238] <= 8'h2;	
ROM[239] <= 8'h2;	
ROM[240] <= 8'h2;	
ROM[241] <= 8'h2;	
ROM[242] <= 8'h2;	
ROM[243] <= 8'h2;	
ROM[244] <= 8'h2;	
ROM[245] <= 8'h2;	
ROM[246] <= 8'h2;	
ROM[247] <= 8'h2;	
ROM[248] <= 8'h2;	
ROM[249] <= 8'h2;	
ROM[250] <= 8'h2;	
ROM[251] <= 8'h2;	
ROM[252] <= 8'h2;	
ROM[253] <= 8'h2;	
ROM[254] <= 8'h2;	
ROM[255] <= 8'h2;
Ukp<=0;	
end
else
begin
ROM[0] <= 8'h0;	
ROM[1] <= 8'h2;	
ROM[2] <= 8'h2;	 
ROM[3] <= 8'h2;	
ROM[4] <= 8'h2;	
ROM[5] <= 8'h2;	
ROM[6] <= 8'h2;	
ROM[7] <= 8'h2;	
ROM[8] <= 8'h2;	
ROM[9] <= 8'h2;	
ROM[10] <= 8'h2;	
ROM[11] <= 8'h2;	
ROM[12] <= 8'h2;	
ROM[13] <= 8'h2;	
ROM[14] <= 8'h2;	
ROM[15] <= 8'h2;	
ROM[16] <= 8'h2;	
ROM[17] <= 8'h2;	
ROM[18] <= 8'h2;	
ROM[19] <= 8'h2;	
ROM[20] <= 8'h2;	
ROM[21] <= 8'h2;	
ROM[22] <= 8'h2;	
ROM[23] <= 8'h2;	
ROM[24] <= 8'h2;	
ROM[25] <= 8'h2;	
ROM[26] <= 8'h2;	
ROM[27] <= 8'h2;	
ROM[28] <= 8'h2;	
ROM[29] <= 8'h2;	
ROM[30] <= 8'h2;	
ROM[31] <= 8'h2;	
ROM[32] <= 8'h2;	
ROM[33] <= 8'h2;	
ROM[34] <= 8'h2;	
ROM[35] <= 8'h2;	
ROM[36] <= 8'h2;	
ROM[37] <= 8'h2;	
ROM[38] <= 8'h2;	
ROM[39] <= 8'h2;	
ROM[40] <= 8'h2;	
ROM[41] <= 8'h2;	
ROM[42] <= 8'h2;	
ROM[43] <= 8'h2;	
ROM[44] <= 8'h2;	
ROM[45] <= 8'h2;	
ROM[46] <= 8'h2;	
ROM[47] <= 8'h2;	
ROM[48] <= 8'h2;	
ROM[49] <= 8'h2;	
ROM[50] <= 8'h2;	
ROM[51] <= 8'h2;	
ROM[52] <= 8'h2;	
ROM[53] <= 8'h2;	
ROM[54] <= 8'h2;	
ROM[55] <= 8'h2;	
ROM[56] <= 8'h2;	
ROM[57] <= 8'h2;	
ROM[58] <= 8'h2;	
ROM[59] <= 8'h2;	
ROM[60] <= 8'h2;	
ROM[61] <= 8'h2;	
ROM[62] <= 8'h2;	
ROM[63] <= 8'h2;	
ROM[64] <= 8'h2;	
ROM[65] <= 8'h2;	
ROM[66] <= 8'h2;	
ROM[67] <= 8'h2;	
ROM[68] <= 8'h2;	
ROM[69] <= 8'h2;	
ROM[70] <= 8'h2;	
ROM[71] <= 8'h2;	
ROM[72] <= 8'h2;	
ROM[73] <= 8'h2;	
ROM[74] <= 8'h2;	
ROM[75] <= 8'h2;	
ROM[76] <= 8'h2;	
ROM[77] <= 8'h2;	
ROM[78] <= 8'h2;	
ROM[79] <= 8'h2;	
ROM[80] <= 8'h2;	
ROM[81] <= 8'h2;	
ROM[82] <= 8'h2;	
ROM[83] <= 8'h2;	
ROM[84] <= 8'h2;	
ROM[85] <= 8'h2;	
ROM[86] <= 8'h2;	
ROM[87] <= 8'h2;	
ROM[88] <= 8'h2;	
ROM[89] <= 8'h2;	
ROM[90] <= 8'h2;	
ROM[91] <= 8'h2;	
ROM[92] <= 8'h2;	
ROM[93] <= 8'h2;	
ROM[94] <= 8'h2;	
ROM[95] <= 8'h2;	
ROM[96] <= 8'h2;	
ROM[97] <= 8'h2;	
ROM[98] <= 8'h2;		
ROM[99] <= 8'h2;	
ROM[100] <= 8'h2;	
ROM[101] <= 8'h2;	
ROM[102] <= 8'h2;	
ROM[103] <= 8'h2;	
ROM[104] <= 8'h2;	
ROM[105] <= 8'h2;	
ROM[106] <= 8'h2;	
ROM[107] <= 8'h2;	
ROM[108] <= 8'h2;	
ROM[109] <= 8'h2;	
ROM[110] <= 8'h2;	
ROM[111] <= 8'h2;	
ROM[112] <= 8'h2;	
ROM[113] <= 8'h2;	
ROM[114] <= 8'h2;	
ROM[115] <= 8'h2;	
ROM[116] <= 8'h2;	
ROM[117] <= 8'h2;	
ROM[118] <= 8'h2;	
ROM[119] <= 8'h2;	
ROM[120] <= 8'h2;	
ROM[121] <= 8'h2;	
ROM[122] <= 8'h2;	
ROM[123] <= 8'h2;	
ROM[124] <= 8'h2;	
ROM[125] <= 8'h2;	
ROM[126] <= 8'h2;	
ROM[127] <= 8'h2;	
ROM[128] <= 8'h2;	
ROM[129] <= 8'h2;	
ROM[130] <= 8'h2;	
ROM[131] <= 8'h2;	
ROM[132] <= 8'h2;	
ROM[133] <= 8'h2;	
ROM[134] <= 8'h2;	
ROM[135] <= 8'h2;	
ROM[136] <= 8'h2;	
ROM[137] <= 8'h2;	
ROM[138] <= 8'h2;	
ROM[139] <= 8'h2;	
ROM[140] <= 8'h2;	
ROM[141] <= 8'h2;	
ROM[142] <= 8'h2;	
ROM[143] <= 8'h2;	
ROM[144] <= 8'h2;	
ROM[145] <= 8'h2;	
ROM[146] <= 8'h2;	
ROM[147] <= 8'h2;	
ROM[148] <= 8'h2;	
ROM[149] <= 8'h2;	
ROM[150] <= 8'h2;	
ROM[151] <= 8'h2;	
ROM[152] <= 8'h2;	
ROM[153] <= 8'h2;	
ROM[154] <= 8'h2;	
ROM[155] <= 8'h2;	
ROM[156] <= 8'h2;	
ROM[157] <= 8'h2;	
ROM[158] <= 8'h2;	
ROM[159] <= 8'h2;	
ROM[160] <= 8'h2;	
ROM[161] <= 8'h2;	
ROM[162] <= 8'h2;	
ROM[163] <= 8'h2;	
ROM[164] <= 8'h2;	
ROM[165] <= 8'h2;	
ROM[166] <= 8'h2;	
ROM[167] <= 8'h2;	
ROM[168] <= 8'h2;	
ROM[169] <= 8'h2;	
ROM[170] <= 8'h2;	
ROM[171] <= 8'h2;	
ROM[172] <= 8'h2;	
ROM[173] <= 8'h2;	
ROM[174] <= 8'h2;	
ROM[175] <= 8'h2;	
ROM[176] <= 8'h2;	
ROM[177] <= 8'h2;	
ROM[178] <= 8'h2;	
ROM[179] <= 8'h2;	
ROM[180] <= 8'h2;	
ROM[181] <= 8'h2;	
ROM[182] <= 8'h2;	
ROM[183] <= 8'h2;	
ROM[184] <= 8'h2;	
ROM[185] <= 8'h2;	
ROM[186] <= 8'h2;	
ROM[187] <= 8'h2;	
ROM[188] <= 8'h2;	
ROM[189] <= 8'h2;	
ROM[190] <= 8'h2;	
ROM[191] <= 8'h2;	
ROM[192] <= 8'h2;	
ROM[193] <= 8'h2;	
ROM[194] <= 8'h2;	
ROM[195] <= 8'h2;	
ROM[196] <= 8'h2;	
ROM[197] <= 8'h2;	
ROM[198] <= 8'h2;		
ROM[199] <= 8'h2;	
ROM[200] <= 8'h2;	
ROM[201] <= 8'h2;	
ROM[202] <= 8'h2;	
ROM[203] <= 8'h2;	
ROM[204] <= 8'h2;	
ROM[205] <= 8'h2;	
ROM[206] <= 8'h2;	
ROM[207] <= 8'h2;	
ROM[208] <= 8'h2;	
ROM[209] <= 8'h2;	
ROM[210] <= 8'h2;	
ROM[211] <= 8'h2;	
ROM[212] <= 8'h2;	
ROM[213] <= 8'h2;	
ROM[214] <= 8'h2;	
ROM[215] <= 8'h2;	
ROM[216] <= 8'h2;	
ROM[217] <= 8'h2;	
ROM[218] <= 8'h2;	
ROM[219] <= 8'h2;	
ROM[220] <= 8'h2;	
ROM[221] <= 8'h2;	
ROM[222] <= 8'h2;	
ROM[223] <= 8'h2;	
ROM[224] <= 8'h2;	
ROM[225] <= 8'h2;	
ROM[226] <= 8'h2;	
ROM[227] <= 8'h2;	
ROM[228] <= 8'h2;	
ROM[229] <= 8'h2;	
ROM[230] <= 8'h2;	
ROM[231] <= 8'h2;	
ROM[232] <= 8'h2;	
ROM[233] <= 8'h2;	
ROM[234] <= 8'h2;	
ROM[235] <= 8'h2;	
ROM[236] <= 8'h2;	
ROM[237] <= 8'h2;	
ROM[238] <= 8'h2;	
ROM[239] <= 8'h2;	
ROM[240] <= 8'h2;	
ROM[241] <= 8'h2;	
ROM[242] <= 8'h2;	
ROM[243] <= 8'h2;	
ROM[244] <= 8'h2;	
ROM[245] <= 8'h2;	
ROM[246] <= 8'h2;	
ROM[247] <= 8'h2;	
ROM[248] <= 8'h2;	
ROM[249] <= 8'h2;	
ROM[250] <= 8'h2;	
ROM[251] <= 8'h2;	
ROM[252] <= 8'h2;	
ROM[253] <= 8'h2;	
ROM[254] <= 8'h2;	
ROM[255] <= 8'h2;
Ukp<=ROM[add];
end
end
endmodule