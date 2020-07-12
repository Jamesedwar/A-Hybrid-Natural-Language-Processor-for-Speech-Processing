module RX_tb;

reg clk;
reg start;
wire busy1;
wire busy2;
reg [7:0] data1;
wire tx_line;
wire [7:0] data2;
TX uut1(clk, start, busy1, data1, tx_line);
RX  uut2(clk, tx_line, data2, busy2);
initial
begin
clk=1;
forever #10 clk=~clk;
end

initial
begin
data1=8'hAA;
start =0;
#10 start=1;
end

endmodule