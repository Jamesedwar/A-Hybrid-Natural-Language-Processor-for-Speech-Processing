module Kcomp_tb;
 
reg        clk, krst;
reg    [7:0]idata;
reg      [63:0]qdata;
wire     [7:0]out;
Kcomp uut1(clk, krst, out, idata, qdata);
initial
begin
clk=1;
forever #10 clk=~clk;
end
initial
begin
krst=0;
#10 krst=1;
end
initial
begin
idata<=8'h2e;
qdata<=8'h1c;
end
endmodule
