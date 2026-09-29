`timescale 1ns/1ps

module tb_carry_save_adder;

    reg [3:0] x, y, z;
    wire [4:0] sum;
    wire cout;

    carry_save_adder DUT (
        .x(x),
        .y(y),
        .z(z),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        {x,y,z} = 12'b101100101111; #10;
        {x,y,z} = 12'b011111000110; #10;
        {x,y,z} = 12'b010111111110; #10;
        {x,y,z} = 12'b001111011010; #10;
        $finish;
    end

endmodule
