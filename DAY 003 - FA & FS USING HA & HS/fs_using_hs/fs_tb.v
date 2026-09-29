`timescale 1ns/1ps

module tb_full_subtractor_hs;

    reg x, y, bin;
    wire diff, bout;
    integer n;

    fs_using_hs DUT (
        .a(x),
        .b(y),
        .c(bin),
        .diff(diff),
        .borrow(bout)
    );

    initial begin
        for (n = 0; n < 8; n = n + 1) begin
            {x, y, bin} = n;
            #10;
        end
        $finish;
    end

endmodule
