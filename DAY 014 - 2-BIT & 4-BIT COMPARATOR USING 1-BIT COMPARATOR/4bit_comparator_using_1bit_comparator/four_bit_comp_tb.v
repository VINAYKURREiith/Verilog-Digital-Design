`timescale 1ns/1ps

module tb_four_bit_comparator;

    reg [3:0] x, y;
    wire lt, eq, gt;
    integer i, j;

    four_bit_using_one_bit_comp DUT (
        .a(x),
        .b(y),
        .lt(lt),
        .eq(eq),
        .gt(gt)
    );

    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            x = i;
            for (j = 0; j < 16; j = j + 1) begin
                y = j;
                #10;
            end
        end
        $finish;
    end

endmodule
