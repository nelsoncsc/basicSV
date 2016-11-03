module adder_4(four_bits_input_if.port in_4, four_bits_output_if.port out_4);
  always_comb begin
    out_4.c = in_4.a + in_4.b;
  end
endmodule: adder_4;
