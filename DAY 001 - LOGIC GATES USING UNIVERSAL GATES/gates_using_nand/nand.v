`timescale 1ns/1ps

module nand_logic (
    input  x,
    input  z,
    output f
);

    wire n0, n1, n2, n3;

    nand_unit G0 (.p(x),  .q(z),  .r(n0));
    nand_unit G1 (.p(x),  .q(n0), .r(n1));
    nand_unit G2 (.p(z),  .q(n0), .r(n2));
    nand_unit G3 (.p(n1), .q(n2),  .r(n3));
    nand_unit G4 (.p(n3), .q(n3),  .r(f));

endmodule


module nand_unit (
    input  p,
    input  q,
    output r
);

    assign r = ~(p & q);

endmodule
