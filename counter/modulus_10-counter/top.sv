`include "counter10.sv"

module top();

  logic clock, reset, enable;
  logic [3:0] out;

  initial begin
    $display ("time\t clk reset enable counter");	
    $monitor ("%g\t %d   %d     %d      %d", 
               $time, clock, reset, enable, out);	
    clock = 1;
    reset = 0;
    enable = 0;
    #5 reset = 1;
    #10 reset = 0;
    #10 enable = 1;
    #160 enable = 0;
    #5 $finish();
  end
  
  always #5 clock = !clock;

  counter10 cnt10(.*);

endmodule: top
