module LSTMnet_tb;
 
  reg                  Cip, cen, clk;
  reg                       [7:0] in;
    reg                    [7:0] add;
  wire [7:0]               Add, Hout;
  wire                            Of;
 integer  i;
LSTMnet                uut1(Hout, Add, add, Of, in, Cip, clk, cen);

initial
begin
add=0;
repeat(4)
begin
for(i=0;i<8;i=i+1)
#20 add=i;
end

end
initial
begin
cen=0;
#20 cen=1;
end

initial
begin
clk=1;
forever #10 clk=~clk;
end

initial
begin
Cip=0;

in=8'd0;
#20 in=8'd63;
#20 in=8'd127;
#20  in=8'd191;
#20 in=8'd127;
#20 in=8'd0;
#20  in=8'd191;
#20 in=8'd63;
#20 in=8'd0;
#20  in=8'd191;
#20 in=8'd0;
#20 in=8'd63;
#20  in=8'd0;
#20 in=8'd63;
#20 in=8'd0;
#20  in=8'd191;
#20 in=8'd0;
#20 in=8'd0;
#20  in=8'd191;
#20 in=8'd63;
#20 in=8'd0;
#20  in=8'd191;
#20 in=8'd0;
#20 in=8'd0;
#20  in=8'd191;
#20 in=8'd63;
#20 in=8'd0;
#20  in=8'd0;
#20 in=8'd0;
#20 in=8'd63;
#20  in=8'd191;
end
endmodule
