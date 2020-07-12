module NLProc(clk, ice, datain, Rout);
input                 clk;
input                 ice;
input      [7:0]   datain;
output[7:0]          Rout;
wire    [79:0]         wd;
wire [7:0]            Add;
wire                   Of;

reg                  Ci=0;
wire             [7:0]add;
wire            [7:0]add1;
wire            [7:0]add2;
wire            [7:0] out;
wire           [7:0] Hout;
wire   [7:0]         Pout;
wire                  Cip;
wire               sce,ls;
assign             Cip=Ci;
enable                              uut1(clk,ice,sce,ls);
KeyEncoder uut2(wd, clk, ice, sce, ls, datain, add, out);
LSTMnet    uut3(Hout, add1, add, Of, out, Cip, clk, sce);
Predict                            uut4(sce, Hout, Pout);
delay                         uut5(add2, add1, clk, sce);
delay                          uut6(Add, add2, clk, sce);
DiaMod                   uut7(Rout, Pout, Add, clk, sce);
endmodule
