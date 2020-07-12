module RLD(out, clock, enable, en, address);
input             clock;
input   [7:0]   address;
input            enable;
input                en;
output         [7:0]out;
wire         [79:0]  wd;

word_Library    uut1(clock, enable, address, wd);
hex_Key_Encoder                uut2(wd, out, en);   

endmodule

