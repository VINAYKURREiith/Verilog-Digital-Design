`timescale 1ns/1ps

module two_x_one_mux(a,b,s,y);
    input a,b;
    input s;
    output y;

    assign y = (~s & a) | (s & b);
endmodule
