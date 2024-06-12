module text_display (
    input logic run,
    input logic [9:0] pixel_x, pixel_y,
	 input logic [31:0] data,
    output logic pixel,
	 output logic [31:0] Address
);

    logic [7:0] ch;
    logic [2:0] xoff, yoff;
    logic [7:0] char_x, char_y;
	 logic charpixelv;

    chargenrom char_rom (
        .ch(ch),
        .xoff(xoff),
        .yoff(yoff),
        .pixel(charpixelv)
    );

    assign char_x = pixel_x[9:3];
    assign char_y = pixel_y[9:3];

    always_comb begin
        Address = (char_y * 7'd80 + char_x) / 4;
    end

	 
    always_comb begin
        case (char_x[1:0])
            2'b11: ch = data[31:24];
            2'b10: ch = data[23:16];
            2'b01: ch = data[15:8];
            2'b00: ch = data[7:0];
        endcase
    end
	 
	 /*
	 always_comb begin
		 if (ch == 8'h00) begin
			  pixel = 1'b0;
		 end else begin
			  pixel = charpixelv;
		 end
	end
	*/
	always_comb begin
        if (run) begin
            if (Address < 167 || Address >= 510) begin
                pixel = 1'b0;
            end else if (ch == 8'h00) begin
                pixel = 1'b0;
            end else begin
                pixel = charpixelv;
            end
        end else begin
            if (Address >= 166 || ch == 8'h00) begin
                pixel = 1'b0;
            end else begin
                pixel = charpixelv;
            end
        end
    end

    assign xoff = pixel_x[2:0];
    assign yoff = pixel_y[2:0];

endmodule