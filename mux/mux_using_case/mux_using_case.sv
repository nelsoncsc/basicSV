module mux_using_case(input logic inA, inB, 
		      input logic sel,
		      output logic out);
  always_comb begin
    case(sel)
      1'b0: out = inA;
      1'b1: out = inB;
    endcase 
  end
endmodule: mux_using_case
