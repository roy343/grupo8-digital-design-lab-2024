module Decoder(input logic a, b, c, d, output logic t, u, v, w, x, y, z);

assign t = (b|d) & (!b|!d) & !c & !a;

assign u = b & d;

assign v = c & d & !b;

assign w = (b|d) & (!c|!d) & (!b|!d) & !a;

assign x = (b|c|d) & (!c|!d);

assign y = (c|d) & (!b|!d) & !a;

assign z = (b|!c) & (!b|c) & (!b|!d) & !a;


endmodule