module counter10(output logic [3:0] out,
                       input logic clock, reset, enable);

  always_ff @(posedge clock)begin
    if(reset)begin
      out <= 4'd0;
    end
    else if(enable) begin
      if(out == 9)
        out <= 4'd0;
      else
        out <= out + 1'b1;
    end
  end

endmodule: counter10
