`include "SR_Latch.v"
module t_SR();
    wire t_Q,t_nQ; //outputs
    reg en,S,R;    //inputs

    // write your code here
    SR sr(S, R, en, t_Q, t_nQ);
    initial begin
        S=1'b1; R=1'b0; en=1'b1;
        #10 S=1'b0; R=1'b0; en=1'b1;
        #10 S=1'bx; R=1'bx; en=1'b0;
        #10 S=1'b0; R=1'b1; en=1'b1;
        #10 S=1'b0; R=1'b0; en=1'b1;
        #10 S=1'bx; R=1'bx; en=1'b0;
        #10 S=1'b1; R=1'b1; en=1'b1;
        #10 S=1'b1; R=1'b0; en=1'b1;
        #10 $finish;    
    end
    initial begin
        $monitor("time : %0d S : %d R : %d en : %d Q : %d Q' : %d",$time,S,R,en,t_Q,t_nQ);
    end
endmodule

// S R EN
// 1 0 1
// 0 0 1
// x x 0
// 0 1 1
// 0 0 1
// x x 0
// 1 1 1