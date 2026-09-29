module fa_using_decoder(a,b,c,sum,carry);

    input a,b,c;
    output sum,carry;
    wire [7:0] w;

    decoder u1(a,b,c,w);

    assign sum   = w[1] | w[2] | w[4] | w[7];
    assign carry = w[3] | w[5] | w[6] | w[7];

endmodule

module decoder(a,b,c,y);

    input a,b,c;
    output reg [7:0] y;

    always @(*) begin
        y = 8'b0000_0000;

        case ({a,b,c})
            3'b000: y = 8'b0000_0001;
            3'b001: y = 8'b0000_0010;
            3'b010: y = 8'b0000_0100;
            3'b011: y = 8'b0000_1000;
            3'b100: y = 8'b0001_0000;
            3'b101: y = 8'b0010_0000;
            3'b110: y = 8'b0100_0000;
            3'b111: y = 8'b1000_0000;
            default: y = 8'b0000_0000;
        endcase
    end

endmodule
