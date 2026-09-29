`timescale 1ns/1ps

module tb_full_subtractor_ha;

    reg x, y, bin;
    wire diff, bout;
    integer k;

    full_subtractor_ha DUT (
        .x(x),
        .y(y),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
        for (k = 0; k < 8; k = k + 1) begin
            {x, y, bin} = k[2:0];
            #10;
        end
        $finish;
    end

endmodule
