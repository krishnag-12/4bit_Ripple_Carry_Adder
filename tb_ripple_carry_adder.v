module tb_ripple_carry_adder;
    reg [3:0]A,B;
    wire [3:0]Sum;
    wire C_out;

    ripple_carry_adder uut(A, B, Sum, C_out);
    
    initial begin
        // Apply input test cases
        A = 4'b1001; B = 4'b0010;
        #10 A = 4'hC; B = 4'hA;
        #20 $finish;
    end
endmodule

