`timescale 1ns/1ps

module temp_alarm_tb;

reg [7:0] temperatura;
wire alarm;

temp_alarm uut(

.temperatura(temperatura),
.alarm(alarm)

);

initial begin

$dumpfile("temp_alarm.vcd");
$dumpvars(0,temp_alarm_tb);

temperatura = 25;
#10;

temperatura = 30;
#10;

temperatura = 31;
#10;

temperatura = 40;
#10;

$finish;

end

endmodule