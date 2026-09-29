`timescale 1ns/1ps

module two_x_one_tb;

    reg a, b, s;
    wire y;

    two_x_one_mux uut (
        .a(a),
        .b(b),
        .s(s),
        .y(y)
    );

    initial begin
        s = 1'b0;
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;

        s = 1'b1;
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;

        $finish;
    end

endmodule
