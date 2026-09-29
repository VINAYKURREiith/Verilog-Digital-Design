`timescale 1ns/1ps

module nor_network (
    input p,
    input q,
    output out
);

    wire t0, t1, t2;

    nor_block N0 (.i1(p),  .i2(q),  .o(t0));
    nor_block N1 (.i1(p),  .i2(t0), .o(t1));
    nor_block N2 (.i1(t0), .i2(q),  .o(t2));
    nor_block N3 (.i1(t1), .i2(t2), .o(out));

endmodule


module nor_block (
    input i1,
    input i2,
    output o
);

    assign o = ~(i1 | i2);

endmodule
