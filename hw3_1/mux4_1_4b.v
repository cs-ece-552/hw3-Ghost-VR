/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    a 4-bit (quad) 4-1 Mux template
    @author Michael Yang
*/
module mux4_1_4b(InA, InB, InC, InD, S, Out);

    // parameter N for length of inputs and outputs (to use with larger inputs/outputs)
    parameter N = 4;

    input [N-1:0]   InA, InB, InC, InD;
    input [1:0]     S;
    output [N-1:0]  Out;

    // YOUR CODE HERE
    mux4_1 b0 (InA[0], InB[0], InC[0], InD[0], S, Out[0]),
        b1 (InA[1], InB[1], InC[1], InD[1], S, Out[1]),
        b2 (InA[2], InB[2], InC[2], InD[2], S, Out[2]),
        b3 (InA[3], InB[3], InC[3], InD[3], S, Out[3]);

endmodule
