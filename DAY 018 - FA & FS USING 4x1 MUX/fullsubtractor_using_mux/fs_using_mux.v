`timescale 1ns/1ps

module fs_using_mux(a,b,bin,diff,borrow);

    input a,b,bin;
    output diff,borrow;

    wire nbin;

    not g1(nbin,bin);

    mux_4x1 u1(bin,nbin,nbin,bin,b,a,diff);
    mux_4x1 u2(bin,1'b1,1'b0,bin,b,a,borrow);

endmodule

module mux_4x1(a,b,c,d,s0,s1,y);

    input a,b,c,d;
    input s0,s1;
    output y;

    assign y = (~s1 & ~s0 & a) |
               (~s1 &  s0 & b) |
               ( s1 & ~s0 & c) |
               ( s1 &  s0 & d);

endmodule
