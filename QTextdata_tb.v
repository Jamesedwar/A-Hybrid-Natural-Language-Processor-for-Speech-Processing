module QTextdata_tb;
reg       	   clk;
reg        [7:0]datain;
reg      ken, fen, qen;
reg                 wr;
wire         [7:0]qout;
wire             sdone;

 
QTextdata   uut1(clk,datain, qen, fen, ken, wr, qout, sdone);
 
initial
begin
qen=0;
#10 qen=1;
end
initial
begin
fen=0;
#10 fen=1;
end
initial
begin
ken=0;
#560  ken=1;
end
initial
begin
wr=1;

#560 wr=0;
end

initial
begin
clk=1;
forever #10 clk=~clk;
end


initial
begin
datain=8'h20;
#10 datain=8'h57;
#20 datain=8'h68;
#20 datain=8'h69;
#20 datain=8'h63;
#20 datain=8'h68;
#20 datain=8'h20;
#20 datain=8'h4f;
#20 datain=8'h53;
#20 datain=8'h20;
#20 datain=8'h69;
#20 datain=8'h73;
#20 datain=8'h20;
#20 datain=8'h70;
#20 datain=8'h72;
#20 datain=8'h65;
#20 datain=8'h73;
#20 datain=8'h65;
#20 datain=8'h6e;
#20 datain=8'h74;
#20 datain=8'h20;
#20 datain=8'h69;
#20 datain=8'h6e;
#20 datain=8'h20;
#20 datain=8'h53;
#20 datain=8'h36;
#20 datain=8'h20;

end

endmodule

 





