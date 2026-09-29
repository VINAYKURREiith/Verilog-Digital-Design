`timescale 1ns/1ps

module tb_multiplier_4x4;

    reg [3:0] x, y;
    wire [7:0] product;

    multiplier_4x4 DUT (
        .a(x),
        .b(y),
        .p(product)
    );

    initial begin
        {x,y} = 8'b01110100; #10;
        {x,y} = 8'b10100011; #10;
        {x,y} = 8'b01011010; #10;
        {x,y} = 8'b11000100; #10;
        $finish;
    end

endmodule
