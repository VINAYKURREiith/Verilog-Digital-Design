`timescale 1ns/1ps

module mux_8x1_tb;

    reg [7:0] i;
    reg s0, s1, s2;
    wire y;

    mux_8x1_using_4x1_2x1 uut (
        .i(i),
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .y(y)
    );

    initial begin
        i = 8'b10110111;
        {s2,s1,s0} = 3'b000;
        #10;

        {s2,s1,s0} = 3'b011;
        #10;

        {s2,s1,s0} = 3'b001;
        #10;

        {s2,s1,s0} = 3'b110;
        #10;

        $finish;
    end

endmodule
