`timescale 1ns/1ps

module mux_16x1_using_8x1_2x1_tb;

    reg [15:0] i;
    reg s0,s1,s2,s3;
    wire y;

    mux_16x1_using_8x1_2x1 uut (
        .i(i),
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .s3(s3),
        .y(y)
    );

    initial begin
        i = 16'b0010_0101_1110_0111;
        {s3,s2,s1,s0} = 4'b0000;
        #10;

        {s3,s2,s1,s0} = 4'b0010;
        #10;

        {s3,s2,s1,s0} = 4'b1100;
        #10;

        {s3,s2,s1,s0} = 4'b0100;
        #10;

        {s3,s2,s1,s0} = 4'b0111;
        #10;

        {s3,s2,s1,s0} = 4'b1111;
        #10;

        $finish;
    end

    initial begin
        $monitor("i=%b s3=%b s2=%b s1=%b s0=%b y=%b",
                 i,s3,s2,s1,s0,y);
    end

endmodule
