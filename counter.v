module counter (
    input clk, 
    output reg [1:0] Q 
);
    always @ (posedge clk) begin
        Q <= Q + 1;
    end
endmodule
 