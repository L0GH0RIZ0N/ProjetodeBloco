module temp_alarm(

input [7:0] temperatura,

output alarm

);

assign alarm = (temperatura > 8'd30);

endmodule