module LSTM_tb;
 reg clk, En, Cip; 
 reg [7:0] In, Ci, Ui, Uf;
 reg [7:0] Uk, Uo, Wi, Wk;
 reg [7:0] Wf, Wo, Vo, Bi;
 reg [7:0] Bo, Bf, Bk, PrevH;

 wire [7:0] Cout, Hout;
 wire Of;

LSTM uut1(clk, Of, En, Ci, Cip, In, Ui, Uf, Uk, Uo, Wi, Wk, Wf, Wo, Vo, Bi, Bo, Bf, Bk, PrevH, Cout, Hout);

initial
begin
clk=1;

forever #10 clk=~clk;
end

initial
begin
Cip=0;
En=0;
#10 En=1;
end

initial
begin
In=8'd200;
PrevH=8'd27;
Ci=8'd27;
Ui=8'd27;
Uf=8'd27;
Uk=8'd27;
Uo=8'd27;
Wi=8'd27;
Wk=8'd27;
Wf=8'd27;
Wo=8'd27;
Vo=8'd27;
Bi=8'd27;
Bo=8'd27;
Bf=8'd27;
Bk=8'd27;

end
endmodule

