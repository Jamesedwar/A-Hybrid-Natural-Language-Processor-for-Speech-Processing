module ProcessInp_tb;
reg         [7:0]inp;
reg              rst;
wire          [7:0]out;
integer i;
ProcessInp uut1(out, inp, rst);

initial
begin
rst=0;
#20 rst = 1;
end
initial
begin
inp=0;
for(i=0;i<=8;i=i+1)
#20 inp=i;
end
endmodule