module DibujarPantalla(
    input logic reset, win, lose,
    input logic [9:0] sincronizacion_horizontal, sincronizacion_vertical,
    input logic [24:0][3:0] states,
    output logic [7:0] r, g, b);
    
    
    logic [23:0] rgb[24:0]; 
    logic [24:0] pos; 

    
    assign lines = ((sincronizacion_horizontal > 156) & (sincronizacion_horizontal < 166) | (sincronizacion_horizontal > 316) & (sincronizacion_horizontal < 326) | (sincronizacion_horizontal > 476) & (sincronizacion_horizontal < 486) | (sincronizacion_vertical > 115) & (sincronizacion_vertical < 125) | (sincronizacion_vertical > 235) & (sincronizacion_vertical < 245) | (sincronizacion_vertical > 355) & (sincronizacion_vertical < 365)) ? 1 : 0;

    
    Verifica_posiciones verifica_posiciones(sincronizacion_horizontal, sincronizacion_vertical, pos); 
    
    
    generate
        genvar i;
        for (i = 0; i < 25; i = i + 1) begin : colorMux _gen
            colorMux  color(states[i], pos[i], rgb[i]);
        end
    endgenerate

    drawingMux  draw_mux(
        lines,
        rgb[0], rgb[1], rgb[2], rgb[3], rgb[4],
        rgb[5], rgb[6], rgb[7], rgb[8], rgb[9],
        rgb[10], rgb[11], rgb[12], rgb[13], rgb[14],
        rgb[15], rgb[16], rgb[17], rgb[18], rgb[19],
        rgb[20], rgb[21], rgb[22], rgb[23], rgb[24],
        pos[0], pos[1], pos[2], pos[3], pos[4],
        pos[5], pos[6], pos[7], pos[8], pos[9],
        pos[10], pos[11], pos[12], pos[13], pos[14],
        pos[15], pos[16], pos[17], pos[18], pos[19],
        pos[20], pos[21], pos[22], pos[23], pos[24],
        win, lose, r, g, b);

endmodule
