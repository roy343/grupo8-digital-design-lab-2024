module DibujarPantalla(
	input logic reset, 
	input logic [9:0] hs, vs,
	input logic [2:0] states[4:0][9:0], 
	output logic [7:0] r, g, b
);
	
	logic [23:0] rgb[49:0]; 
	logic [49:0] pos; 
	logic lines, division_tablero;
	
	 assign lines = 
		(((hs > 0) & (hs < 5))|
		((hs > 59) & (hs < 69)) |
		((hs > 123) & (hs < 133)) | 
		((hs > 187) & (hs < 197)) | 
		((hs > 251) & (hs < 261)) | 
		((hs > 379) & (hs < 389)) | 
		((hs > 443) & (hs < 453)) | 
		((hs > 507) & (hs < 517)) | 
		((hs > 571) & (hs < 581)) |
		((hs > 635) & (hs < 640)) |
		((vs > 0) & (vs < 5)) |
		((vs > 95) & (vs < 105)) | 
		((vs > 190) & (vs < 200)) |
		((vs > 285) & (vs < 295)) | 
		((vs > 380) & (vs < 390)) | 
		((vs > 475) & (vs < 480))  
		)? 1:0;
		
		assign division_tablero = ((hs > 315) & (hs < 325))? 1:0;



	
	// Llamar a la lógica para asignar valores
	Verifica_posiciones verifica(hs, vs, pos); // Cambiado el nombre del módulo
	
		
		
		colorMux posicion0(states[0][0], pos[0], rgb[0]);
		colorMux posicion1(states[0][1], pos[1], rgb[1]);
		colorMux posicion2(states[0][2], pos[2], rgb[2]);
		colorMux posicion3(states[0][3], pos[3], rgb[3]);
		colorMux posicion4(states[0][4], pos[4], rgb[4]);
		colorMux posicion5(states[0][5], pos[5], rgb[5]);
		colorMux posicion6(states[0][6], pos[6], rgb[6]);
		colorMux posicion7(states[0][7], pos[7], rgb[7]);
		colorMux posicion8(states[0][8], pos[8], rgb[8]);
		colorMux posicion9(states[0][9], pos[9], rgb[9]);
		
		colorMux posicion10(states[1][0], pos[10], rgb[10]);
		colorMux posicion11(states[1][1], pos[11], rgb[11]);
		colorMux posicion12(states[1][2], pos[12], rgb[12]);
		colorMux posicion13(states[1][3], pos[13], rgb[13]);
		colorMux posicion14(states[1][4], pos[14], rgb[14]);
		colorMux posicion15(states[1][5], pos[15], rgb[15]);
		colorMux posicion16(states[1][6], pos[16], rgb[16]);
		colorMux posicion17(states[1][7], pos[17], rgb[17]);
		colorMux posicion18(states[1][8], pos[18], rgb[18]);
		colorMux posicion19(states[1][9], pos[19], rgb[19]);
		
		
		colorMux posicion20(states[2][0], pos[20], rgb[20]);
		colorMux posicion21(states[2][1], pos[21], rgb[21]);
		colorMux posicion22(states[2][2], pos[22], rgb[22]);
		colorMux posicion23(states[2][3], pos[23], rgb[23]);
		colorMux posicion24(states[2][4], pos[24], rgb[24]);
		colorMux posicion25(states[2][5], pos[25], rgb[25]);
		colorMux posicion26(states[2][6], pos[26], rgb[26]);
		colorMux posicion27(states[2][7], pos[27], rgb[27]);
		colorMux posicion28(states[2][8], pos[28], rgb[28]);
		colorMux posicion29(states[2][9], pos[29], rgb[29]);
		
		colorMux posicion30(states[3][0], pos[30], rgb[30]);
		colorMux posicion31(states[3][1], pos[31], rgb[31]);
		colorMux posicion32(states[3][2], pos[32], rgb[32]);
		colorMux posicion33(states[3][3], pos[33], rgb[33]);
		colorMux posicion34(states[3][4], pos[34], rgb[34]);
		colorMux posicion35(states[3][5], pos[35], rgb[35]);
		colorMux posicion36(states[3][6], pos[36], rgb[36]);
		colorMux posicion37(states[3][7], pos[37], rgb[37]);
		colorMux posicion38(states[3][8], pos[38], rgb[38]);
		colorMux posicion39(states[3][9], pos[39], rgb[39]);


		colorMux posicion40(states[4][0], pos[40], rgb[40]);
		colorMux posicion41(states[4][1], pos[41], rgb[41]);
		colorMux posicion42(states[4][2], pos[42], rgb[42]);
		colorMux posicion43(states[4][3], pos[43], rgb[43]);
		colorMux posicion44(states[4][4], pos[44], rgb[44]);
		colorMux posicion45(states[4][5], pos[45], rgb[45]);
		colorMux posicion46(states[4][6], pos[46], rgb[46]);
		colorMux posicion47(states[4][7], pos[47], rgb[47]);
		colorMux posicion48(states[4][8], pos[48], rgb[48]);
		colorMux posicion49(states[4][9], pos[49], rgb[49]);
	
	
	// Instancia de mux_dibujar
	drawingMux draw_mux(lines,rgb[0]
		,rgb[1],rgb[2],rgb[3],rgb[4],rgb[5],rgb[6],rgb[7],rgb[8],rgb[9]
		,rgb[10],rgb[11],rgb[12],rgb[13],rgb[14],rgb[15],rgb[16],rgb[17],rgb[18],rgb[19]
		,rgb[20],rgb[21],rgb[22],rgb[23],rgb[24],rgb[25],rgb[26],rgb[27],rgb[28],rgb[29]
		,rgb[30],rgb[31],rgb[32],rgb[33],rgb[34],rgb[35],rgb[36],rgb[37],rgb[38],rgb[39]
		,rgb[40],rgb[41],rgb[42],rgb[43],rgb[44],rgb[45],rgb[46],rgb[47],rgb[48],rgb[49]

		,pos[0],pos[1],pos[2],pos[3],pos[4],pos[5],pos[6],pos[7],pos[8],pos[9],pos[10]
		,pos[11],pos[12],pos[13],pos[14],pos[15],pos[16],pos[17],pos[18],pos[19],pos[20]
		,pos[21],pos[22],pos[23],pos[24],pos[25],pos[26],pos[27],pos[28],pos[29],pos[30]
		,pos[31],pos[32],pos[33],pos[34],pos[35],pos[36],pos[37],pos[38],pos[39],pos[40]
		,pos[41],pos[42],pos[43],pos[44],pos[45],pos[46],pos[47],pos[48],pos[49], division_tablero, r,g,b);
			
endmodule

