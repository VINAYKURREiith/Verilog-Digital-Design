`timescale 1ns/1ps

module decoder_38_tb;

    reg [2:0] s;
    wire [7:0] d;
    integer j;

    decoder_38 uut (
        .s(s),
        .d(d)
    );

    initial begin
        s = 3'b000;

        for (j = 0; j < 8; j = j + 1) begin
            s = j;
            #10;
        end

        $finish;
    end

    initial begin
        $monitor("s=%b d=%b",s,d);
    end

endmodule
