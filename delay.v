module delay(q, din,clk,rst);
input [7:0]din;
input clk;
input rst;
output [7:0]q;
reg [7:0]q;
always @(posedge clk)
begin
if(rst==1)
q<=din;
else
q<=0;
end

endmodule
