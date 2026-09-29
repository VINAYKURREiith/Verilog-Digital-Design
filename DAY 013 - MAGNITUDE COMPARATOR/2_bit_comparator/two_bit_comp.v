`timescale 1ns/1ps

module comparator_2bit (
    input  [1:0] x,
    input  [1:0] y,
    output       greater,
    output       less,
    output       equal
);

    wire high_eq;

    assign high_eq = ~(x[1] ^ y[1]);

    assign greater = (x[1] & ~y[1]) |
                     (high_eq & x[0] & ~y[0]);

    assign less = (~x[1] & y[1]) |
                  (high_eq & ~x[0] & y[0]);

    assign equal = high_eq & ~(x[0] ^ y[0]);

endmodule
