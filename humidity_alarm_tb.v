`timescale 1ns/1ps

module humidity_alarm_tb;

reg [7:0] humidity;
wire alarm;

humidity_alarm uut(

.humidity(humidity),
.alarm(alarm)

);

initial begin

$dumpfile("humidity_alarm.vcd");
$dumpvars(0,humidity_alarm_tb);

humidity = 40;
#10;

humidity = 70;
#10;

humidity = 71;
#10;

humidity = 90;
#10;

$finish;

end

endmodule