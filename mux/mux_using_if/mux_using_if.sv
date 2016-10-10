module mux_using_if(input logic inA, inB, 
		    input logic sel,
		    output logic out);
  always_comb begin
    if(~sel)begin
      out = inA;
    end
    else begin
      out = inB;
    end  
  end
endmodule: mux_using_if
