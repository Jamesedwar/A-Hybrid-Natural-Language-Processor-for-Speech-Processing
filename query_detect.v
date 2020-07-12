module query_detect(out,in,add,clk,rst);
input         clk;
input         rst;
input [7:0]in,add;
output   [7:0]out;
reg   [2:0]cnt;

assign out=(cnt==3'd4)?add-8'd2:8'd0;
always@(posedge clk or negedge rst)
begin
if(rst==0)
begin
cnt<=0;
end
else
begin
if(in==8'd127)
begin
cnt<=cnt+3'd1;
end
else 
begin
cnt<=0;
end
end
end
endmodule
