module incr_3bits(input logic [2:0] A,
                  output logic [2:0] incrA);
  always_comb begin
      incrA[0] = ~A[0];
      incrA[1] = A[1]^A[0];
      incrA[2] = A[2]^(A[1]& A[0]);
  end
endmodule: incr_3bits
module top();
  logic [2:0] A, incrA;
  int i;
  initial begin
    $monitor("A=%d, A+1=%d", A, incrA);
    for(i = 0; i <= 7; i++)begin
     #1 A = i;
    end
  end

  incr_3bits incr(.A(A), .incrA(incrA));
endmodule
