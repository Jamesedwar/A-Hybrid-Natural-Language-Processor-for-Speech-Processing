module               ITextdata_tb;
reg            gen;
reg          clock;
wire    [7:0]itext;
wire  [7:0]address;

ITextdata uut1( clock, gen, address, itext );
initial
begin
clock=1;
forever #10 clock=~clock;
end

initial
begin
gen=0;
#10 gen=1;
end

endmodule






