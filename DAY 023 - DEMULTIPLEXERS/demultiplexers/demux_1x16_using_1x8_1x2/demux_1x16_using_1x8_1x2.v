`timescale 1ns/1ps

module demux_1x16_using_1x8_1x2(i,s3,s2,s1,s0,y);

    input i,s3,s2,s1,s0;
    output [15:0] y;

    wire x0,x1;

    demux_1x2 u1(i,s3,x0,x1);
    demux_1x8 u2(x0,s2,s1,s0,y[7:0]);
    demux_1x8 u3(x1,s2,s1,s0,y[15:8]);

endmodule

module demux_1x2(i,s,a,b);

    input i,s;
    output a,b;

    assign a = (~s) & i;
    assign b = s & i;

endmodule

module demux_1x8(
    input i,s2,s1,s0,
    output reg [7:0] y
);

    always @(*) begin
        y = 8'b0000_0000;

        case ({s2,s1,s0})
            3'b000: y[0] = i;
            3'b001: y[1] = i;
            3'b010: y[2] = i;
            3'b011: y[3] = i;
            3'b100: y[4] = i;
            3'b101: y[5] = i;
            3'b110: y[6] = i;
            3'b111: y[7] = i;
            default: y = 8'b0000_0000;
        endcase
    end

endmodule
