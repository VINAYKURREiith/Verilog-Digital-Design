`timescale 1ns/1ps

module full_adder (
    input x,
    input y,
    input cin,
    output s,
    output cout
);

    assign s = x ^ y ^ cin;
    assign cout = (x & y) | (y & cin) | (x & cin);

endmodule
