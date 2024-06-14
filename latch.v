module latch(
    input [3:0] i, 
    input clk, 
    output reg [3:0] y
);
    always @(clk or i) begin
        if (clk)
            y <= i;
        else
            y <= 4'b0000;
    end
endmodule
