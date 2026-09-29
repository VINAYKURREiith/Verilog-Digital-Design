`timescale 1ns/1ps

module multiplier_2x2 (
    input  [1:0] x,
    input  [1:0] y,
    output [3:0] product
);

    wire pp1, pp2, pp3;
    wire carry;

    assign product[0] = x[0] & y[0];

    assign pp1 = x[1] & y[0];
    assign pp2 = x[0] & y[1];
    assign pp3 = x[1] & y[1];

    half_add H0 (
        .a(pp1),
        .b(pp2),
        .sum(product[1]),
        .carry(carry)
    );

    half_add H1 (
        .a(pp3),
        .b(carry),
        .sum(product[2]),
        .carry(product[3])
    );

endmodule


module half_add (
    input  a,
    input  b,
    output sum,
    output carry
);

    assign sum = a ^ b;
    assign carry = a & b;

endmodule
