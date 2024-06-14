module system(
    input [3:0] i, 
    input clk, 
    output data, 
    output [3:0] o
);
    wire [1:0] counter_op;
    wire mux_op;
    wire [3:0] encoder_op;

    counter c(.clk(clk), .Q(counter_op));
    Mux a(.i(i), .s(counter_op), .out(mux_op));
    encoder e(.en(mux_op), .i(counter_op), .o(encoder_op));
    latch l(.i(encoder_op), .clk(clk), .y(o));

endmodule
