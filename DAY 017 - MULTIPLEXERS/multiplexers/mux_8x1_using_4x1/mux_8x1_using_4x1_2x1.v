`timescale 1ns/1ps

module mux_8x1_using_4x1_2x1(i,s0,s1,s2,y);

    input [7:0] i;
    input s0,s1,s2;
    output y;

    wire x0,x1;

    mux4x1 u1(i[0],i[1],i[2],i[3],s0,s1,x0);
    mux4x1 u2(i[4],i[5],i[6],i[7],s0,s1,x1);

    mux2x1 u3(x0,x1,s2,y);

endmodule

module mux2x1(a,b,s,y);

    input a,b,s;
    output y;

    assign y = (~s & a) | (s & b);

endmodule

module mux4x1(a,b,c,d,s0,s1,y);

    input a,b,c,d;
    input s0,s1;
    output y;

    assign y = (~s1 & ~s0 & a) |
               (~s1 &  s0 & b) |
               ( s1 & ~s0 & c) |
               ( s1 &  s0 & d);

endmodule
