module mux_using_assign(input logic inA, inB, 
		        input logic sel,
		        output logic out);
  always_comb begin
    out = sel ? inB: inA;
  end

endmodule: mux_using_assign
