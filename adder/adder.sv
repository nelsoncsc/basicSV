module adder(one_bit_input_if.port in, one_bit_output_if.port out);
  always_comb begin
    out.c = in.a + in.b;
  end
endmodule: adder;
