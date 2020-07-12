module index(out,in,rst);
input       [7:0]in;
input           rst;
output     [7:0]out;
reg         [7:0]out;
reg         [7:0]tmp;

wire v;

assign v =(in!=0)?1'b1:0;
always@(in or rst)
begin
if(rst==0)
begin
tmp<=0;
out<=0;
end
else
begin
if(v==1)
begin
out<=in;
tmp<=out;
end
else
begin
out<=tmp;
tmp<=out;
end
end
end
endmodule
