`timescale 1ns/1ps

module encoder_83_tb;

    reg [7:0] i;
    wire [2:0] y;

    encoder_83 uut (
        .i(i),
        .y(y)
    );

    initial begin
        i = 8'b0000_0001; #10;
        i = 8'b0000_0010; #10;
        i = 8'b0000_0100; #10;
        i = 8'b0000_1000; #10;
        i = 8'b0001_0000; #10;
        i = 8'b0010_0000; #10;
        i = 8'b0100_0000; #10;
        i = 8'b1000_0000; #10;
        i = 8'b0110_0100; #10;

        $finish;
    end

    initial begin
        $monitor("i=%b y=%b",i,y);
    end

endmodule
