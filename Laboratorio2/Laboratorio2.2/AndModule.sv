module AndModule #(
  parameter N = 4 
)
(
  input [N-1:0] a,
  input [N-1:0] b,
  output [N-1:0] y
);

  genvar i;
  
  generate 
    for(i=0; i<N; i=i+1) begin : and_op
      and and_gate(y[i], a[i], b[i]);
    end
  endgenerate
  
endmodule