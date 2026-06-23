module uart_receiver_stub(

input rx,

output reg data_ready

);

always @(*) begin

if(rx == 1'b0)
    data_ready = 1'b1;
else
    data_ready = 1'b0;

end

endmodule