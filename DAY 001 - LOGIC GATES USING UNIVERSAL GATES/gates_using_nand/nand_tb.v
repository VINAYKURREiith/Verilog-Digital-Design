`timescale 1ns/1ps

module tb_nand_logic;

    reg x, z;
    wire f;

    nand_logic DUT (
        .x(x),
        .z(z),
        .f(f)
    );

    initial begin
        {x,z} = 2'b00; #10;
        {x,z} = 2'b01; #10;
        {x,z} = 2'b10; #10;
        {x,z} = 2'b11; #10;
        $finish;
    end

    initial begin
        $monitor("x=%b z=%b f=%b", x, z, f);
    end

endmodule
