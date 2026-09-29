`timescale 1ns/1ps

module tb_full_subtractor;

    reg x, y, bin;
    wire d, bout;

    full_subtractor DUT (
        .x(x),
        .y(y),
        .bin(bin),
        .d(d),
        .bout(bout)
    );

    initial begin
        {x,y,bin} = 3'b000; #10;
        {x,y,bin} = 3'b001; #10;
        {x,y,bin} = 3'b010; #10;
        {x,y,bin} = 3'b011; #10;
        {x,y,bin} = 3'b100; #10;
        {x,y,bin} = 3'b101; #10;
        {x,y,bin} = 3'b110; #10;
        {x,y,bin} = 3'b111; #10;
        $finish;
    end

endmodule
