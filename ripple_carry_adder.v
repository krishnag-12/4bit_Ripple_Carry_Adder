module full_adder (
    input a, b, c_in, // Define input ports a, b and c_in
    output sum , c_out // Define output ports sum and c_out
);

assign sum = a ^ b ^ c_in; // Define Sum logic
assign c_out = ((a & b) | (c_in & (a ^ b))); // Define Carry_out logic

endmodule

module ripple_carry_adder(
    input [3:0]A,B,
    output [3:0]Sum,
    output C_out
);
    wire [3:0]C; // Intermediate carry wires
    assign C[0] = 1'b0; // Initial carry input is 0

    // Instantiate full adders for each bit
    full_adder f1(A[0], B[0], C[0], Sum[0], C[1]);
    full_adder f2(A[1], B[1], C[1], Sum[1], C[2]);
    full_adder f3(A[2], B[2], C[2], Sum[2], C[3]);
    full_adder f4(A[3], B[3], C[3], Sum[3], C_out);

endmodule
