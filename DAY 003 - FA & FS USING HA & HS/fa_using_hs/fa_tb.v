`timescale 1ns/1ps

module tb_fa_using_hs;

    reg x, y, cin;
    wire sum, carry;

    fa_using_hs UUT (
        .a(x),
        .b(y),
        .c(cin),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        {x,y,cin} = 3'b000; #10;
        {x,y,cin} = 3'b001; #10;
        {x,y,cin} = 3'b010; #10;
        {x,y,cin} = 3'b011; #10;
        {x,y,cin} = 3'b100; #10;
        {x,y,cin} = 3'b101; #10;
        {x,y,cin} = 3'b110; #10;
        {x,y,cin} = 3'b111; #10;
        $finish;
    end

endmodule
