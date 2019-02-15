module fullAdder_tb();
    reg[3:0] inputs; 
    wire a, b, c_in; 
    wire s, c_out;
    
    fullAdder_1b iDUT(a, b, c_in, s, c_out); 
    assign {a, b, c_in} = inputs[2:0]; 
    
    initial begin
        #5 for (inputs = 0; inputs < 8; inputs = inputs + 1) begin
            #5;
        end
    end 

    initial #60 $finish; 
endmodule
