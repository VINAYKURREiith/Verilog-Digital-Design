`timescale 1ns/1ps

module fa_tb;

    reg a,b,cin;
    wire sum,cout;

    fa_using_mux uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        {a,b,cin} = 3'b000; #10;
        {a,b,cin} = 3'b001; #10;
        {a,b,cin} = 3'b010; #10;
        {a,b,cin} = 3'b011; #10;
        {a,b,cin} = 3'b100; #10;
        {a,b,cin} = 3'b101; #10;
        {a,b,cin} = 3'b110; #10;
        {a,b,cin} = 3'b111; #10;

        $finish;
    end

endmodule
