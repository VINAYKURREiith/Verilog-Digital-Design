`timescale 1ns/1ps

module tb_half_adder;

    reg x, y;
    wire s, c;

    half_adder U1 (
        .x(x),
        .y(y),
        .s(s),
        .c(c)
    );

    initial begin
        {x,y} = 2'b00; #10;
        {x,y} = 2'b01; #10;
        {x,y} = 2'b10; #10;
        {x,y} = 2'b11; #10;
        $finish;
    end

endmodule
