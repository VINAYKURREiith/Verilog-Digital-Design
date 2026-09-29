`timescale 1ns/1ps

module tb_carry_select_adder;

    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    carry_select_adder_v2 DUT (
        .x(a),
        .y(b),
        .cin(cin),
        .result(sum),
        .carry_out(cout)
    );

    initial begin
        {a,b,cin} = 9'b101001010; #10;
        {a,b,cin} = 9'b011011001; #10;
        {a,b,cin} = 9'b101100101; #10;
        {a,b,cin} = 9'b010001100; #10;
        $finish;
    end

endmodule
