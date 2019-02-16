/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 2
    
    a 4-bit RCA module
*/
module rca_4b(A, B, C_in, S, C_out);

    // declare constant for size of inputs, outputs (N)
    parameter   N = 4;

    input [N-1: 0] A, B;
    input          C_in;
    output [N-1:0] S;
    output         C_out;

    // YOUR CODE HERE
    wire[2:0] carry; 
    fullAdder_1b 
        fa0(A[0], B[0], C_in, S[0], carry[0]),
        fa1(A[1], B[1], carry[0], S[1], carry[1]),
        fa2(A[2], B[2], carry[1], S[2], carry[2]),
        fa3(A[3], B[3], carry[2], S[3], C_out);


endmodule
