`timescale 1ns/1ps

module comparator_1bit (
    input  x,
    input  y,
    output less,
    output greater,
    output equal
);

    wire nx, ny;

    assign nx = ~x;
    assign ny = ~y;

    assign equal   = ~(x ^ y);
    assign less    = nx & y;
    assign greater = x & ny;

endmodule
