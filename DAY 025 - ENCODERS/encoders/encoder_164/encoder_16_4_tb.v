`timescale 1ns/1ps

module encoder_16_4_tb;

    reg [15:0] i;
    wire [3:0] y;
    integer j;

    encoder_16_4 uut (
        .i(i),
        .y(y)
    );

    initial begin
        i = 16'b0000_0000_0000_0001;

        for (j = 0; j < 16; j = j + 1) begin
            i = (16'b1 << j);
            #10;
        end

        $finish;
    end

    initial begin
        $monitor("i=%d y=%b",i,y);
    end

endmodule
