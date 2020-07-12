module TX(clk, start, busy, data, tx_line);
input clk;
input start;
output busy;
input [7:0] data;
output tx_line;
reg [13:0]prscl=0;
reg [9:0] datafll=0;
reg busy=0;
reg tx_flag=0;
reg tx_line=0;
reg [3:0]index=0;
always  @(posedge clk)
begin
if ((tx_flag == 0) && (start==1))
begin
tx_flag <= 1;
busy <= 1;
datafll[0] <= 0;
datafll[9] <= 1;
datafll[8:1] <= data;
end
if(tx_flag==1)
begin
if(prscl < 14'd5207)
prscl <= prscl + 14'd1;
else
prscl<=0;
if(prscl == 14'd2607)
begin
tx_line <= datafll[index];
if(index < 9)
index <= index +4'd1;
else
begin
tx_flag <= 0;
busy <=0;
index <= 0; 
end                            
end
end
end
endmodule
