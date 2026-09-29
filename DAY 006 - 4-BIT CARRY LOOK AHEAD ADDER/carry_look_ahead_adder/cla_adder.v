`timescale 1ns/1ps

module carry_lookahead (
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] sum,
    output       cout
);

    wire [3:0] p;
    wire [3:0] g;
    wire k1, k2, k3;

    assign p = a ^ b;
    assign g = a & b;

    assign k1 = g[0] | (p[0] & cin);
    assign k2 = g[1] | (p[1] & k1);
    assign k3 = g[2] | (p[2] & k2);
    assign cout = g[3] | (p[3] & k3);

    assign sum[0] = p[0] ^ cin;
    assign sum[1] = p[1] ^ k1;
    assign sum[2] = p[2] ^ k2;
    assign sum[3] = p[3] ^ k3;

endmodule
