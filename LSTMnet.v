module LSTMnet(Hout, Add, add, Of, In, Cip, clk, cen);

 input                 Cip, cen, clk;
 input                      [7:0] In;
 input                      [7:0]add;
  
 output [7:0]              Add, Hout;
 output                           Of;
 wire [7:0]            Uip, Ufp, Ukp;
 wire [7:0]  Uop, Wip, Wkp, Wfp, Wop;
 wire [7:0]  Vop, Bip, Bop, Bfp, Bkp;
reg[7:0] Hmem=8'd0;
reg [7:0] Ci=8'd0;
wire [7:0]            Cout, Cin;
wire [7:0]                    PrevH;
assign Add=add-8'd1;
assign Cin=Ci;
assign PrevH=Hmem;
Vo                 uut2(Vop, add, clk,cen);
Uo                 uut3(Uop, add, clk,cen); 
Ui                 uut4(Uip, add, clk,cen);   
Uf                 uut5(Ufp, add, clk,cen);   
Uk                 uut6(Ukp, add, clk,cen);     

Wi                 uut7(Wip, add, clk,cen);  
Wo                 uut8(Wop, add, clk,cen);
Wf                 uut9(Wfp, add, clk,cen);
Wk                uut10(Wkp, add, clk,cen);

Bi                uut11(Bip, add, clk,cen);
Bo                uut12(Bop, add, clk,cen); 
Bf                uut13(Bfp, add, clk,cen); 
Bk                uut14(Bkp, add, clk,cen);
  
LSTM       uut15(clk, Of, cen, Cin, Cip, In, Uip, Ufp, Ukp, Uop, Wip, Wkp, Wfp, Wop, Vop, Bip, Bop, Bfp, Bkp, PrevH, Cout, Hout);
//delay      uut16(PrevH, Hout, clk, cen);
//delay         uut17(Ci, Cout, clk, cen);
endmodule
