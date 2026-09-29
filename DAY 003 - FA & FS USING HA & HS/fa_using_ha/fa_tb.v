`timescale 1ns/1ps

module tb_fa_using_ha;

    reg p, q, r;
    wire result, carry_out;

    fa_using_ha DUT (
        .a(p),
        .b(q),
        .c(r),
        .sum(result),
        .carry(carry_out)
    );

    initial begin
        {p,q,r} = 3'b000; #10;
        {p,q,r} = 3'b001; #10;
        {p,q,r} = 3'b010; #10;
        {p,q,r} = 3'b011; #10;
        {p,q,r} = 3'b100; #10;
        {p,q,r} = 3'b101; #10;
        {p,q,r} = 3'b110; #10;
        {p,q,r} = 3'b111; #10;
        $finish;
    end

endmodule
