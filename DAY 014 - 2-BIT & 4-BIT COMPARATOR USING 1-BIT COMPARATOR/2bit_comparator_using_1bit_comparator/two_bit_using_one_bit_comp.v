`timescale 1ns/1ps

module comparator_2bit_using_1bit (
    input  [1:0] a,
    input  [1:0] b,
    output       gt,
    output       lt,
    output       eq
);

    wire g_hi, l_hi, e_hi;
    wire g_lo, l_lo, e_lo;

    comparator_1bit C0 (
        .a(a[1]),
        .b(b[1]),
        .lt(l_hi),
        .eq(e_hi),
        .gt(g_hi)
    );

    comparator_1bit C1 (
        .a(a[0]),
        .b(b[0]),
        .lt(l_lo),
        .eq(e_lo),
        .gt(g_lo)
    );

    assign eq = e_hi & e_lo;
    assign gt = g_hi | (e_hi & g_lo);
    assign lt = l_hi | (e_hi & l_lo);

endmodule


module comparator_1bit (
    input  a,
    input  b,
    output lt,
    output eq,
    output gt
);

    assign gt = a & ~b;
    assign lt = ~a & b;
    assign eq = ~(a ^ b);

endmodule
