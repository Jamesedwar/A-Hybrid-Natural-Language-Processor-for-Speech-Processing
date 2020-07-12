module Kcomp(clk, reset, out, idata, qdata);
input        clk,reset;
input     [7:0]idata;
input      [63:0]qdata;
output      [7:0]out;
reg         [7:0]out;
always @(posedge  clk or negedge reset)
begin
if(reset==0)
out<=8'd0;
else
begin
if((idata==qdata[7:0])||(idata==qdata[15:8])||(idata==qdata[23:16])||(idata==qdata[31:24])||(idata==qdata[39:32])||(idata==qdata[47:40])||(idata==qdata[55:48])||(idata==qdata[63:56]))
out<=8'd127;
else
begin
case(idata)
8'd7:out<=8'd63;
8'd9:out<=8'd191;
default:out<=8'd0;
endcase
end
end
end
endmodule
