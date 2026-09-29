`timescale 1ns/1ps

module demux_1x8(i,s0,s1,s2,y);

    input i,s0,s1,s2;
    output [7:0] y;

    wire x0,x1;

    demux_1x2 u1(i,s2,x0,x1);
    demux_1x4 u2(x0,s1,s0,y[3],y[2],y[1],y[0]);
    demux_1x4 u3(x1,s1,s0,y[7],y[6],y[5],y[4]);

endmodule

module demux_1x2(i,s,a,b);

    input i,s;
    output a,b;

    assign a = (~s) & i;
    assign b = s & i;

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
