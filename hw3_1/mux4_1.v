/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    4-1 mux template
    @author Michael Yang
*/
module mux4_1(InA, InB, InC, InD, S, Out);
    input        InA, InB, InC, InD;
    input [1:0]  S;
    output       Out;

    // YOUR CODE HERE
    wire sel_a_b, sel_c_d; 
    mux2_1 mux_a_b (InA, InB, S[0], sel_a_b),
        mux_c_d (InC, InD, S[0], sel_c_d), 
        nux_ab_cd (sel_a_b, sel_c_d, S[1], Out);

endmodule
