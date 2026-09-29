`timescale 1ns/1ps

module pencoder_42_tb;

    reg [3:0] i;
    wire [1:0] y;

    pencoder_42 uut (
        .i(i),
        .y(y)
    );

    initial begin
        i = 4'b0001; #10;
        i = 4'b0010; #10;
        i = 4'b0100; #10;
        i = 4'b1000; #10;
        i = 4'b0011; #10;
        i = 4'b0111; #10;
        i = 4'b1110; #10;

        $finish;
    end

    initial begin
        $monitor("i=%b y=%b",i,y);
    end

endmodule
