module sr_nand_latch (input S, input R, output reg Q);
    always @(S, R) 
        if (!(S || R)) Q <= 1'bx;
        else if(!(S && R)) Q <= R;
endmodule
