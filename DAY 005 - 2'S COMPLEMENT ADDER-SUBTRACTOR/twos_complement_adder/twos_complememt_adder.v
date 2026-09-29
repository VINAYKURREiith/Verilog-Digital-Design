`timescale 1ns/1ps

module twos_complement_adder (
    input  [3:0] a,
    input  [3:0] b,
    input        m,
    output [3:0] sum,
    output       cout
);

    wire [3:0] bx;
    wire c1, c2, c3;

    xor (bx[0], b[0], m);
    xor (bx[1], b[1], m);
    xor (bx[2], b[2], m);
    xor (bx[3], b[3], m);

    full_adder F0 (a[0], bx[0], m,  sum[0], c1);
    full_adder F1 (a[1], bx[1], c1, sum[1], c2);
    full_adder F2 (a[2], bx[2], c2, sum[2], c3);
    full_adder F3 (a[3], bx[3], c3, sum[3], cout);

endmodule


module full_adder (
    input  a,
    input  b,
    input  cin,
    output sum,
    output carry
);

    assign sum   = a ^ b ^ cin;
    assign carry = (a & b) | (a & cin) | (b & cin);

endmodule
