`timescale 1ns/1ps

module carry_skip_adder_tb;

    reg [3:0] a,b;
    reg c0;
    wire [3:0] s;
    wire cout;

    carry_skip_adder uut (
        .a(a),
        .b(b),
        .c0(c0),
        .s(s),
        .cout(cout)
    );

    initial begin
        a = 4'b1010; b = 4'b0111; c0 = 1'b1; #10;
        a = 4'b1010; b = 4'b1111; c0 = 1'b1; #10;
        a = 4'b1110; b = 4'b0111; c0 = 1'b0; #10;
        a = 4'b1010; b = 4'b0001; c0 = 1'b1; #10;

        $finish;
    end

    initial begin
        $monitor("a=%d b=%d c0=%b s=%d cout=%b",a,b,c0,s,cout);
    end

endmodule
