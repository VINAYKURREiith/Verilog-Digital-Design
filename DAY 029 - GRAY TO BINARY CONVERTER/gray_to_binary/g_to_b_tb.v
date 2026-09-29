`timescale 1ns/1ps

module g_to_b_tb;

    reg [3:0] g;
    wire [3:0] b;
    integer i;

    g_to_b uut (
        .g(g),
        .b(b)
    );

    initial begin
        g = 4'b0000;

        for (i = 0; i < 16; i = i + 1) begin
            g = i;
            #10;
        end

        $finish;
    end

endmodule
