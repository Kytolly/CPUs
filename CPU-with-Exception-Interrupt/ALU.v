`include "ADDSUB_32.v"
`include "MUX2X32.v"

`ifndef ALU_V
`define ALU_V
module ALU(
    input [31:0]X,
    input [31:0]Y,
    input [1:0]Aluc,
    output [31:0]R,
    output Z
    //,output V
);
    wire[31:0] d_as, d_and, d_or, d_and_or;
    wire Over;
    ADDSUB_32 as32(X, Y, Aluc[0], d_as,Over);

    assign d_and = X&Y;
    assign d_or = X|Y;

    MUX2X32 select1(d_and, d_or, Aluc[0], d_and_or);
    MUX2X32 select2(d_as, d_and_or, Aluc[1], R);

    assign Z = ~|R;
    // assign V = (~Aluc[1]&~Aluc[0]&~X[31]&~Y[31]&R[31])|
    //             (~Aluc[0]&~Aluc[1]&X[31]&Y[31]&~R[31])|
    //             (~Aluc[1]&Aluc[0]&~X[31]&Y[31]&R[31])|
    //             (~Aluc[1]&Aluc[0]&X[31]&~Y[31]&~R[31]);
    
endmodule

`endif