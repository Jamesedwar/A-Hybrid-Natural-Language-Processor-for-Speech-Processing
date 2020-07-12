module enable_tb;
reg          clk;
reg          rst;
wire         en1;
wire         en2;
enable uut(clk,rst,en1,en2);
initial
begin
clk=1;
forever #10 clk=~clk;
end

initial
begin
rst=0;
#10 rst=1;
end
endmodule 