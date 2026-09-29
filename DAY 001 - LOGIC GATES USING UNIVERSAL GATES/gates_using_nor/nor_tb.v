`timescale 1ns/1ps

module tb_nor_network;

    reg p, q;
    wire out;

    nor_network DUT (
        .p(p),
        .q(q),
        .out(out)
    );

    initial begin
        {p,q} = 2'b00; #10;
        {p,q} = 2'b01; #10;
        {p,q} = 2'b10; #10;
        {p,q} = 2'b11; #10;
        $finish;
    end

endmodule
