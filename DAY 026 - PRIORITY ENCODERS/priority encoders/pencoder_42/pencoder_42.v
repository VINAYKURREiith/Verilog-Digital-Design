`timescale 1ns/1ps

module pencoder_42(i,y);

    input [3:0] i;
    output reg [1:0] y;

    always @(*) begin
        if (i[3] == 1'b1)
            y = 2'b11;
        else if (i[2] == 1'b1)
            y = 2'b10;
        else if (i[1] == 1'b1)
            y = 2'b01;
        else if (i[0] == 1'b1)
            y = 2'b00;
        else
            y = 2'bxx;
    end

endmodule
