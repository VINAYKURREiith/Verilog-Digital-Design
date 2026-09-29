`timescale 1ns/1ps

module mux_Kx1#(parameter K = 64)(
    input [K-1:0] i,
    input [5:0] s,
    output reg y
);

    integer j;

    always @(*) begin
        y = 1'b0;
        for (j = 0; j < K; j = j + 1) begin
            if (s == j)
                y = i[j];
        end
    end

endmodule
