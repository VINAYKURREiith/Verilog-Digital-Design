`timescale 1ns/1ps

module bcd_adder(a,b,cin,sum,cout);

    input [3:0] a,b;
    input cin;
    output reg [7:0] sum;
    output reg cout;

    reg [7:0] value;

    always @(*) begin
        value = a + b + cin;

        if (value >= 10) begin
            value = value + 8'd6;
            cout = 1'b1;
        end
        else begin
            cout = 1'b0;
        end

        sum = value;
    end

endmodule
