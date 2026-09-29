`timescale 1ns/1ps

module demux_1x4_tb;

    reg i,s0,s1;
    wire [3:0] y;

    demux_1x4 uut (
        .i(i),
        .s0(s0),
        .s1(s1),
        .y(y)
    );

    initial begin
        {s1,s0} = 2'b00; i = 1'b0; #10;
        {s1,s0} = 2'b00; i = 1'b1; #10;
        {s1,s0} = 2'b01; i = 1'b0; #10;
        {s1,s0} = 2'b01; i = 1'b1; #10;
        {s1,s0} = 2'b10; i = 1'b0; #10;
        {s1,s0} = 2'b10; i = 1'b1; #10;
        {s1,s0} = 2'b11; i = 1'b0; #10;
        {s1,s0} = 2'b11; i = 1'b1; #10;

        $finish;
    end

    initial begin
        $monitor("i=%b s1=%b s0=%b y=%b",i,s1,s0,y);
    end

endmodule
