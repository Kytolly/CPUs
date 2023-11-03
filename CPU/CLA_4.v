`ifndef CLA_4_V
`define CLA_4_V

module CLA_4(
    input[3:0] X,
    input[3:0] Y,
    input[0:0] Cin,
    output[3:0] S,
    output[0:0] Cout
);

    wire[3:0] P=X|Y;
    wire[3:0] G=X&Y;
    wire[3:0] Gn=~G;

    and i1(P0Gn0,P[0],Gn[0]);
    xor(S[0],P0Gn0,Cin);
    nand(P0Cin0,P[0],Cin);
    nand(Cout0,Gn[0],P0Cin0);

    and(P1Gn1,P[1],Gn[1]);
    xor(S[1],P1Gn1,Cout0);
    nand(P1P0Cin0,P[1],P[0],Cin);
    nand(P1G0,P[1],G[0]);
    nand(Cout1,Gn[1],P1G0,P1P0Cin0);

    and(P2Gn2,P[2],Gn[2]);
    xor(S[2],P2Gn2,Cout1);
    nand(P2P1P0Cin0,P[2],P[1],P[0],Cin);
    nand(P2P1G0,P[2],P[1],G[0]);
    nand(P2G1,P[2],G[1]);
    nand(Cout2,Gn[2],P2G1,P2P1G0,P2P1P0Cin0);

    and(P3Gn3,P[3],Gn[3]);
    xor(S[3],P3Gn3,Cout2);
    nand(P3P2P1P0Cin0,P[3],P[2],P[1],P[0],Cin);
    nand(P3P2P1G0,P[3],P[2],P[1],G[0]);
    nand(P3P2G1,P[3],P[2],G[1]);
    nand(P3G2,P[3],G[2]);
    nand(Cout,Gn[3],P3G2,P3P2G1,P3P2P1G0,P3P2P1P0Cin0);

endmodule

`endif