`timescale 1ns/1ps

module fs_using_1x8demux(a,b,bin,diff,borrow);

    input a,b,bin;
    output diff,borrow;

    wire [7:0] y;

    demux_1x8 u1(1'b1,a,b,bin,y);

    or u2(diff,y[1],y[2],y[4],y[7]);
    or u3(borrow,y[1],y[2],y[3],y[7]);

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
