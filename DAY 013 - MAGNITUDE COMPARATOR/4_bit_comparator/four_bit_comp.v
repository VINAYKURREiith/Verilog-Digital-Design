`timescale 1ns/1ps

module comparator_4bit (
    input  [3:0] x,
    input  [3:0] y,
    output       greater,
    output       less,
    output       equal
);

    wire e3, e2, e1, e0;

    assign e3 = ~(x[3] ^ y[3]);
    assign e2 = ~(x[2] ^ y[2]);
    assign e1 = ~(x[1] ^ y[1]);
    assign e0 = ~(x[0] ^ y[0]);

    assign greater = (x[3] & ~y[3]) |
                     (e3 & x[2] & ~y[2]) |
                     (e3 & e2 & x[1] & ~y[1]) |
                     (e3 & e2 & e1 & x[0] & ~y[0]);

    assign less = (~x[3] & y[3]) |
                  (e3 & ~x[2] & y[2]) |
                  (e3 & e2 & ~x[1] & y[1]) |
                  (e3 & e2 & e1 & ~x[0] & y[0]);

    assign equal = e3 & e2 & e1 & e0;

endmodule
