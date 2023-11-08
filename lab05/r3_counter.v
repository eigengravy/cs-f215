module r3_counter (
    input clk, rst,
    output reg C
);
    always @(negedge clk, posedge rst ) begin
       if (rst) C <= 1'd0;
       else C <= !(C) ;
    end  
endmodule