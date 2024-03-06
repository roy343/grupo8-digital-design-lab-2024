module ShiftLeft #(
  parameter N = 4  
)
(
  input [N-1:0] a,
  output [N-1:0] y,
  output logic v
);

  assign y = a << 1;
  
  assign v = (a[N-1] == 1) ? 1 : 0;

endmodule