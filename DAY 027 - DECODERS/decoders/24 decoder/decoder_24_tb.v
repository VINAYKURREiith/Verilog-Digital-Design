`timescale 1ns/1ps

module decoder_24_tb;

    reg [1:0] y;
    wire [3:0] i;

    decoder_24 uut (
        .y(y),
        .i(i)
    );

    initial begin
        y = 2'b00; #10;
        y = 2'b01; #10;
        y = 2'b10; #10;
        y = 2'b11; #10;

        $finish;
    end

    initial begin
        $monitor("y=%b i=%b",y,i);
    end

endmodule
