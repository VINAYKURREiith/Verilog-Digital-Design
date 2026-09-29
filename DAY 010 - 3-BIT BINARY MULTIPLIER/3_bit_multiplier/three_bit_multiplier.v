`timescale 1ns/1ps

module multiplier_3x3 (
    input  [2:0] a,
    input  [2:0] b,
    output [5:0] p
);

    wire [2:0] pp0, pp1, pp2;
    wire c1, c2, c3, c4;
    wire s1, s2, s3, s4;

    assign pp0 = a & {3{b[0]}};
    assign pp1 = a & {3{b[1]}};
    assign pp2 = a & {3{b[2]}};

    assign p[0] = pp0[0];

    half_adder H0 (pp0[1], pp1[0], p[1], c1);
    full_adder F0 (pp0[2], pp1[1], c1, s1, c2);
    half_adder H1 (pp1[2], c2, s2, c3);

    half_adder H2 (s1, pp2[0], p[2], c4);
    full_adder F1 (s2, pp2[1], c4, p[3], c1);
    full_adder F2 (pp2[2], c3, c1, p[4], p[5]);

endmodule


module half_adder (
    input a,
    input b,
    output sum,
    output carry
);

    assign sum = a ^ b;
    assign carry = a & b;

endmodule


module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule
