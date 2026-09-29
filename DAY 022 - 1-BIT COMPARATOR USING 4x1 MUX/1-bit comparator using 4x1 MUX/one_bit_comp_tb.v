`timescale 1ns/1ps

module one_bit_comp_tb;

    reg a,b;
    wire lt,gt,eq;

    one_bit_comparator_using_mux4x1 uut (
        .a(a),
        .b(b),
        .lt(lt),
        .gt(gt),
        .eq(eq)
    );

    initial begin
        {a,b} = 2'b00; #10;
        {a,b} = 2'b01; #10;
        {a,b} = 2'b10; #10;
        {a,b} = 2'b11; #10;

        $finish;
    end

    initial begin
        $monitor("a=%b b=%b lt=%b gt=%b eq=%b",a,b,lt,gt,eq);
    end

endmodule
