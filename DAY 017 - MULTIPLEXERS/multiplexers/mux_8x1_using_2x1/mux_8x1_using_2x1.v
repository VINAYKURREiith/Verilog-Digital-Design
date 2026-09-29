`timescale 1ns/1ps

module mux_8x1_using_2x1(
    input [7:0] i,
    input [2:0] s,
    output y
);

    wire w0, w1, w2, w3;
    wire w4, w5;

    mux2x1 u0(i[0], i[1], s[0], w0);
    mux2x1 u1(i[2], i[3], s[0], w1);
    mux2x1 u2(i[4], i[5], s[0], w2);
    mux2x1 u3(i[6], i[7], s[0], w3);

    mux2x1 u4(w0, w1, s[1], w4);
    mux2x1 u5(w2, w3, s[1], w5);

    mux2x1 u6(w4, w5, s[2], y);

endmodule

module mux2x1(a,b,s,y);

    input a,b;
    input s;
    output y;

    assign y = (~s & a) | (s & b);

endmodule
