`timescale 1ns/1ps

module full_adder_ha (
    input x,
    input y,
    input cin,
    output s,
    output cout
);

    wire t_sum, c1, c2;

    half_adder U0 (
        .x(x),
        .y(y),
        .s(t_sum),
        .c(c1)
    );

    half_adder U1 (
        .x(t_sum),
        .y(cin),
        .s(s),
        .c(c2)
    );

    assign cout = c1 | c2;

endmodule

module half_adder (
    input x,
    input y,
    output s,
    output c
);

    assign s = x ^ y;
    assign c = x & y;

endmodule
