module OpHold(out, in, clk, rst);

input           clk;
input           rst;
input  [7:0]     in;
output [7:0]    out;
reg        [7:0]out;

always @(posedge clk or negedge rst)
begin
if(rst==0)
begin
out<=0;

end
else
begin
if(in != 8'd0)
begin
out<=in;

end
else
begin
out<=out;

end
end
end
endmodule
