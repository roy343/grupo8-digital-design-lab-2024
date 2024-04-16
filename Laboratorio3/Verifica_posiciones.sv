module Verifica_posiciones( input logic [9:0] sincronización_horizontal,sincronización_vertical,
					  output logic [24:0]pos);					  
						  
						assign pos[0]  = ((5   < sincronización_horizontal) & (151 > sincronización_horizontal) & (5   < sincronización_vertical) & (110 > sincronización_vertical)) ? 1 : 0;
						assign pos[1]  = ((171 < sincronización_horizontal) & (311 > sincronización_horizontal) & (5   < sincronización_vertical) & (110 > sincronización_vertical)) ? 1 : 0;
						assign pos[2]  = ((331 < sincronización_horizontal) & (471 > sincronización_horizontal) & (5   < sincronización_vertical) & (110 > sincronización_vertical)) ? 1 : 0;
						assign pos[3]  = ((491 < sincronización_horizontal) & (631 > sincronización_horizontal) & (5   < sincronización_vertical) & (110 > sincronización_vertical)) ? 1 : 0;
						assign pos[4]  = ((5   < sincronización_horizontal) & (151 > sincronización_horizontal) & (130 < sincronización_vertical) & (230 > sincronización_vertical)) ? 1 : 0;
						assign pos[5]  = ((171 < sincronización_horizontal) & (311 > sincronización_horizontal) & (130 < sincronización_vertical) & (230 > sincronización_vertical)) ? 1 : 0;
						assign pos[6]  = ((331 < sincronización_horizontal) & (471 > sincronización_horizontal) & (130 < sincronización_vertical) & (230 > sincronización_vertical)) ? 1 : 0;
						assign pos[7]  = ((491 < sincronización_horizontal) & (631 > sincronización_horizontal) & (130 < sincronización_vertical) & (230 > sincronización_vertical)) ? 1 : 0;
						assign pos[8]  = ((5   < sincronización_horizontal) & (151 > sincronización_horizontal) & (250 < sincronización_vertical) & (350 > sincronización_vertical)) ? 1 : 0;
						assign pos[9]  = ((171 < sincronización_horizontal) & (311 > sincronización_horizontal) & (250 < sincronización_vertical) & (350 > sincronización_vertical)) ? 1 : 0;
						assign pos[10] = ((331 < sincronización_horizontal) & (471 > sincronización_horizontal) & (250 < sincronización_vertical) & (350 > sincronización_vertical)) ? 1 : 0;
						assign pos[11] = ((491 < sincronización_horizontal) & (631 > sincronización_horizontal) & (250 < sincronización_vertical) & (350 > sincronización_vertical)) ? 1 : 0;
						assign pos[12] = ((5   < sincronización_horizontal) & (151 > sincronización_horizontal) & (375 < sincronización_vertical) & (475 > sincronización_vertical)) ? 1 : 0;
						assign pos[13] = ((171 < sincronización_horizontal) & (311 > sincronización_horizontal) & (375 < sincronización_vertical) & (475 > sincronización_vertical)) ? 1 : 0;
						assign pos[14] = ((331 < sincronización_horizontal) & (471 > sincronización_horizontal) & (375 < sincronización_vertical) & (475 > sincronización_vertical)) ? 1 : 0;
						assign pos[15] = ((491 < sincronización_horizontal) & (631 > sincronización_horizontal) & (375 < sincronización_vertical) & (475 > sincronización_vertical)) ? 1 : 0;
						assign pos[16] = ((5   < sincronización_horizontal) & (151 > sincronización_horizontal) & (500 < sincronización_vertical) & (600 > sincronización_vertical)) ? 1 : 0;
						assign pos[17] = ((171 < sincronización_horizontal) & (311 > sincronización_horizontal) & (500 < sincronización_vertical) & (600 > sincronización_vertical)) ? 1 : 0;
						assign pos[18] = ((331 < sincronización_horizontal) & (471 > sincronización_horizontal) & (500 < sincronización_vertical) & (600 > sincronización_vertical)) ? 1 : 0;
						assign pos[19] = ((491 < sincronización_horizontal) & (631 > sincronización_horizontal) & (500 < sincronización_vertical) & (600 > sincronización_vertical)) ? 1 : 0;
						assign pos[20] = ((5   < sincronización_horizontal) & (151 > sincronización_horizontal) & (625 < sincronización_vertical) & (725 > sincronización_vertical)) ? 1 : 0;
						assign pos[21] = ((171 < sincronización_horizontal) & (311 > sincronización_horizontal) & (625 < sincronización_vertical) & (725 > sincronización_vertical)) ? 1 : 0;
						assign pos[22] = ((331 < sincronización_horizontal) & (471 > sincronización_horizontal) & (625 < sincronización_vertical) & (725 > sincronización_vertical)) ? 1 : 0;
						assign pos[23] = ((491 < sincronización_horizontal) & (631 > sincronización_horizontal) & (625 < sincronización_vertical) & (725 > sincronización_vertical)) ? 1 : 0;
						assign pos[24] = ((5   < sincronización_horizontal) & (151 > sincronización_horizontal) & (750 < sincronización_vertical) & (850 > sincronización_vertical)) ?
				  
					  
endmodule