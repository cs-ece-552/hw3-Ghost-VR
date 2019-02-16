/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 2
    
    a 16-bit RCA module
*/
module rca_16b(A, B, C_in, S, C_out);

    // declare constant for size of inputs, outputs (N)
    parameter   N = 16;

    input [N-1: 0] A, B;
    input          C_in;
    output [N-1:0] S;
    output         C_out;

    // YOUR CODE HERE
    wire[3:0] carry;
    rca_4b 
        a0(A[3:0], B[3:0], C_in, S[3:0], carry[0]),
        a1(A[7:4], B[7:4], carry[0], S[7:4], carry[1]),
        a2(A[11:8], B[11:8], carry[1], S[11:8], carry[2]),
        a3(A[15:12], B[15:12], carry[2], S[15:12], C_out);

endmodule
