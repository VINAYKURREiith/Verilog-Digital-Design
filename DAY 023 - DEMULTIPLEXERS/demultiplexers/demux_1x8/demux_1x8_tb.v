`timescale 1ns/1ps

module demux_1x8_tb;

    reg i;
    reg s0,s1,s2;
    wire [7:0] y;

    demux_1x8 uut (
        .i(i),
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .y(y)
    );

    initial begin
        i = 1'b1;

        {s2,s1,s0} = 3'b000; #10;
        {s2,s1,s0} = 3'b001; #10;
        {s2,s1,s0} = 3'b010; #10;
        {s2,s1,s0} = 3'b011; #10;
        {s2,s1,s0} = 3'b100; #10;
        {s2,s1,s0} = 3'b101; #10;
        {s2,s1,s0} = 3'b110; #10;
        {s2,s1,s0} = 3'b111; #10;

        $finish;
    end

    initial begin
        $monitor("i=%b s2=%b s1=%b s0=%b y=%b",
                 i,s2,s1,s0,y);
    end

endmodule
