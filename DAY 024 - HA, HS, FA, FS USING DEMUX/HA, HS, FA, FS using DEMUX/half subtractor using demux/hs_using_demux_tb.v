`timescale 1ns/1ps

module hs_using_demux_tb;

    reg a,b;
    wire diff,borrow;

    hs_using_1x4_demux uut (
        .a(a),
        .b(b),
        .diff(diff),
        .borrow(borrow)
    );

    initial begin
        {a,b} = 2'b00; #10;
        {a,b} = 2'b01; #10;
        {a,b} = 2'b10; #10;
        {a,b} = 2'b11; #10;

        $finish;
    end

    initial begin
        $monitor("a=%b b=%b diff=%b borrow=%b",
                 a,b,diff,borrow);
    end

endmodule
