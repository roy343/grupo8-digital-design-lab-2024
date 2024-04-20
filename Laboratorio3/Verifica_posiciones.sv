
module Verifica_posiciones( input logic [9:0] hs,vs,
					  output logic [49:0]pos);
					  
					  
			//Columna 1
			assign pos[0]  = ((5     < hs)&(59 > hs)&(5   < vs)&(95 > vs))? 1:0;
			assign pos[10]  = ((5     < hs)&(59 > hs)&(105   < vs)&(190 > vs))? 1:0;
			assign pos[20]  = ((5     < hs)&(59 > hs)&(200   < vs)&(285 > vs))? 1:0;
			assign pos[30]  = ((5     < hs)&(59 > hs)&(295   < vs)&(380 > vs))? 1:0;
			assign pos[40]  = ((5     < hs)&(59 > hs)&(390   < vs)&(475 > vs))? 1:0;
			
			
			//Columna 2
			assign pos[1]  = ((69     < hs)&(123 > hs)&(5   < vs)&(95 > vs))? 1:0;
			assign pos[11]  = ((69     < hs)&(123 > hs)&(105   < vs)&(190 > vs))? 1:0;
			assign pos[21]  = ((69     < hs)&(123 > hs)&(200   < vs)&(285 > vs))? 1:0;
			assign pos[31]  = ((69     < hs)&(123 > hs)&(295   < vs)&(380 > vs))? 1:0;
			assign pos[41]  = ((69     < hs)&(123 > hs)&(390   < vs)&(475 > vs))? 1:0;
			

			//Columna 3
			assign pos[2]  = ((133     < hs)&(187 > hs)&(5   < vs)&(95 > vs))? 1:0;
			assign pos[12]  = ((133     < hs)&(187 > hs)&(105   < vs)&(190 > vs))? 1:0;
			assign pos[22]  = ((133     < hs)&(187 > hs)&(200   < vs)&(285 > vs))? 1:0;
			assign pos[32]  = ((133     < hs)&(187 > hs)&(295   < vs)&(380 > vs))? 1:0;
			assign pos[42]  = ((133     < hs)&(187 > hs)&(390   < vs)&(475 > vs))? 1:0;
			
			
			//Columna 4
			assign pos[3]  = ((197     < hs)&(251 > hs)&(5   < vs)&(95 > vs))? 1:0;
			assign pos[13]  = ((197     < hs)&(251 > hs)&(105   < vs)&(190 > vs))? 1:0;
			assign pos[23]  = ((197     < hs)&(251 > hs)&(200   < vs)&(285 > vs))? 1:0;
			assign pos[33]  = ((197     < hs)&(251 > hs)&(295   < vs)&(380 > vs))? 1:0;
			assign pos[43]  = ((197     < hs)&(251 > hs)&(390   < vs)&(475 > vs))? 1:0;
			
			
			//Columna 5
			assign pos[4]  = ((261     < hs)&(315 > hs)&(5   < vs)&(95 > vs))? 1:0;
			assign pos[14]  = ((261     < hs)&(315 > hs)&(105   < vs)&(190 > vs))? 1:0;
			assign pos[24]  = ((261     < hs)&(315 > hs)&(200   < vs)&(285 > vs))? 1:0;
			assign pos[34]  = ((261     < hs)&(315 > hs)&(295   < vs)&(380 > vs))? 1:0;
			assign pos[44]  = ((261     < hs)&(315 > hs)&(390   < vs)&(475 > vs))? 1:0;
			
			
			//Columna 6
			assign pos[5]  = ((325     < hs)&(379 > hs)&(5   < vs)&(95 > vs))? 1:0;
			assign pos[15]  = ((325     < hs)&(379 > hs)&(105   < vs)&(190 > vs))? 1:0;
			assign pos[25]  = ((325     < hs)&(379 > hs)&(200   < vs)&(285 > vs))? 1:0;
			assign pos[35]  = ((325     < hs)&(379 > hs)&(295   < vs)&(380 > vs))? 1:0;
			assign pos[45]  = ((325     < hs)&(379 > hs)&(390   < vs)&(475 > vs))? 1:0;
			
			
			//Columna 7
			assign pos[6]  = ((389     < hs)&(443 > hs)&(5   < vs)&(95 > vs))? 1:0;
			assign pos[16]  = ((389     < hs)&(443 > hs)&(105   < vs)&(190 > vs))? 1:0;
			assign pos[26]  = ((389     < hs)&(443 > hs)&(200   < vs)&(285 > vs))? 1:0;
			assign pos[36]  = ((389     < hs)&(443 > hs)&(295   < vs)&(380 > vs))? 1:0;
			assign pos[46]  = ((389     < hs)&(443 > hs)&(390   < vs)&(475 > vs))? 1:0;
			
			
			//Columna 8
			assign pos[7]  = ((453     < hs)&(507 > hs)&(5   < vs)&(95 > vs))? 1:0;
			assign pos[17]  = ((453     < hs)&(507 > hs)&(105   < vs)&(190 > vs))? 1:0;
			assign pos[27]  = ((453     < hs)&(507 > hs)&(200   < vs)&(285 > vs))? 1:0;
			assign pos[37]  = ((453     < hs)&(507 > hs)&(295   < vs)&(380 > vs))? 1:0;
			assign pos[47]  = ((453     < hs)&(507 > hs)&(390   < vs)&(475 > vs))? 1:0;
			
			
			//Columna 9
			assign pos[8]  = ((517     < hs)&(571 > hs)&(5   < vs)&(95 > vs))? 1:0;
			assign pos[18]  = ((517     < hs)&(571 > hs)&(105   < vs)&(190 > vs))? 1:0;
			assign pos[28]  = ((517     < hs)&(571 > hs)&(200   < vs)&(285 > vs))? 1:0;
			assign pos[38]  = ((517     < hs)&(571 > hs)&(295   < vs)&(380 > vs))? 1:0;
			assign pos[48]  = ((517     < hs)&(571 > hs)&(390   < vs)&(475 > vs))? 1:0;
			
			//Columna 10
			assign pos[9]  = ((581     < hs)&(635 > hs)&(5   < vs)&(95 > vs))? 1:0;
			assign pos[19]  = ((581     < hs)&(635 > hs)&(105   < vs)&(190 > vs))? 1:0;
			assign pos[29]  = ((581     < hs)&(635 > hs)&(200   < vs)&(285 > vs))? 1:0;
			assign pos[39]  = ((581     < hs)&(635 > hs)&(295   < vs)&(380 > vs))? 1:0;
			assign pos[49]  = ((581     < hs)&(635 > hs)&(390   < vs)&(475 > vs))? 1:0;
			
		
endmodule

