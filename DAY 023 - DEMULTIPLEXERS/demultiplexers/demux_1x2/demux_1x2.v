`timescale 1ns/1ps

module demux_1x2(i,s,y0,y1);

    input i,s;
    output y0,y1;

    assign y0 = i & ~s;
    assign y1 = i & s;

endmodule
