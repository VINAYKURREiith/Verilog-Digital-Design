`timescale 1ns/1ps

module bcd_adder_tb;

    reg [3:0] a,b;
    reg cin;
    wire [7:0] sum;
    wire cout;

    bcd_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        a = 4'b0011; b = 4'b0101; cin = 1'b0; #10;
        a = 4'b0111; b = 4'b0100; cin = 1'b0; #10;
        a = 4'b0100; b = 4'b0011; cin = 1'b1; #10;
        a = 4'b0100; b = 4'b0001; cin = 1'b0; #10;
        a = 4'b1100; b = 4'b0001; cin = 1'b1; #10;
        a = 4'b0100; b = 4'b0111; cin = 1'b1; #10;

        $finish;
    end

endmodule
