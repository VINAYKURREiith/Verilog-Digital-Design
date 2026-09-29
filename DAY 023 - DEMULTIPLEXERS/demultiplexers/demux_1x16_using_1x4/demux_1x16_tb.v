`timescale 1ns/1ps

module demux_1x16_tb;

    reg i;
    reg s3,s2,s1,s0;
    wire [15:0] y;

    demux_1x16_using_1x4 uut (
        .i(i),
        .s3(s3),
        .s2(s2),
        .s1(s1),
        .s0(s0),
        .y(y)
    );

    initial begin
        i = 1'b1;

        {s3,s2,s1,s0} = 4'b0000; #10;
        {s3,s2,s1,s0} = 4'b0001; #10;
        {s3,s2,s1,s0} = 4'b0010; #10;
        {s3,s2,s1,s0} = 4'b0011; #10;
        {s3,s2,s1,s0} = 4'b0100; #10;
        {s3,s2,s1,s0} = 4'b0101; #10;
        {s3,s2,s1,s0} = 4'b0110; #10;
        {s3,s2,s1,s0} = 4'b0111; #10;
        {s3,s2,s1,s0} = 4'b1000; #10;
        {s3,s2,s1,s0} = 4'b1001; #10;
        {s3,s2,s1,s0} = 4'b1010; #10;
        {s3,s2,s1,s0} = 4'b1011; #10;
        {s3,s2,s1,s0} = 4'b1100; #10;
        {s3,s2,s1,s0} = 4'b1101; #10;
        {s3,s2,s1,s0} = 4'b1110; #10;
        {s3,s2,s1,s0} = 4'b1111; #10;

        $finish;
    end

    initial begin
        $monitor("i=%b s3=%b s2=%b s1=%b s0=%b y=%b",
                 i,s3,s2,s1,s0,y);
    end

endmodule
