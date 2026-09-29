`timescale 1ns/1ps

module tb_twos_complement_adder;

    reg [3:0] x, y;
    reg mode;
    wire [3:0] result;
    wire carry;

    twos_complememt_adder DUT (
        .a(x),
        .b(y),
        .m(mode),
        .sum(result),
        .cout(carry)
    );

    initial begin
        x = 4'b1010; y = 4'b1100; mode = 1'b0; #10;
        x = 4'b1000; y = 4'b0100; mode = 1'b0; #10;
        x = 4'b1010; y = 4'b0010; mode = 1'b0; #10;
        x = 4'b1111; y = 4'b1010; mode = 1'b1; #10;
        x = 4'b1010; y = 4'b0110; mode = 1'b1; #10;
        x = 4'b1001; y = 4'b0100; mode = 1'b1; #10;
        $finish;
    end

endmodule
