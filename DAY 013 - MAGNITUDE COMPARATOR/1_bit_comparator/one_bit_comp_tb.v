`timescale 1ns/1ps

module tb_comparator_1bit;

    reg x, y;
    wire less, greater, equal;

    comparator_1bit DUT (
        .x(x),
        .y(y),
        .less(less),
        .greater(greater),
        .equal(equal)
    );

    initial begin
        {x,y} = 2'b00; #10;
        {x,y} = 2'b01; #10;
        {x,y} = 2'b10; #10;
        {x,y} = 2'b11; #10;
        $finish;
    end

endmodule
