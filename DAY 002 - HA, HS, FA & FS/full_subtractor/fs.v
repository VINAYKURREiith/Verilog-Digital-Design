`timescale 1ns/1ps

module full_subtractor (
    input x,
    input y,
    input bin,
    output d,
    output bout
);

    assign d = x ^ y ^ bin;
    assign bout = (~x & y) | (y & bin) | (~x & bin);

endmodule
