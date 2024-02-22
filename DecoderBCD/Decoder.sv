module Decoder(input logic a, b, c, d, output logic t, u, v, w, x, y, z);

assign t = (b|d) & (!b|!d) & !c & !a;

assign u = (c|d) & (!c|!d) & b;

assign v = c & !d & !b;

assign w = (!b|c|!d) & (b|d) & (b|!c) & (!c|d) & !a;

assign x = (b|d) & (!c|d);

assign y = (c|d) & (!b|c) & (!b|d) & !a;

assign z = (b|!c) & (!b|c) & (!b|d) & !a;


endmodule