module mul8_tb;
reg [7:0] a;
reg [7:0] b;
wire [7:0]out;
integer i;
mult8 uut(out, a, b);

initial
begin
a=0;
b=0;
i=0;

for(i=0;i<=7;i=i+1)
begin
#20 a=i;
    b=i;
end
end
endmodule
