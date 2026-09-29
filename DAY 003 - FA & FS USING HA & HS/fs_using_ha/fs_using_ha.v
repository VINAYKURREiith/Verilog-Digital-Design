`timescale 1ns/1ps

module full_subtractor_ha (
    input x,
    input y,
    input bin,
    output diff,
    output bout
);

    wire nx;
    wire s1, c1;
    wire s2, c2;

    assign nx = ~x;

    half_adder A0 (
        .x(nx),
        .y(y),
        .s(s1),
        .c(c1)
    );

    half_adder A1 (
        .x(s1),
        .y(bin),
        .s(s2),
        .c(c2)
    );

    assign diff = ~s2;
    assign bout = c1 | c2;

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
