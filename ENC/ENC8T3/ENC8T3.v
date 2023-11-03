`ifndef ENC8T3_V
`define ENC8T3_V

module ENC8T3(
    input[7:0] I,
    output[2:0] Y,
    output Idle
);
    //not nt1(IN,I);
    not n0(In0,I[0]);
    not n1(In1,I[1]);
    not n2(In2,I[2]);
    not n3(In3,I[3]);
    not n4(In4,I[4]);
    not n5(In5,I[5]);
    not n6(In6,I[6]);
    not n7(In7,I[7]);

    or o1(Y[2],I[4],I[5],I[6],I[7]);

    and a1(S1,I[2],In4,In5);
    and a2(S2,I[3],In4,In5);
    or o2(Y[1],S1,S2,I[6],I[7]);

    and a3(S4,I[1],In2,In4,In6);
    and a4(S5,I[3],In4,In6);
    and a5(S6,I[5],In6);
    or o3(Y[0],S4,S5,S6,I[7]);

    and a6(Idle,In0,In1,In2,In3,In4,In5,In6,In7);

endmodule

`endif

