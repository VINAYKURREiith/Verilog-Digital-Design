`timescale 1ns/1ps

module fs_tb;

    reg a,b,bin;
    wire diff,borrow;

    fs_using_mux uut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .borrow(borrow)
    );

    initial begin
        {a,b,bin} = 3'b000; #10;
        {a,b,bin} = 3'b001; #10;
        {a,b,bin} = 3'b010; #10;
        {a,b,bin} = 3'b011; #10;
        {a,b,bin} = 3'b100; #10;
        {a,b,bin} = 3'b101; #10;
        {a,b,bin} = 3'b110; #10;
        {a,b,bin} = 3'b111; #10;

        $finish;
    end

endmodule
