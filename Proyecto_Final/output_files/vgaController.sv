module vgaController #(parameter HBP = 10'd48, // horizontal back porch
											 HACTIVE = 10'd640, // number of pixels per line
											 HFP = 10'd16, // horizontal front porch
											 HSYN = 10'd96, // horizontal sync pulse = 60 to move
											// electron gun back to left
											 // number of horizontal pixels (i.e., clock cycles)
											HMAX = HBP + HACTIVE + HFP + HSYN, //48+640+16+96=800:
											 VBP = 10'd32, // vertical back porch
											 VACTIVE = 10'd480, // number of lines
											 VFP = 10'd11, // vertical front porch
											 VSYN = 10'd2, // vertical sync pulse = 2 to move
											// electron gun back to top
											 // number of vertical pixels (i.e., clock cycles)
											VMAX = VBP + VACTIVE + VFP + VSYN) //32+480+11+2=525:
							(input logic vgaclk, reset,
							 output logic hsync, vsync, sync_b, blank_b,
							 output logic [9:0] hcnt, vcnt);
			 // counters for horizontal and vertical positions
			 always @(posedge vgaclk, posedge reset) begin
				 if (reset) begin
					 hcnt <= 0;
					 vcnt <= 0;
				 end
				else begin
						hcnt++;
					 if (hcnt == HMAX) begin
						hcnt <= 0;
						vcnt++;
					 if (vcnt == VMAX)
						vcnt <= 0;
					 end
				 end
			end
	 // compute sync signals (active low)
	 assign hsync = ~( (hcnt >= (HACTIVE + HFP)) & (hcnt < (HACTIVE + HFP + HSYN)) );
	 assign vsync = ~( (vcnt >= (VACTIVE + VFP)) & (vcnt < (VACTIVE + VFP + VSYN)) );
	 assign sync_b = 1'b0; // this should be 0 for newer monitors
	 // for older monitors, use: assign sync_b = hsync & vsync;
	 // force outputs to black when not writing pixels
	 assign blank_b = (hcnt < HACTIVE) & (vcnt < VACTIVE);
endmodule