module Predict(en,in,Pout);

input      en;
input [7:0]in;
output[7:0]Pout;
reg [7:0]Pout;

always@(en or in)
begin
if(en==0)
Pout<=0;
else
begin
if(in >= 8'd250)
Pout<=0;
else if(in>=8'd240)
Pout<=8'd63;
else if(in>=8'd230)
Pout<=8'd127;
else if(in>=8'd220)
Pout<=8'd191;
else
Pout<=in;
end
end
endmodule

