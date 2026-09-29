`timescale 1ns/1ps

module gates_using_2x1_mux(
    input a,
    input b,
    output y1,y2,y3,y4,y5,y6,y7
);

    mux2x1 g1(1'b1,1'b0,a,y1);
    mux2x1 g2(1'b0,b,a,y2);
    mux2x1 g3(b,1'b1,a,y3);
    mux2x1 g4(1'b1,~b,a,y4);
    mux2x1 g5(~b,1'b0,a,y5);
    mux2x1 g6(b,~b,a,y6);
    mux2x1 g7(~b,b,a,y7);

endmodule

module mux2x1(a,b,s,y);

    input a,b,s;
    output y;

    assign y = (~s & a) | (s & b);

endmodule
