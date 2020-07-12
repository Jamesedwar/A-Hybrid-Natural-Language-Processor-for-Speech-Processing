module LP(CLOCK_50, UART_RXD, UART_TXD, LEDG, LEDR);

input                  CLOCK_50, UART_RXD;
output                           UART_TXD;
output                    [7:0]LEDG, LEDR;
wire                      RX_BUSY,TX_BUSY;
wire                   [7:0]RX_DATA, SOUT;
reg [7:0]    VAL,LEDR,LEDG, TX_DATA, DATA;
reg                CEN=0, ACT=0, TX_START;

RX                   uut1(CLOCK_50, UART_RXD, RX_DATA, RX_BUSY);
NLProc              uut2(CLOCK_50, CEN, DATA, SOUT);
TX         uut3(CLOCK_50, TX_START, TX_BUSY, TX_DATA, UART_TXD);


always@(posedge CLOCK_50 or negedge CEN)
begin
if(CEN==0)
begin
VAL<=0;
LEDR<=0;
end
else
begin
if(SOUT !=0)
begin
VAL<=SOUT;
LEDR<=SOUT;
end
else
begin
VAL<=VAL;
LEDR<=LEDR;
end
end
end


always @(RX_BUSY)
begin
if(RX_BUSY==0)
begin
CEN<=1;
DATA<=RX_DATA;
LEDG<=RX_DATA;
end
else
begin
LEDG<=0;
CEN<=0;
DATA<=0;
end
end



always @(posedge CLOCK_50)
begin
if((ACT==0) &&(TX_BUSY==0))
begin
 TX_DATA<=VAL;
 TX_START<=1;
 ACT<=1;
 end

else
begin
TX_START<=0;
ACT<=0;
end
end

endmodule
