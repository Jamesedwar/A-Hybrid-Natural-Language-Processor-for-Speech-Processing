module Qdata(clk, rst, Inp, Bout);

input          clk, rst;
input         [7:0] Inp;
output        [7:0]Bout;
wire           [7:0]val;
wire         [79:0]out1;

ProcessInp              uut1(val, Inp, rst);
Qdict             uut2(clk, rst, out1, val);
Hexa_Key_Encoder      uut3(out1, Bout, rst);

endmodule
