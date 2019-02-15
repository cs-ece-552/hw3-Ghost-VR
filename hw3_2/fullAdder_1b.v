/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 2
    
    a 1-bit full adder
    @author Michael Yang
*/
module fullAdder_1b(A, B, C_in, S, C_out);
    input  A, B;
    input  C_in;
    output S;
    output C_out;

    // YOUR CODE HERE
    wire a_xor_b, a_nand_b, c_nand_d;
    xor2 g1(A, B, a_xor_b),
        g2(C_in, a_xor_b, S); 
    nand2 g3(A, B, a_nand_b),
        g4(C_in, a_xor_b, c_nand_d),
        g5(a_nand_b, c_nand_d, C_out); 

endmodule
