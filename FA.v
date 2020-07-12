module FA(inputA, inputB, outputY, Cin, Cout);

 input inputA;
 input inputB;
 input Cin;
 output Cout;
 output outputY;

 wire c1, c2, c3, a1;

 xor g1(a1, inputA, inputB);
 xor g2(outputY, Cin, a1);
 and g3(c1, inputA,inputB);
 and g4(c2, inputA, Cin);
 and g5(c3, inputB, Cin);
 or  g6(Cout, c1, c2, c3);

endmodule  

 