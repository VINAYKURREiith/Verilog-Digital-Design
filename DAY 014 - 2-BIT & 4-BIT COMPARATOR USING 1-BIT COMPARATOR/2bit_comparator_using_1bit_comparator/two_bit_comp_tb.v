`timescale 1ns/1ps

module tb_two_bit_using_one_bit;

    reg [1:0] x, y;
    wire gt, lt, eq;

    integer m, n;

    two_bit_using_one_bit_comp DUT (
        .a(x),
        .b(y),
        .gt(gt),
        .lt(lt),
        .eq(eq)
    );

    initial begin
        for (m = 0; m < 4; m = m + 1) begin
            x = m;
            for (n = 0; n < 4; n = n + 1) begin
                y = n;
                #10;
            end
        end
        $finish;
    end

endmodule
