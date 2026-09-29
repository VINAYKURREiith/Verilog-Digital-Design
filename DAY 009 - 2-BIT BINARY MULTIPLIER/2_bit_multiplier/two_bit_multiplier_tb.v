`timescale 1ns/1ps

module tb_multiplier_2x2;

    reg [1:0] x, y;
    wire [3:0] product;

    multiplier_2x2 DUT (
        .x(x),
        .y(y),
        .product(product)
    );

    initial begin
        {x,y} = 4'b1101; #10;
        {x,y} = 4'b1011; #10;
        {x,y} = 4'b0000; #10;
        {x,y} = 4'b0111; #10;
        {x,y} = 4'b1001; #10;
        {x,y} = 4'b1111; #10;
        $finish;
    end

endmodule
