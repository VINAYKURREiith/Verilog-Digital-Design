`timescale 1ns/1ps

module multiplier_4x4 (
    input  [3:0] a,
    input  [3:0] b,
    output [7:0] p
);

    wire [15:0] pp;
    wire [7:0] c1, c2, c3;
    wire [7:0] s1, s2, s3;

    assign pp = {16{1'b0}};

    assign pp[0]  = a[0] & b[0];
    assign pp[1]  = a[1] & b[0];
    assign pp[2]  = a[2] & b[0];
    assign pp[3]  = a[3] & b[0];

    assign pp[4]  = a[0] & b[1];
    assign pp[5]  = a[1] & b[1];
    assign pp[6]  = a[2] & b[1];
    assign pp[7]  = a[3] & b[1];

    assign pp[8]  = a[0] & b[2];
    assign pp[9]  = a[1] & b[2];
    assign pp[10] = a[2] & b[2];
    assign pp[11] = a[3] & b[2];

    assign pp[12] = a[0] & b[3];
    assign pp[13] = a[1] & b[3];
    assign pp[14] = a[2] & b[3];
    assign pp[15] = a[3] & b[3];

    assign p = a * b;

endmodule
