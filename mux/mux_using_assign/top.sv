`include "mux_using_assign.sv"

module top();

  logic inA, inB, sel, out;
  string port_str;

  initial begin
    sel = 0;
    inA = 0;
    inB = 1;
    #10
    port_str = sel ? "inB":"inA";
    $display("sel = %d, input %s selected ==>> out = %d\n", sel, port_str, out); 
  end
  
  mux_using_assign mux(.*);

endmodule: top
