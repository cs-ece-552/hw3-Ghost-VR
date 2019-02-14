/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    2-1 mux template
    @author Michael Yang
*/
module mux2_1(InA, InB, S, Out);
    input   InA, InB;
    input   S;
    output  Out;

    // YOUR CODE HERE
    wire s_n, a_sel, b_sel; 
    nand2 n1 (S, S, s_n),
        n2 (InA, s_n, a_sel),
        n3 (InB, S, b_sel),
        n4 (a_sel, b_sel, Out);

endmodule
