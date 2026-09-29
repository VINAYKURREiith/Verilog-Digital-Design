`timescale 1ns/1ps

module parameterized_comparator #(parameter WIDTH = 8) (
    input  [WIDTH-1:0] a,
    input  [WIDTH-1:0] b,
    output             lt,
    output             gt,
    output             eq
);

    assign gt = (a > b);
    assign lt = (a < b);
    assign eq = (a == b);

endmodule
