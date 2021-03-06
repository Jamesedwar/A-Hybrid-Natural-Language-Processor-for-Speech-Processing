module KeyEncoder_tb;

wire          [79:0]wd;
wire     [7:0]add, out;
reg       	   clk;
reg      [7:0]  datain;
reg           ice, sce;
reg                 ls;

KeyEncoder  uutm(wd, clk, ice, sce, ls, datain, add, out);


initial
begin
sce=0;
#170 sce=1; 

end


initial
begin
ls=0;
#10  ls=1;
#170 ls=0;

end

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

 





