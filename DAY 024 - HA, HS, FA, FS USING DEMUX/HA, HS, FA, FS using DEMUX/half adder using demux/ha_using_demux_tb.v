`timescale 1ns/1ps

module ha_using_demux_tb;

    reg a,b;
    wire sum,carry;

    ha_using_1x4_demux uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        {a,b} = 2'b00; #10;
        {a,b} = 2'b01; #10;
        {a,b} = 2'b10; #10;
        {a,b} = 2'b11; #10;

        $finish;
    end

    initial begin
        $monitor("a=%b b=%b sum=%b carry=%b",
                 a,b,sum,carry);
    end

endmodule
