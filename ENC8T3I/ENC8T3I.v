module ENC8T3I(
    input [7:0] I,
    output [2:0] Y,
    output Idle 
);
    function[2:0] enc;
        input[7:0] I;
        if(I[7])      enc=3'b111;
        else if(I[6]) enc=3'b110; 
	    else if(I[5]) enc=3'b101; 
	    else if(I[4]) enc=3'b100; 
	    else if(I[3]) enc=3'b011; 
	    else if(I[2]) enc=3'b010; 
	    else if(I[1]) enc=3'b001; 
	    else enc=3'b000; 
    endfunction

    assign Y=enc(I);
    assign Idle=(I[7:0]==8'h00)?1'b1:1'b0;

endmodule

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

    
    
    //and a1(S1,I[2],In4,In5);
    //and a2(S2,I[3],In4,In5);
    //and a1(S1,I[2],In[4],In[5]);
    //or o2(Y[1],S1,S2,I[6],I[7]);

    assign Y=3'b000;
    assign Idel=1'b0;
endmodule