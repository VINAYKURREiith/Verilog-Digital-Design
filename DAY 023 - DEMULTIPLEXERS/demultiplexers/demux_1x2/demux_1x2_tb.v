`timescale 1ns/1ps

module demux_1x2_tb;

    reg i,s;
    wire y0,y1;

    demux_1x2 uut (
        .i(i),
        .s(s),
        .y0(y0),
        .y1(y1)
    );

    initial begin
        {i,s} = 2'b00; #10;
        {i,s} = 2'b01; #10;
        {i,s} = 2'b10; #10;
        {i,s} = 2'b11; #10;

        $finish;
    end

    initial begin
        $monitor("i=%b s=%b y0=%b y1=%b",i,s,y0,y1);
    end

endmodule
