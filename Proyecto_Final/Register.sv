module Register(
input logic [3:0]  rs1,
input logic [3:0]  rs2,
input logic [3:0]  rd,
input logic [31:0] w_data,
input logic        clk,
input logic        w_enable,
input logic [31:0] rs15,	

output logic [31:0]    data1,
output logic [31:0]    data2
    );

	logic [31:0] Registro [15:0];

	integer i;
	initial begin
		for (i = 0; i < 16; i = i + 1) begin
			Registro[i] = i * 5;
		end
	end

	always @ (posedge clk) begin
		Registro[15] <= rs15;
		if (w_enable != 0 && rd != 15) begin
			 Registro[rd] <= w_data;
		end
	end

	always @* begin
		data1 = Registro[rs1];
		data2 = Registro[rs2];
	end

endmodule