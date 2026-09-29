`timescale 1ns/1ps

module full_adder_hs (
    input x,
    input y,
    input cin,
    output sum,
    output carry
);

    wire n_x;
    wire d1, b1;
    wire d2, b2;

    assign n_x = ~x;

    half_subtractor S0 (
        .x(n_x),
        .y(y),
        .d(d1),
        .bout(b1)
    );

    half_subtractor S1 (
        .x(d1),
        .y(cin),
        .d(d2),
        .bout(b2)
    );

    assign sum = ~d2;
    assign carry = b1 | b2;

endmodule


module half_subtractor (
    input x,
    input y,
    output d,
    output bout
);

    assign d = x ^ y;
    assign bout = (~x) & y;

endmodule
