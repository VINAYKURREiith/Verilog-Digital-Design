`timescale 1ns/1ps

module ha_using_1x4_demux(a,b,sum,carry);

    input a,b;
    output sum,carry;

    wire [3:0] y;

    demux_1x4 u1(1'b1,a,b,y);

    or u2(sum,y[1],y[2]);
    assign carry = y[3];

endmodule

module demux_1x4(
    input i,s1,s0,
    output reg [3:0] y
);

    always @(*) begin
        y = 4'b0000;

        case ({s1,s0})
            2'b00: y[0] = i;
            2'b01: y[1] = i;
            2'b10: y[2] = i;
            2'b11: y[3] = i;
            default: y = 4'b0000;
        endcase
    end

endmodule
