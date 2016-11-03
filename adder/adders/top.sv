`include "adder.sv"
`include "adder_4.sv"
`include "one_bit_input_if.sv"
`include "one_bit_output_if.sv"
`include "four_bits_input_if.sv"
`include "four_bits_output_if.sv"

module top();
  logic a, b;
  logic [3:0] a_4, b_4;

  initial begin
    a = 0;
    b = 1;
    a_4 = 8;
    b_4 = 4;
    #1
    $display("simple adder: %d + %d = %d", a, b, out.c);
    $display("4-bits adder: %d + %d = %d", a_4, b_4, out_4.c);
  end

  one_bit_input_if in(a,b);
  one_bit_output_if out();
  four_bits_input_if in_4(a_4, b_4);
  four_bits_output_if out_4();
  adder sum(in, out);
  adder_4 sum_4(in_4, out_4);

endmodule
