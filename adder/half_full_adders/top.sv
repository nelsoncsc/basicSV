module half_adder(input logic A, B,
                  output logic S, C);
  
  always_comb begin
      S = A^B;
      C = A&B;
  end
endmodule: half_adder

module full_adder(input logic A, B, Cin,
                  output logic Cout, S);
   logic s1, c1, c2;
   half_adder HA1(.A(A), .B(B), .S(s1), .C(c1));
   half_adder HA2(.A(s1), .B(Cin), .S(S), .C(c2));
   
   always_comb
     Cout = c1+c2;
endmodule: full_adder
module top();
  logic A, B, C, Cin, Cout, s1, s2;

  initial begin
    $monitor("half adder: %d+%d = %d with carry = %d at %3d times units\nfull adder: %d+%d=%d with Cin=%d and Cout=%d at %3d time units", A,B, s1, C, $time, A, B, s2, Cin, Cout, $time);
    A = 0;
    B = 1;
    Cin = 0;
    #1
    A = 1;
    B = 0;
    Cin = 0;
    #1
    A = 1;
    B = 1;
    Cin = 1;
  end
 
  half_adder HA(.A(A), .B(B), .C(C), .S(s1));
  full_adder FA(.A(A), .B(B), .Cin(Cin), .S(s2), .Cout(Cout));



endmodule
