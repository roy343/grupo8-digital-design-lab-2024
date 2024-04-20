module drawingMux(

	input logic line,
	input logic [23:0]rgb0,rgb1,rgb2,rgb3,rgb4,rgb5,rgb6,rgb7,rgb8,rgb9,rgb10,rgb11,rgb12,rgb13,
							rgb14,rgb15,rgb16,rgb17,rgb18,rgb19,rgb20,rgb21,rgb22,rgb23,rgb24,rgb25,
							rgb26,rgb27,rgb28,rgb29,rgb30,rgb31,rgb32,rgb33,rgb34,rgb35,rgb36,rgb37,
							rgb38,rgb39,rgb40,rgb41,rgb42,rgb43,rgb44,rgb45,rgb46,rgb47,rgb48,rgb49,
	input logic pos0,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,pos10,pos11,pos12,pos13,
					pos14,pos15,pos16,pos17,pos18,pos19,pos20,pos21,pos22,pos23,pos24,pos25,
					pos26,pos27,pos28,pos29,pos30,pos31,pos32,pos33,pos34,pos35,pos36,pos37,
					pos38,pos39,pos40,pos41,pos42,pos43,pos44,pos45,pos46,pos47,pos48,pos49, division_tablero,
	output logic [7:0]r,g,b);

	logic[23:0]out_rgb;
	
	always @*
			begin	
			case ({line,pos0,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,pos10,pos11,pos12,pos13,
					 pos14,pos15,pos16,pos17,pos18,pos19,pos20,pos21,pos22,pos23,pos24,pos25,
					 pos26,pos27,pos28,pos29,pos30,pos31,pos32,pos33,pos34,pos35,pos36,pos37,
					 pos38, pos39,pos40,pos41,pos42,pos43,pos44,pos45,pos46,pos47,pos48,pos49, division_tablero})
							
				52'b0000000000000000000000000000000000000000000000000000 : out_rgb    <= 24'b000000000000000000000000;
				52'b1000000000000000000000000000000000000000000000000000 : out_rgb    <= 24'b111111111111111111111111;
				52'b0100000000000000000000000000000000000000000000000000 : out_rgb    <= rgb0;
				52'b0010000000000000000000000000000000000000000000000000 : out_rgb    <= rgb1;
				52'b0001000000000000000000000000000000000000000000000000 : out_rgb    <= rgb2;
				52'b0000100000000000000000000000000000000000000000000000 : out_rgb    <= rgb3;
				52'b0000010000000000000000000000000000000000000000000000 : out_rgb    <= rgb4;
				52'b0000001000000000000000000000000000000000000000000000 : out_rgb    <= rgb5;
				52'b0000000100000000000000000000000000000000000000000000 : out_rgb    <= rgb6;
				52'b0000000010000000000000000000000000000000000000000000 : out_rgb    <= rgb7;
				52'b0000000001000000000000000000000000000000000000000000 : out_rgb    <= rgb8;
				52'b0000000000100000000000000000000000000000000000000000 : out_rgb    <= rgb9;
				52'b0000000000010000000000000000000000000000000000000000 : out_rgb    <= rgb10;
				52'b0000000000001000000000000000000000000000000000000000 : out_rgb    <= rgb11;
				52'b0000000000000100000000000000000000000000000000000000 : out_rgb    <= rgb12;
				52'b0000000000000010000000000000000000000000000000000000 : out_rgb    <= rgb13;
				52'b0000000000000001000000000000000000000000000000000000 : out_rgb    <= rgb14;
				52'b0000000000000000100000000000000000000000000000000000 : out_rgb    <= rgb15;
				52'b0000000000000000010000000000000000000000000000000000 : out_rgb    <= rgb16;
				52'b0000000000000000001000000000000000000000000000000000 : out_rgb    <= rgb17;
				52'b0000000000000000000100000000000000000000000000000000 : out_rgb    <= rgb18;
				52'b0000000000000000000010000000000000000000000000000000 : out_rgb    <= rgb19;
				52'b0000000000000000000001000000000000000000000000000000 : out_rgb    <= rgb20;
				52'b0000000000000000000000100000000000000000000000000000 : out_rgb    <= rgb21;
				52'b0000000000000000000000010000000000000000000000000000 : out_rgb    <= rgb22;
				52'b0000000000000000000000001000000000000000000000000000 : out_rgb    <= rgb23;
				52'b0000000000000000000000000100000000000000000000000000 : out_rgb    <= rgb24;
				52'b0000000000000000000000000010000000000000000000000000 : out_rgb    <= rgb25;
				52'b0000000000000000000000000001000000000000000000000000 : out_rgb    <= rgb26;
				52'b0000000000000000000000000000100000000000000000000000 : out_rgb    <= rgb27;
				52'b0000000000000000000000000000010000000000000000000000 : out_rgb    <= rgb28;
				52'b0000000000000000000000000000001000000000000000000000 : out_rgb    <= rgb29;
				52'b0000000000000000000000000000000100000000000000000000 : out_rgb    <= rgb30;
				52'b0000000000000000000000000000000010000000000000000000 : out_rgb    <= rgb31;
				52'b0000000000000000000000000000000001000000000000000000 : out_rgb    <= rgb32;
				52'b0000000000000000000000000000000000100000000000000000 : out_rgb    <= rgb33;
				52'b0000000000000000000000000000000000010000000000000000 : out_rgb    <= rgb34;
				52'b0000000000000000000000000000000000001000000000000000 : out_rgb    <= rgb35;
				52'b0000000000000000000000000000000000000100000000000000 : out_rgb    <= rgb36;
				52'b0000000000000000000000000000000000000010000000000000 : out_rgb    <= rgb37;
				52'b0000000000000000000000000000000000000001000000000000 : out_rgb    <= rgb38;
				52'b0000000000000000000000000000000000000000100000000000 : out_rgb    <= rgb39;
				52'b0000000000000000000000000000000000000000010000000000 : out_rgb    <= rgb40;
				52'b0000000000000000000000000000000000000000001000000000 : out_rgb    <= rgb41;
				52'b0000000000000000000000000000000000000000000100000000 : out_rgb    <= rgb42;
				52'b0000000000000000000000000000000000000000000010000000 : out_rgb    <= rgb43;
				52'b0000000000000000000000000000000000000000000001000000 : out_rgb    <= rgb44;
				52'b0000000000000000000000000000000000000000000000100000 : out_rgb    <= rgb45;
				52'b0000000000000000000000000000000000000000000000010000 : out_rgb    <= rgb46;
				52'b0000000000000000000000000000000000000000000000001000 : out_rgb    <= rgb47;
				52'b0000000000000000000000000000000000000000000000000100 : out_rgb    <= rgb48;
				52'b0000000000000000000000000000000000000000000000000010 : out_rgb    <= rgb49;
				52'b0000000000000000000000000000000000000000000000000001 : out_rgb    <= 24'b000000000000000000000000;



			
			
			default  : out_rgb <= 24'b000000000000000000000000;
			
			endcase
		end
		
	assign r = out_rgb[23:16];
	assign g = out_rgb[15:8];
	assign b = out_rgb[7:0];
	
endmodule