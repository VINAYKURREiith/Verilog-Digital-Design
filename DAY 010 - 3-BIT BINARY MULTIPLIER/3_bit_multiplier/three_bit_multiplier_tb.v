`timescale 1ns/1ps

module tb_multiplier_3x3;

    reg [2:0] x, y;
    wire [5:0] product;

    three_bit_multiplier DUT (
        .a(x),
        .b(y),
        .p(product)
    );

    initial begin
        {x,y} = 6'b010110; #10;
        {x,y} = 6'b100111; #10;
        {x,y} = 6'b011011; #10;
        {x,y} = 6'b101101; #10;
        $finish;
    end

endmodule
