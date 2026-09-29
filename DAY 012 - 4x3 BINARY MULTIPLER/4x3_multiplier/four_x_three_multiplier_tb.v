`timescale 1ns/1ps

module tb_multiplier_4x3;

    reg [3:0] x;
    reg [2:0] y;
    wire [6:0] product;

    multiplier_4x3 DUT (
        .a(x),
        .b(y),
        .p(product)
    );

    initial begin
        {x,y} = 7'b0011101; #10;
        {x,y} = 7'b1100011; #10;
        {x,y} = 7'b1001100; #10;
        {x,y} = 7'b1000101; #10;
        $finish;
    end

endmodule
