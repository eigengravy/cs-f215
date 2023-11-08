module r2_counter (
    input clk, rst,
    output reg[1:0] B
);
    always @(negedge clk,posedge rst ) begin
       if (rst || B==2'd2) B <= 2'd0;
       else B <= B + 2'd1 ;
    end  
endmodule