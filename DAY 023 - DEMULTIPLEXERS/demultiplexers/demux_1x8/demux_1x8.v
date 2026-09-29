`timescale 1ns/1ps

module demux_1x8(i,s0,s1,s2,y);

    input i;
    input s0,s1,s2;
    output reg [7:0] y;

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
