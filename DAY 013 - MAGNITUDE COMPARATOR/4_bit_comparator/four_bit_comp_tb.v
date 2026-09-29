`timescale 1ns/1ps

module tb_comparator_4bit;

    reg [3:0] x, y;
    wire greater, less, equal;

    four_bit_comp DUT (
        .a(x),
        .b(y),
        .gt(greater),
        .lt(less),
        .eq(equal)
    );

    initial begin
        {x,y} = 8'b10101010; #10;
        {x,y} = 8'b00101010; #10;
        {x,y} = 8'b11101010; #10;
        {x,y} = 8'b01000111; #10;
        {x,y} = 8'b11001100; #10;
        $finish;
    end

endmodule
