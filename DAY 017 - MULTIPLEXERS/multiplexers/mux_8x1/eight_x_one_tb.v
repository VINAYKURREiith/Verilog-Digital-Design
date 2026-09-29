`timescale 1ns/1ps

module eight_x_one_tb;

    reg [7:0] i;
    reg [2:0] s;
    wire y;

    eight_x_one_mux uut (
        .i(i),
        .s(s),
        .y(y)
    );

    initial begin
        i = 8'b10110110; s = 3'b101; #10;
        i = 8'b10110110; s = 3'b100; #10;
        i = 8'b10110110; s = 3'b001; #10;
        i = 8'b10110110; s = 3'b110; #10;
        i = 8'b10110110; s = 3'b111; #10;

        $finish;
    end

endmodule
