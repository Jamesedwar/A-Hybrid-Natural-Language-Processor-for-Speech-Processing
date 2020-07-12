module FA_tb;
 reg [7:0]inputA;
 reg [7:0]inputB;
 reg Cin;
 wire Co;
 wire [7:0]outputY; 
 integer i;
 FA8 uut(inputA, inputB, outputY, Cin, Co);
 
 initial 
 begin
 inputA=0;
 inputB=0;
 Cin=0;
i=0;
 
 for (i=0;i<=7;i=i+1)
 begin
 #20 inputA=i;
     inputB=i;
 end

 end 
 endmodule

  