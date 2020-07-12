module ProcessInp(out, inp, rst);
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
8'd1:out<=8'd0;
8'd2:out<=8'd8;
8'd3:out<=8'd16;
8'd4:out<=8'd24;
8'd5:out<=8'd32;
8'd6:out<=8'd40;
8'd7:out<=8'd48;
8'd8:out<=8'd56;
8'd9:out<=8'd64;
8'd10:out<=8'd72;
8'd11:out<=8'd80;
8'd12:out<=8'd88;
8'd13:out<=8'd96;
8'd14:out<=8'd104;
8'd15:out<=8'd112;
8'd16:out<=8'd120;
8'd17:out<=8'd128;
8'd18:out<=8'd136;
8'd19:out<=8'd144;
8'd20:out<=8'd152;
default:out<=0;
endcase
end
end
endmodule