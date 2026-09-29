`timescale 1ns/1ps

module tb_full_adder;

    reg x, y, cin;
    wire s, cout;

    full_adder DUT (
        .x(x),
        .y(y),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    initial begin
        {x,y,cin} = 3'b000; #10;
        {x,y,cin} = 3'b001; #10;
        {x,y,cin} = 3'b010; #10;
        {x,y,cin} = 3'b011; #10;
        {x,y,cin} = 3'b100; #10;
        {x,y,cin} = 3'b101; #10;
        {x,y,cin} = 3'b110; #10;
        {x,y,cin} = 3'b111; #10;
        $finish;
    end

endmodule
