`timescale 1ns/1ps

module mux_Kx1_tb#(parameter K = 64);

    reg [K-1:0] i;
    reg [5:0] s;
    wire y;
    integer j;

    mux_Kx1 uut (
        .i(i),
        .s(s),
        .y(y)
    );

    initial begin
        for (j = 0; j < K; j = j + 1) begin
            i = $random;
            s = $random;
            #10;
        end

        $finish;
    end

    initial begin
        $monitor("i=%b s=%d y=%d",i,s,y);
    end

endmodule
