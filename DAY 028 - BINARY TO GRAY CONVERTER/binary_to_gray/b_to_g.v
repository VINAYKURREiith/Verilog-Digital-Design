`timescale 1ns/1ps

module b_to_g(b,g);

    input [3:0] b;
    output [3:0] g;

    assign g[3] = b[3];

    xor u1(g[2],b[3],b[2]);
    xor u2(g[1],b[2],b[1]);
    xor u3(g[0],b[1],b[0]);

endmodule
