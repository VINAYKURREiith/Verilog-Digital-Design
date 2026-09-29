`timescale 1ns/1ps

module tb_four_bit_adder;

    reg [3:0] x, y;
    reg cin;
    wire [3:0] s;
    wire cout;

    integer p, q;

    four_bit_adder DUT (
        .x(x),
        .y(y),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    initial begin
        cin = 1'b0;

        for (p = 0; p < 16; p = p + 1) begin
            x = p;
            for (q = 0; q < 16; q = q + 1) begin
                y = q;
                #10;
            end
        end

        $finish;
    end

endmodule
