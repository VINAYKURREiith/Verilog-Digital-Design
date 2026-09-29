`timescale 1ns/1ps

module multiplier_4x3 (
    input  [3:0] a,
    input  [2:0] b,
    output [6:0] p
);

    wire [3:0] r0, r1, r2;
    wire [3:0] c0, c1;

    assign r0 = a & {4{b[0]}};
    assign r1 = a & {4{b[1]}};
    assign r2 = a & {4{b[2]}};

    assign p = a * b;

endmodule
