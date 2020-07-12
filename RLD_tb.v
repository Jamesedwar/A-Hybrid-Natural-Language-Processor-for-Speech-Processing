module               RLD_tb;

reg          clock;
reg         enable;
reg   [7:0]address;
reg             en;
wire      [7:0]out;
integer          i;
RLD          uut1(out, clock, enable, en, address);

initial
begin
clock=1;
forever #10 clock=~clock;
end

initial
begin
enable=0;
#10 enable=1;
end

initial
begin
address=0;

for (i=0;i<256;i=i+1)

#20 address=i;
end

initial
begin
en=0;
#10 en=1;
end

endmodule






