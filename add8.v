module add8 (clk, en, out, a, b);
	output [7:0] out;
        input clk,en;
	input  [7:0] a;
	input  [7:0] b;
        reg  [8:0] out1;
        assign out=out1[7:0];
        always@(posedge clk or negedge en)
	begin
        if(en==0)
	begin
        out1<=0;
        end
        else
        begin
	out1 <= a + b;
        end
	end
       
        
endmodule
