`include "counter.v"
`include "encoder.v"
`include "latch.v"
`include "mux.v"
`include "system.v"

module system_tb;
  reg [3:0] i;
  reg clk;
  wire data;
  wire [3:0] o;

  system uut(
    .i(i),
    .clk(clk),
    .data(data),
    .o(o)
  );

  initial begin
    $dumpfile("system.vcd"); $dumpvars;
  end

  initial begin
    i = 4'b0000;
    clk = 0;

    $monitor("%g\t%b\t%b\t%b\t%b", $time, clk, i, data, o);

    #5 i = 4'b0001;
    #5 i = 4'b0010;
    #5 i = 4'b0100;
    #5 i = 4'b1000;
    #5 $finish; 
  end

  always #2.5 clk = ~clk;  

endmodule
