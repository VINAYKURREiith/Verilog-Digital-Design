`timescale 1ns/1ps

module tb_carry_lookahead;

    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    carry_lookahead DUT (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        {a,b,cin} = 9'b101000010; #10;
        {a,b,cin} = 9'b001001011; #10;
        {a,b,cin} = 9'b111000111; #10;
        {a,b,cin} = 9'b100000111; #10;
        {a,b,cin} = 9'b001001010; #10;
        {a,b,cin} = 9'b110001011; #10;
        {a,b,cin} = 9'b101010010; #10;
        {a,b,cin} = 9'b101000111; #10;
        {a,b,cin} = 9'b101001001; #10;
        {a,b,cin} = 9'b101010111; #10;
        $finish;
    end

endmodule
