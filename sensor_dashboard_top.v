module sensor_dashboard_top(

input [7:0] temperatura,
input [7:0] umidade,

output led_temp,
output led_umid

);

temp_alarm temp_unit(
    .temperatura(temperatura),
    .alarm(led_temp)
);

humidity_alarm hum_unit(
    .humidity(umidade),
    .alarm(led_umid)
);

endmodule