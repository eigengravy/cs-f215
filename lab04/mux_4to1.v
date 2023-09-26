module mux_4to1(input [3:0]in,input [1:0] select,output out);
    wire w1a, w1b, w2a, w2b, w3a, w3b, w4a, w4b, w5, w6;
    
    and a1a(w1a, (!select[1]), (!select[0]));
    and a1b(w1b, w1a, in[0]);

    and a2a(w2a, (!select[1]), (select[0]));
    and a2b(w2b, w2a, in[1]);

    and a3a(w3a, (select[1]), (!select[0]));
    and a3b(w3b, w3a, in[2]);

    and a4a(w4a, (select[1]), (select[0]));
    and a4b(w4b, w4a, in[3]);

    or o1(w5, w1b, w2b);
    or o2(w6, w3b, w4b);

    or o3(out, w5, w6);
endmodule