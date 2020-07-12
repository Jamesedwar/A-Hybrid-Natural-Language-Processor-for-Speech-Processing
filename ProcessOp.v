module ProcessOp(out, inp, rst);
input         [7:0]inp;
input              rst;
output        [7:0]out;
reg           [7:0]out;

always @(inp or rst)
begin
if(rst==0)
begin
out<=0;
end
else
begin
case(inp)
8'd9:out<=8'd1;
8'd22:out<=8'd2;
8'd38:out<=8'd3;
8'd51:out<=8'd4;
8'd61:out<=8'd5;
8'd74:out<=8'd6;
8'd87:out<=8'd7;
8'd98:out<=8'd8;
8'd111:out<=8'd9;
8'd127:out<=8'd10;
8'd140:out<=8'd11;
8'd154:out<=8'd12;
8'd165:out<=8'd13;
8'd176:out<=8'd14;
8'd190:out<=8'd15;
8'd200:out<=8'd16;
8'd209:out<=8'd17;
8'd217:out<=8'd18;
8'd227:out<=8'd19;
8'd235:out<=8'd20;
default:out<=0;
endcase
end
end
endmodule