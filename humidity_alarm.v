module humidity_alarm(

input [7:0] humidity,

output alarm

);

assign alarm = (humidity > 8'd70);

endmodule