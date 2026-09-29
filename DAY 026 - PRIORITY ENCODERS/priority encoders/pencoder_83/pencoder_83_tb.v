`timescale 1ns/1ps

module pencoder_83_tb;

    reg [7:0] i;
    wire [2:0] y;

    pencoder_83 uut (
        .i(i),
        .y(y)
    );

    initial begin
        i = 8'h80; #10;
        i = 8'h40; #10;
        i = 8'h20; #10;
        i = 8'h10; #10;
        i = 8'h08; #10;
        i = 8'h04; #10;
        i = 8'h02; #10;
        i = 8'h01; #10;
        i = 8'h56; #10;
        i = 8'h00; #10;

        $finish;
    end

    initial begin
        $monitor("i=%b y=%b",i,y);
    end

endmodule
