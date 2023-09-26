module mux_2to1(input [1:0]in,input select,output out);
    wire w1, w2;
    
    and a1(w1, in[0], (!select));
    and a2(w2, in[1], select);
    
    or o1(out, w1, w2);
endmodule