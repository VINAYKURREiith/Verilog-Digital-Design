`timescale 1ns/1ps

module half_subtractor (
    input x,
    input y,
    output d,
    output bout
);

    assign d = x ^ y;
    assign bout = (~x) & y;

endmodule
