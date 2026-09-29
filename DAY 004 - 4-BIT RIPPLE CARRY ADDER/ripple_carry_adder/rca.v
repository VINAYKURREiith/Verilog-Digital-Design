`timescale 1ns/1ps

module four_bit_adder (
    input  [3:0] x,
    input  [3:0] y,
    input        cin,
    output [3:0] s,
    output       cout
);

    wire c1, c2, c3;

    full_add U0 (.x(x[0]), .y(y[0]), .cin(cin), .s(s[0]), .cout(c1));
    full_add U1 (.x(x[1]), .y(y[1]), .cin(c1),  .s(s[1]), .cout(c2));
    full_add U2 (.x(x[2]), .y(y[2]), .cin(c2),  .s(s[2]), .cout(c3));
    full_add U3 (.x(x[3]), .y(y[3]), .cin(c3),  .s(s[3]), .cout(cout));

endmodule

module full_add (
    input  x,
    input  y,
    input  cin,
    output s,
    output cout
);

    assign s    = x ^ y ^ cin;
    assign cout = (x & y) | (x & cin) | (y & cin);

endmodule
