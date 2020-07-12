module enable(clk,rst,en1,en2);
input         clk;
input         rst;
output        en1;
reg           en1;
output        en2;
reg           en2;
reg [2:0]     cnt;
always@(posedge clk or negedge rst)
begin
if(rst==0)
begin
cnt<=3'd0;
en1<=0;
en2<=1;
end
else
begin
if(cnt===4'b0111)
begin
cnt<=cnt;
en1<=1;
en2<=0;
end
else
begin
cnt<=cnt+4'd1;
en1<=en1;
en2<=en2;
end
end
end
endmodule



