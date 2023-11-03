`ifndef ENC8T3I_V
`define ENC8T3I_V

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

`endif