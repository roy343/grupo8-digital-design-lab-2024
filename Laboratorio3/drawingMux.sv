module drawingMux(

	input logic line,
	input logic [23:0]rgb0,rgb1,rgb2,rgb3,rgb4,rgb5,rgb6,rgb7,rgb8,rgb9,rgb10,rgb11,rgb12,rgb13,
							rgb14,rgb15,rgb16,rgb17,rgb18,rgb19,rgb20,rgb21,rgb22,rgb23,rgb24,rgb25,
							rgb26,rgb27,rgb28,rgb29,rgb30,rgb31,rgb32,rgb33,rgb34,rgb35,rgb36,rgb37,
							rgb38,rgb39,rgb40,rgb41,rgb42,rgb43,rgb44,rgb45,rgb46,rgb47,rgb48,rgb49,
	input logic pos0,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,pos10,pos11,pos12,pos13,
					pos14,pos15,pos16,pos17,pos18,pos19,pos20,pos21,pos22,pos23,pos24,pos25,
					pos26,pos27,pos28,pos29,pos30,pos31,pos32,pos33,pos34,pos35,pos36,pos37,
					pos38,pos39,pos40,pos41,pos42,pos43,pos44,pos45,pos46,pos47,pos48,pos49,
	output logic [7:0]r,g,b);

	logic[24:0]out_rgb;
	logic[49:0] hola;
	
	always @(line or pos0 or pos1 or pos2 or pos3 or pos4 or pos5 or pos6 or pos7 or pos8 or pos9 or pos10 or pos11 or pos12 or pos13 or 
				 pos14 or pos15 or pos16 or pos17 or pos18 or pos19 or pos20 or pos21 or pos22 or pos23 or pos24 or pos25 or 
				 pos26 or pos27 or pos28 or pos29 or pos30 or pos31 or pos32 or pos33 or pos34 or pos35 or pos36 or pos37 or 
				 pos38 or pos39 or pos40 or pos41 or pos42 or pos43 or pos44 or pos45 or pos46 or pos47 or pos48 or pos49)
				 
				
			begin	
			//$display("pos0 = %0d", hola);
			case ({line,pos0,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,pos10,pos11,pos12,pos13,
					 pos14,pos15,pos16,pos17,pos18,pos19,pos20,pos21,pos22,pos23,pos24,pos25,
					 pos26,pos27,pos28,pos29,pos30,pos31,pos32,pos33,pos34,pos35,pos36,pos37,
					 pos38, pos39,pos40,pos41,pos42,pos43,pos44,pos45,pos46,pos47,pos48,pos49})
							
				51'b000000000000000000000000000000000000000000000000000 : out_rgb    <= 24'b000000000000000000000000;
				51'b100000000000000000000000000000000000000000000000000 : out_rgb    <= 24'b111111111111111111111111;
				51'b010000000000000000000000000000000000000000000000000 : out_rgb    <= rgb0;
				51'b001000000000000000000000000000000000000000000000000 : out_rgb    <= rgb1;
				51'b000100000000000000000000000000000000000000000000000 : out_rgb    <= rgb2;
				51'b000010000000000000000000000000000000000000000000000 : out_rgb    <= rgb3;
				51'b000001000000000000000000000000000000000000000000000 : out_rgb    <= rgb4;
				51'b000000100000000000000000000000000000000000000000000 : out_rgb    <= rgb5;
				51'b000000010000000000000000000000000000000000000000000 : out_rgb    <= rgb6;
				51'b000000001000000000000000000000000000000000000000000 : out_rgb    <= rgb7;
				51'b000000000100000000000000000000000000000000000000000 : out_rgb    <= rgb8;
				51'b000000000010000000000000000000000000000000000000000 : out_rgb    <= rgb9;
				51'b000000000001000000000000000000000000000000000000000 : out_rgb    <= rgb10;
				51'b000000000000100000000000000000000000000000000000000 : out_rgb    <= rgb11;
				51'b000000000000010000000000000000000000000000000000000 : out_rgb    <= rgb12;
				51'b000000000000001000000000000000000000000000000000000 : out_rgb    <= rgb13;
				51'b000000000000000100000000000000000000000000000000000 : out_rgb    <= rgb14;
				51'b000000000000000010000000000000000000000000000000000 : out_rgb    <= rgb15;
				51'b000000000000000001000000000000000000000000000000000 : out_rgb    <= rgb16;
				51'b000000000000000000100000000000000000000000000000000 : out_rgb    <= rgb17;
				51'b000000000000000000010000000000000000000000000000000 : out_rgb    <= rgb18;
				51'b000000000000000000001000000000000000000000000000000 : out_rgb    <= rgb19;
				51'b000000000000000000000100000000000000000000000000000 : out_rgb    <= rgb20;
				51'b000000000000000000000010000000000000000000000000000 : out_rgb    <= rgb21;
				51'b000000000000000000000001000000000000000000000000000 : out_rgb    <= rgb22;
				51'b000000000000000000000000100000000000000000000000000 : out_rgb    <= rgb23;
				51'b000000000000000000000000010000000000000000000000000 : out_rgb    <= rgb24;
				51'b000000000000000000000000001000000000000000000000000 : out_rgb    <= rgb25;
				51'b000000000000000000000000000100000000000000000000000 : out_rgb    <= rgb26;
				51'b000000000000000000000000000010000000000000000000000 : out_rgb    <= rgb27;
				51'b000000000000000000000000000001000000000000000000000 : out_rgb    <= rgb28;
				51'b000000000000000000000000000000100000000000000000000 : out_rgb    <= rgb29;
				51'b000000000000000000000000000000010000000000000000000 : out_rgb    <= rgb30;
				51'b000000000000000000000000000000001000000000000000000 : out_rgb    <= rgb31;
				51'b000000000000000000000000000000000100000000000000000 : out_rgb    <= rgb32;
				51'b000000000000000000000000000000000010000000000000000 : out_rgb    <= rgb33;
				51'b000000000000000000000000000000000001000000000000000 : out_rgb    <= rgb34;
				51'b000000000000000000000000000000000000100000000000000 : out_rgb    <= rgb35;
				51'b000000000000000000000000000000000000010000000000000 : out_rgb    <= rgb36;
				51'b000000000000000000000000000000000000001000000000000 : out_rgb    <= rgb37;
				51'b000000000000000000000000000000000000000100000000000 : out_rgb    <= rgb38;
				51'b000000000000000000000000000000000000000010000000000 : out_rgb    <= rgb39;
				51'b000000000000000000000000000000000000000001000000000 : out_rgb    <= rgb40;
				51'b000000000000000000000000000000000000000000100000000 : out_rgb    <= rgb41;
				51'b000000000000000000000000000000000000000000010000000 : out_rgb    <= rgb42;
				51'b000000000000000000000000000000000000000000001000000 : out_rgb    <= rgb43;
				51'b000000000000000000000000000000000000000000000100000 : out_rgb    <= rgb44;
				51'b000000000000000000000000000000000000000000000010000 : out_rgb    <= rgb45;
				51'b000000000000000000000000000000000000000000000001000 : out_rgb    <= rgb46;
				51'b000000000000000000000000000000000000000000000000100 : out_rgb    <= rgb47;
				51'b000000000000000000000000000000000000000000000000010 : out_rgb    <= rgb48;
				51'b000000000000000000000000000000000000000000000000001 : out_rgb    <= rgb49;



			
			
			default  : out_rgb <= 24'b000000000000000000000000;
			
			endcase
		end
		
	assign r = out_rgb[23:16];
	assign g = out_rgb[15:8];
	assign b = out_rgb[7:0];
	
endmodule