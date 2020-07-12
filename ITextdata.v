module ITextdata( clock, gen, itext, address, wd );
input               gen;
input             clock;
input    [7:0]  address;
output       [7:0]itext;
output       [79:0]  wd;



word_Library       uut2(clock, gen, address,  wd);
Hexa_Key_Encoder             uut3(wd, itext, gen);   

endmodule

