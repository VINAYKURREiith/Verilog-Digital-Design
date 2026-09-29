`timescale 1ns/1ps

module four_x_one_tb;

    reg [3:0] i;
    reg [1:0] s;
    wire y;
    integer j, k;

    four_x_one_mux uut (
        .i(i),
        .s(s),
        .y(y)
    );

    initial begin
        for (j = 0; j < 4; j = j + 1) begin
            s = j;
            for (k = 0; k < 16; k = k + 1) begin
                i = k;
                #10;
            end
        end

        $finish;
    end

endmodule
