module QTextdata(clk, in, qen, fen, ken, wr, qtext, sdone);
input     fen, wr, clk;
input         [7:0] in;
input          ken,qen;
output      [7:0]qtext;
output           sdone;
wire        [79:0]out2;
wire           wdetect;
wire        [79:0]out1;
sft_reg                 uut1(clk, in, qen, out1, wdetect);
FIFO              uut2(out1, clk, fen, wr, wdetect, out2);
Hexa_Key_Encoder                 uut3(out2, qtext,   ken);
assign sdone=(out1[7:0]==8'h20)?1'b1:1'b0; 

endmodule
