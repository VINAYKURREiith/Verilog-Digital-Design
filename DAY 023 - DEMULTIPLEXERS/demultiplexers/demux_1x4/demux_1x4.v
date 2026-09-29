`timescale 1ns/1ps

module demux_1x4(i,s0,s1,y);

    input i,s0,s1;
    output reg [3:0] y;

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
