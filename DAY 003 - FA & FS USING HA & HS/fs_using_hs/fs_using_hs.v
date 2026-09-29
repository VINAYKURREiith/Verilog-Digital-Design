`timescale 1ns/1ps

module subtractor_chain (
    input  x,
    input  y,
    input  bin,
    output difference,
    output borrow_out
);

    wire d_temp;
    wire borrow_a;
    wire borrow_b;

    half_sub HS0 (
        .p(x),
        .q(y),
        .d(d_temp),
        .bo(borrow_a)
    );

    half_sub HS1 (
        .p(d_temp),
        .q(bin),
        .d(difference),
        .bo(borrow_b)
    );

    assign borrow_out = borrow_a | borrow_b;

endmodule


module half_sub (
    input  p,
    input  q,
    output d,
    output bo
);

    assign d  = p ^ q;
    assign bo = (~p) & q;

endmodule
