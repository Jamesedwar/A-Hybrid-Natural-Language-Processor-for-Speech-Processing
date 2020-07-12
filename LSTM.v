module LSTM(clk, Of, En, Ci, Cip, In, Ui, Uf, Uk, Uo, Wi, Wk, Wf, Wo, Vo, Bi, Bo, Bf, Bk, PrevH, Cout, Hout);

 input clk, En, Cip; 
 input [7:0] In, Ci, Ui, Uf, Uk;
 input [7:0] Uo, Wi, Wk, Wf, Wo;
 input [7:0] Vo, Bi, Bo, Bf, Bk;
 input [7:0]           PrevH;

 output [7:0] Cout, Hout;
 output Of;

 wire [7:0] m1, m2, m3, m4;
 wire [7:0] m5, m7, m8;
 wire [7:0] m9, m10, m11, m12;
 wire [7:0] m13, m14, m15, m16;
 wire [7:0] i1, f1, k1, o1;
 wire [7:0] It, Ft, Kt, t1;
 wire [10:0] Cin;
 


//Input gate

 mult8 ins1(m1, In, Wi); 
 mult8 ins2(m2, PrevH, Ui);
 FA8   ins3(m1, m2, m3, Cip, Cin[0]);
 FA8   ins4(m3, Bi, i1,Cin[0], Cin[1]);
 SigmoidROM sg1(It, i1, clk, En);

//Forget gate

 mult8 ins5(m4, In, Wf); 
 mult8 ins6(t1, In, Wf);
 FA8   ins7(t1, m4, m5, Cin[1], Cin[2]);
 FA8   ins8(t1, Bi, f1, Cin[2], Cin[3]);
 SigmoidROM sg2(Ft, f1, clk, En);

//Update gate

 mult8 ins9(m7, In, Wk); 
 mult8 ins10(m8, PrevH, Uk);
 FA8   ins11(m7, m8, m9, Cin[3], Cin[4]);
 FA8   ins12(m9, Bk, k1, Cin[4], Cin[5]);
 SigmoidROM sg3(Kt, k1, clk, En);

 //Cell output

 FA8   ins13(It, Kt, m10,Cin[5], Cin[6]);
 FA8   ins14(Ft, Ci, m11, Cin[6], Cin[7]);
 FA8   ins15(m10, m11, Cout, Cin[7], Cin[8]);
 

//LSTM output

 mult8 ins16(m12, In, Wo); 
 mult8 ins17(m13, PrevH, Uo);
 mult8 ins18(m14, Ci, Vo);
 FA8   ins19(m12, m13, m15, Cin[8], Cin[9]);
 FA8   ins21(m14, Bo, m16, Cin[9], Cin[10]);
 FA8   ins22(m16, m15, o1, Cin[10], Of);
 SigmoidROM sg4(Hout, o1, clk, En);

 endmodule