`timescale 1ns/1ps

module mux_16x1_using_8x1_2x1(
    input [15:0] i,
    input s0,s1,s2,s3,
    output y
);

    wire w0,w1;

    mux8x1 u1(i[7:0],s0,s1,s2,w0);
    mux8x1 u2(i[15:8],s0,s1,s2,w1);

    mux2x1 u3(w0,w1,s3,y);

endmodule

module mux8x1(
    input [7:0] i,
    input s0,s1,s2,
    output y
);

    assign y = (~s2 & ~s1 & ~s0 & i[0]) |
               (~s2 & ~s1 &  s0 & i[1]) |
               (~s2 &  s1 & ~s0 & i[2]) |
               (~s2 &  s1 &  s0 & i[3]) |
               ( s2 & ~s1 & ~s0 & i[4]) |
               ( s2 & ~s1 &  s0 & i[5]) |
               ( s2 &  s1 & ~s0 & i[6]) |
               ( s2 &  s1 &  s0 & i[7]);

endmodule

module mux2x1(a,b,s,y);

    input a,b,s;
    output y;

    assign y = (~s & a) | (s & b);

endmodule
