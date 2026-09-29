`timescale 1ns/1ps

module fa_using_mux(a,b,cin,sum,cout);

    input a,b,cin;
    output sum,cout;

    wire ncin;

    not g1(ncin,cin);

    mux_4x1 u1(cin,ncin,ncin,cin,b,a,sum);
    mux_4x1 u2(1'b0,cin,cin,1'b1,b,a,cout);

endmodule

module mux_4x1(a,b,c,d,s0,s1,y);

    input a,b,c,d;
    input s0,s1;
    output y;

    assign y = (~s1 & ~s0 & a) |
               (~s1 &  s0 & b) |
               ( s1 & ~s0 & c) |
               ( s1 &  s0 & d);

endmodule
