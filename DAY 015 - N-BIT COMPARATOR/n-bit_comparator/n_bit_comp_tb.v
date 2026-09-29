`timescale 1ns/1ps

module tb_parameterized_comparator #(parameter WIDTH = 8);

    reg  [WIDTH-1:0] x;
    reg  [WIDTH-1:0] y;
    wire             lt;
    wire             gt;
    wire             eq;

    integer k;

    parameterized_comparator #(.WIDTH(WIDTH)) DUT (
        .a(x),
        .b(y),
        .lt(lt),
        .gt(gt),
        .eq(eq)
    );

    initial begin
        for (k = 0; k < 8; k = k + 1) begin
            x = $random;
            y = $random;
            #10;
        end
        $finish;
    end

endmodule
