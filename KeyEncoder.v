module KeyEncoder(wd, clk, ice, sce, ls, datain, add, out);
output           [79:0]wd;
input                 clk;
input            ice, sce;
input                  ls;
input      [7:0]   datain;
output      [7:0]     add;
output           [7:0]out;
wire           [7:0]itext;
wire           [7:0]qtext;
wire           [63:0]qout;
wire         [7:0]address;
assign add = address;
addgen                                      uut1(address, clk, ice);
ITextdata                        uut2(clk, sce, itext, address, wd);
Qdata                                 uut3(clk, ice, datain, qtext);
SR2                                 uut4(clk, ice, ls, qtext, qout);
Kcomp                              uut5(clk, sce, out, itext, qout);
endmodule
