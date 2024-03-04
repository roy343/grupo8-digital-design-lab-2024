module SumadorCompleto (
    input logic A, B, Cin, 
    output logic Sum,      
    output logic Cout       
);

    assign Sum = (A ^ B) ^ Cin;
	 assign Cout = (A & B) | ((A ^ B) & Cin);

endmodule