module RX(clk, rxd, data, busy);
input clk;
input rxd;
output[7:0] data;
output busy;

reg [7:0] data=8'd0;
reg busy=0;
reg [13:0]prscl=0;
reg [9:0] datafll=0;
reg rx_flag=0;
reg [3:0]index=0;
always @(posedge clk)
begin
if ((rx_flag==0)&&(rxd==0))
begin
index <=0;
prscl <=0;
busy <=1;
rx_flag <=1;
end
if(rx_flag==1)
begin
datafll[index] <=rxd;
if(prscl < 14'd5207)
prscl <=prscl+14'd1;
else
prscl <=0;
if(prscl == 14'd2503)
begin
if(index < 4'd9)
index <=index + 4'd1;
else
begin
if((datafll[0]==0) && (datafll[9] == 1))
data<=datafll[8:1];
else
data<=0;

rx_flag <=0;
busy <=0;
end
end
end
end

endmodule


