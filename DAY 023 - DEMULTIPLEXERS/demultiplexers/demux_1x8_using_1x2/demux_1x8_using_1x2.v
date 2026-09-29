`timescale 1ns/1ps

module demux_1x8_using_1x2(i,s2,s1,s0,y);

    input i,s2,s1,s0;
    output [7:0] y;

    wire x0,x1,x2,x3,x4,x5;

    demux_1x2 u1(i,s2,x0,x1);
    demux_1x2 u2(x0,s1,x2,x3);
    demux_1x2 u3(x1,s1,x4,x5);

    demux_1x2 u4(x2,s0,y[0],y[1]);
    demux_1x2 u5(x3,s0,y[2],y[3]);
    demux_1x2 u6(x4,s0,y[4],y[5]);
    demux_1x2 u7(x5,s0,y[6],y[7]);

endmodule

module demux_1x2(i,s,a,b);

    input i,s;
    output a,b;

    assign a = (~s) & i;
    assign b = s & i;

endmodule
