module counter (
    input clk,
    input rst,
    output reg[2:0] state,
    output reg R,Y,G
);
always @(negedge clk, posedge rst) begin
    if (rst || state == 3'd5 || state == 3'd6 || state == 3'd7) state <= 3'd0;
    else state <= state + 3'd1; 
    R<=!(state[2] || state[1]);
    Y<=!(state[2])&&state[1];
    G<=state[2]&&!(state[1]);
end
    
endmodule