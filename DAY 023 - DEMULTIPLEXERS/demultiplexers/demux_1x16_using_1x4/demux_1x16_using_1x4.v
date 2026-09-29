`timescale 1ns/1ps

module demux_1x16_using_1x4(i,s3,s2,s1,s0,y);

    input i,s3,s2,s1,s0;
    output [15:0] y;

    wire x0,x1,x2,x3;

    demux_1x4 u1(i,s3,s2,x3,x2,x1,x0);

    demux_1x4 u2(x0,s1,s0,y[3],y[2],y[1],y[0]);
    demux_1x4 u3(x1,s1,s0,y[7],y[6],y[5],y[4]);
    demux_1x4 u4(x2,s1,s0,y[11],y[10],y[9],y[8]);
    demux_1x4 u5(x3,s1,s0,y[15],y[14],y[13],y[12]);

endmodule

module demux_1x4(i,s1,s0,a,b,c,d);

    input i,s1,s0;
    output reg a,b,c,d;

    always @(*) begin
        {a,b,c,d} = 4'b0000;

        case ({s1,s0})
            2'b00: a = i;
            2'b01: b = i;
            2'b10: c = i;
            2'b11: d = i;
            default: {a,b,c,d} = 4'b0000;
        endcase
    end

endmodule
