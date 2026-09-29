`timescale 1ns/1ps

module comparator_4bit_using_1bit;

    input  [3:0] a, b;
    output       lt, eq, gt;

    wire l3, e3, g3;
    wire l2, e2, g2;
    wire l1, e1, g1;
    wire l0, e0, g0;

    one_bit_compare C3(a[3], b[3], l3, e3, g3);
    one_bit_compare C2(a[2], b[2], l2, e2, g2);
    one_bit_compare C1(a[1], b[1], l1, e1, g1);
    one_bit_compare C0(a[0], b[0], l0, e0, g0);

    assign gt = g3 | (e3 & g2) | (e3 & e2 & g1) |
                (e3 & e2 & e1 & g0);

    assign lt = l3 | (e3 & l2) | (e3 & e2 & l1) |
                (e3 & e2 & e1 & l0);

    assign eq = e3 & e2 & e1 & e0;

endmodule


module one_bit_compare (
    input  a,
    input  b,
    output lt,
    output eq,
    output gt
);

    assign lt = ~a & b;
    assign gt = a & ~b;
    assign eq = ~(a ^ b);

endmodule
