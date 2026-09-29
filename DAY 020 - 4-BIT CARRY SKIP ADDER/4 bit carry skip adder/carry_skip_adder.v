`timescale 1ns/1ps

module carry_skip_adder(a,b,c0,s,cout);

    input [3:0] a,b;
    input c0;
    output [3:0] s;
    output cout;

    wire p0,p1,p2,p3;
    wire skip;
    wire c1,c2,c3,c4;

    full_adder u1(a[0],b[0],c0,s[0],c1);
    full_adder u2(a[1],b[1],c1,s[1],c2);
    full_adder u3(a[2],b[2],c2,s[2],c3);
    full_adder u4(a[3],b[3],c3,s[3],c4);

    assign p0 = a[0] ^ b[0];
    assign p1 = a[1] ^ b[1];
    assign p2 = a[2] ^ b[2];
    assign p3 = a[3] ^ b[3];

    and u5(skip,p0,p1,p2,p3);

    mux_2x1 u6(c4,c0,skip,cout);

endmodule

module full_adder(a,b,cin,sum,co);

    input a,b,cin;
    output sum,co;

    assign sum = a ^ b ^ cin;
    assign co = (a & b) | (b & cin) | (a & cin);

endmodule

module mux_2x1(a,b,s,y);

    input a,b,s;
    output y;

    assign y = (~s & a) | (s & b);

