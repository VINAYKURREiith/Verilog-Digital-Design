module fa_using_decoder_tb;

    reg a,b,c;
    wire sum,carry;
    integer i;

    fa_using_decoder uut(a,b,c,sum,carry);

    initial begin
        for (i = 0; i < 8; i = i + 1) begin
            {a,b,c} = i;
            #10;
        end

        $finish;
    end

    initial begin
        $monitor("a=%b b=%b c=%b sum=%b carry=%b",
                 a,b,c,sum,carry);
    end

endmodule
