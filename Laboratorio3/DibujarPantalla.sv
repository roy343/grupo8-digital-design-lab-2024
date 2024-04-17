module DibujarPantalla(
    input logic reset, win, lose,
    input logic [9:0] sincronizacion_horizontal, sincronizacion_vertical,
    input logic [24:0][3:0] states,
    output logic [7:0] r, g, b);
    
    
    logic [23:0] rgb[24:0]; 
    logic [24:0] pos; 

    
    assign lines = ((sincronizacion_horizontal > 156) & (sincronizacion_horizontal < 166) | (sincronizacion_horizontal > 316) & (sincronizacion_horizontal < 326) | (sincronizacion_horizontal > 476) & (sincronizacion_horizontal < 486) | (sincronizacion_vertical > 115) & (sincronizacion_vertical < 125) | (sincronizacion_vertical > 235) & (sincronizacion_vertical < 245) | (sincronizacion_vertical > 355) & (sincronizacion_vertical < 365)) ? 1 : 0;

    
	 Verifica_posiciones verifica(sincronizacion_horizontal, sincronizacion_vertical, pos); 
	 
	 colorMux posicion0(states[0],pos[0],rgb[0]);
	 colorMux posicion1(states[1],pos[1],rgb[1]);
	 colorMux posicion2(states[2],pos[2],rgb[2]);
	 colorMux posicion3(states[3],pos[3],rgb[3]);
	 colorMux posicion4(states[4],pos[4],rgb[4]);
	 colorMux posicion5(states[5],pos[5],rgb[5]);
	 colorMux posicion6(states[6],pos[6],rgb[6]);
	 colorMux posicion7(states[7],pos[7],rgb[7]);
	 colorMux posicion8(states[8],pos[8],rgb[8]);
	 colorMux posicion9(states[9],pos[9],rgb[9]);
	 colorMux posicion10(states[10],pos[10],rgb[10]);
	 colorMux posicion11(states[11],pos[11],rgb[11]);
	 colorMux posicion12(states[12],pos[12],rgb[12]);
	 colorMux posicion13(states[13],pos[13],rgb[13]);
	 colorMux posicion14(states[14],pos[14],rgb[14]);
	 colorMux posicion15(states[15],pos[15],rgb[15]);
	 colorMux posicion16(states[16],pos[16],rgb[16]);
	 colorMux posicion17(states[17],pos[17],rgb[17]);
	 colorMux posicion18(states[18],pos[18],rgb[18]);
	 colorMux posicion19(states[19],pos[19],rgb[19]);
	 colorMux posicion20(states[20],pos[20],rgb[20]);
	 colorMux posicion21(states[21],pos[21],rgb[21]);
	 colorMux posicion22(states[22],pos[22],rgb[22]);
	 colorMux posicion23(states[23],pos[23],rgb[23]);
	 colorMux posicion24(states[24],pos[24],rgb[24]);

    drawingMux  draw_mux(
        lines,
        rgb[0], rgb[1], rgb[2], rgb[3], rgb[4],
        rgb[5], rgb[6], rgb[7], rgb[8], rgb[9],
        rgb[10], rgb[11], rgb[12], rgb[13], rgb[14],
        rgb[15], rgb[16], rgb[17], rgb[18], rgb[19],
        rgb[20], rgb[21], rgb[22], rgb[23],
        pos[0], pos[1], pos[2], pos[3], pos[4],
        pos[5], pos[6], pos[7], pos[8], pos[9],
        pos[10], pos[11], pos[12], pos[13], pos[14],
        pos[15], pos[16], pos[17], pos[18], pos[19],
        pos[20], pos[21], pos[22], pos[23], pos[24],
        win, lose, r, g, b);

endmodule
