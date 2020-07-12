module FA8(inputA,inputB,outputY,Cin,Co);

 input [7:0]inputA;
 input [7:0]inputB;
 input Cin;
 output Co;
 output [7:0]outputY;
 wire [6:0]Cout;
FA i1(inputA[0], inputB[0], outputY[0], Cin, Cout[0]);
FA i2(inputA[1], inputB[1], outputY[1], Cout[0], Cout[1]);
FA i3(inputA[2], inputB[2], outputY[2], Cout[1], Cout[2]);
FA i4(inputA[3], inputB[3], outputY[3], Cout[2], Cout[3]);
FA i5(inputA[4], inputB[4], outputY[4], Cout[3], Cout[4]);
FA i6(inputA[5], inputB[5], outputY[5], Cout[4], Cout[5]);
FA i7(inputA[6], inputB[6], outputY[6], Cout[5], Cout[6]);
FA i8(inputA[7], inputB[7], outputY[7], Cout[6], Co);

endmodule