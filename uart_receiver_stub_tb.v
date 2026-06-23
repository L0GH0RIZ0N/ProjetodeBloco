`timescale 1ns/1ps

module uart_receiver_stub_tb;

reg rx;

wire data_ready;

uart_receiver_stub uut(

.rx(rx),
.data_ready(data_ready)

);

initial begin

$dumpfile("uart_receiver_stub.vcd");
$dumpvars(0,uart_receiver_stub_tb);

rx = 1;
#10;

rx = 0;
#10;

rx = 1;
#10;

$finish;

end

endmodule