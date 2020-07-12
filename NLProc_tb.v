module NLProc_tb;
reg       	   clk;
reg      [7:0]  datain;
reg                ice;
wire         [7:0]Rout;


NLProc  puut(clk, ice, datain, Rout);

initial
begin
ice=0;
 #10 ice=1;
end

initial
begin
clk=1;
forever #10 clk=~clk;
end

initial
begin
datain = 8'd10;
end
endmodule

 





