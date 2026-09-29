`timescale 1ns/1ps

module carry_save_adder (
    input  [3:0] x,
    input  [3:0] y,
    input  [3:0] z,
    output [4:0] sum,
    output       cout
);

    wire [3:1] partial_sum;
    wire [6:0] carry;
    wire k1, k2, k3;

    full_adder A0 (x[0], y[0], z[0], sum[0], carry[0]);
    full_adder A1 (x[1], y[1], z[1], partial_sum[1], carry[1]);
    full_adder A2 (x[2], y[2], z[2], partial_sum[2], carry[2]);
    full_adder A3 (x[3], y[3], z[3], partial_sum[3], carry[3]);

    full_adder A4 (partial_sum[1], carry[0], 1'b0, sum[1], k1);
    full_adder A5 (partial_sum[2], carry[1], k1,    sum[2], k2);
    full_adder A6 (partial_sum[3], carry[2], k2,    sum[3], k3);
    full_adder A7 (1'b0, carry[3], k3,             sum[4], cout);

endmodule


module full_adder (
    input  a,
    input  b,
    input  cin,
    output s,
    output co
);

    assign s  = a ^ b ^ cin;
    assign co = (a & b) | (a & cin) | (b & cin);

endmodule
