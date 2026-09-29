`timescale 1ns/1ps

module carry_select_adder_v2 (
    input  [3:0] x,
    input  [3:0] y,
    input        cin,
    output [3:0] result,
    output       carry_out
);

    wire [3:0] r0, r1;
    wire [3:0] c0, c1;

    ripple_block R0 (
        .a(x),
        .b(y),
        .cin(1'b0),
        .sum(r0),
        .cout(c0[3])
    );

    ripple_block R1 (
        .a(x),
        .b(y),
        .cin(1'b1),
        .sum(r1),
        .cout(c1[3])
    );

    assign result[0] = cin ? r1[0] : r0[0];
    assign result[1] = cin ? r1[1] : r0[1];
    assign result[2] = cin ? r1[2] : r0[2];
    assign result[3] = cin ? r1[3] : r0[3];

    assign carry_out = cin ? c1[3] : c0[3];

endmodule


module ripple_block (
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] sum,
    output       cout
);

    wire c1, c2, c3;

    fa F0 (a[0], b[0], cin, sum[0], c1);
    fa F1 (a[1], b[1], c1,  sum[1], c2);
    fa F2 (a[2], b[2], c2,  sum[2], c3);
    fa F3 (a[3], b[3], c3,  sum[3], cout);

endmodule


module fa (
    input  a,
    input  b,
    input  cin,
    output sum,
    output carry
);

    assign sum = a ^ b ^ cin;
    assign carry = (a & b) | (a & cin) | (b & cin);

endmodule
