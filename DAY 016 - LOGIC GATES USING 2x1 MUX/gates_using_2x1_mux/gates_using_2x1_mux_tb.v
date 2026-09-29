`timescale 1ns/1ps

module gates_using_2x1_mux_tb;

    reg a, b;
    wire y1, y2, y3, y4, y5, y6, y7;

    gates_using_2x1_mux uut (
        .a(a),
        .b(b),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .y5(y5),
        .y6(y6),
        .y7(y7)
    );

    initial begin
        {a,b} = 2'b00; #10;
        {a,b} = 2'b01; #10;
        {a,b} = 2'b10; #10;
        {a,b} = 2'b11; #10;
        $finish;
    end

endmodule
