`timescale 1ns/1ps

module b_to_g_tb;

    reg [3:0] b;
    wire [3:0] g;
    integer i;

    b_to_g uut (
        .b(b),
        .g(g)
    );

    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            b = i;
            #10;
        end

        $finish;
    end

endmodule
