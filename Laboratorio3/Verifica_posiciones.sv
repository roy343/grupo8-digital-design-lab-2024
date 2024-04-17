module Verifica_posiciones(
    input logic [9:0] sincronizacion_horizontal,
    input logic [9:0] sincronizacion_vertical,
    output logic [24:0] posiciones
);



assign posiciones[0]  = ((5   < sincronizacion_horizontal) & (151 > sincronizacion_horizontal) &
                         (5   < sincronizacion_vertical)   & (110 > sincronizacion_vertical))? 1:0;
assign posiciones[1]  = ((171 < sincronizacion_horizontal) & (311 > sincronizacion_horizontal) &
                         (5   < sincronizacion_vertical)   & (110 > sincronizacion_vertical))? 1:0;
assign posiciones[2]  = ((331 < sincronizacion_horizontal) & (471 > sincronizacion_horizontal) &
                         (5   < sincronizacion_vertical)   & (110 > sincronizacion_vertical))? 1:0;
assign posiciones[3]  = ((491 < sincronizacion_horizontal) & (631 > sincronizacion_horizontal) &
                         (5   < sincronizacion_vertical)   & (110 > sincronizacion_vertical))? 1:0;
assign posiciones[4]  = ((5   < sincronizacion_horizontal) & (151 > sincronizacion_horizontal) &
                         (130 < sincronizacion_vertical)  & (230 > sincronizacion_vertical))? 1:0;
assign posiciones[5]  = ((171 < sincronizacion_horizontal) & (311 > sincronizacion_horizontal) &
                         (130 < sincronizacion_vertical)  & (230 > sincronizacion_vertical))? 1:0;
assign posiciones[6]  = ((331 < sincronizacion_horizontal) & (471 > sincronizacion_horizontal) &
                         (130 < sincronizacion_vertical)  & (230 > sincronizacion_vertical))? 1:0;
assign posiciones[7]  = ((491 < sincronizacion_horizontal) & (631 > sincronizacion_horizontal) &
                         (130 < sincronizacion_vertical)  & (230 > sincronizacion_vertical))? 1:0;
assign posiciones[8]  = ((5   < sincronizacion_horizontal) & (151 > sincronizacion_horizontal) &
                         (250 < sincronizacion_vertical)  & (350 > sincronizacion_vertical))? 1:0;
assign posiciones[9]  = ((171 < sincronizacion_horizontal) & (311 > sincronizacion_horizontal) &
                         (250 < sincronizacion_vertical)  & (350 > sincronizacion_vertical))? 1:0;
assign posiciones[10] = ((331 < sincronizacion_horizontal) & (471 > sincronizacion_horizontal) &
                         (250 < sincronizacion_vertical)  & (350 > sincronizacion_vertical))? 1:0;
assign posiciones[11] = ((491 < sincronizacion_horizontal) & (631 > sincronizacion_horizontal) &
                         (250 < sincronizacion_vertical)  & (350 > sincronizacion_vertical))? 1:0;
assign posiciones[12] = ((5   < sincronizacion_horizontal) & (151 > sincronizacion_horizontal) &
                         (375 < sincronizacion_vertical)  & (475 > sincronizacion_vertical))? 1:0;
assign posiciones[13] = ((171 < sincronizacion_horizontal) & (311 > sincronizacion_horizontal) &
                         (375 < sincronizacion_vertical)  & (475 > sincronizacion_vertical))? 1:0;
assign posiciones[14] = ((331 < sincronizacion_horizontal) & (471 > sincronizacion_horizontal) &
                         (375 < sincronizacion_vertical)  & (475 > sincronizacion_vertical))? 1:0;
assign posiciones[15] = ((491 < sincronizacion_horizontal) & (631 > sincronizacion_horizontal) &
                         (375 < sincronizacion_vertical)  & (475 > sincronizacion_vertical))? 1:0;
assign posiciones[16] = ((5   < sincronizacion_horizontal) & (151 > sincronizacion_horizontal) &
                         (5   < sincronizacion_vertical)   & (110 > sincronizacion_vertical))? 1:0;
assign posiciones[17] = ((171 < sincronizacion_horizontal) & (311 > sincronizacion_horizontal) &
                         (5   < sincronizacion_vertical)   & (110 > sincronizacion_vertical))? 1:0;
assign posiciones[18] = ((331 < sincronizacion_horizontal) & (471 > sincronizacion_horizontal) &
                         (5   < sincronizacion_vertical)   & (110 > sincronizacion_vertical))? 1:0;
assign posiciones[19] = ((491 < sincronizacion_horizontal) & (631 > sincronizacion_horizontal) &
                         (5   < sincronizacion_vertical)   & (110 > sincronizacion_vertical))? 1:0;
assign posiciones[20] = ((5   < sincronizacion_horizontal) & (151 > sincronizacion_horizontal) &
                         (130 < sincronizacion_vertical)  & (230 > sincronizacion_vertical))? 1:0;
assign posiciones[21] = ((171 < sincronizacion_horizontal) & (311 > sincronizacion_horizontal) &
                         (130 < sincronizacion_vertical)  & (230 > sincronizacion_vertical))? 1:0;
assign posiciones[22] = ((331 < sincronizacion_horizontal) & (471 > sincronizacion_horizontal) &
                         (130 < sincronizacion_vertical)  & (230 > sincronizacion_vertical))? 1:0;
assign posiciones[23] = ((491 < sincronizacion_horizontal) & (631 > sincronizacion_horizontal) &
                         (130 < sincronizacion_vertical)  & (230 > sincronizacion_vertical))? 1:0;
assign posiciones[24] = ((5   < sincronizacion_horizontal) & (151 > sincronizacion_horizontal) &
                         (250 < sincronizacion_vertical)  & (350 > sincronizacion_vertical))? 1:0;

endmodule

