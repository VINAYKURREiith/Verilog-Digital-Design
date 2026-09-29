`timescale 1ns/1ps

module tb_comparator_2bit;

    reg [1:0] x, y;
    wire greater, less, equal;

    integer i, j;

    comparator_2bit DUT (
        .x(x),
        .y(y),
        .greater(greater),
        .less(less),
        .equal(equal)
    );

    initial begin
        for (i = 0; i < 4; i = i + 1) begin
            x = i;
            for (j = 0; j < 4; j = j + 1) begin
                y = j;
                #10;
            end
        end
        $finish;
    end

endmodule
