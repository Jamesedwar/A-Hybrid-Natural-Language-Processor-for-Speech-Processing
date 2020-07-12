module DiaMod(out, in, add, clk, rst);

input         clk;
input         rst;
input [7:0]in,add;
output   [7:0]out;
wire [7:0]   out1;
wire [7:0]   out2;
query_detect qd1(out1, in, add, clk, rst);
OpHold          oh1(out2, out1, clk, rst);
ProcessOp             po1(out, out2, rst);
endmodule
