module adder_subtractor (
    input [31:0] a,
    input [31:0] b,
    input sub,                  // sub = 1: subtraction; sub = 0: addition
    output [31:0] result,
    output cout
);
    wire [31:0] b_xor = b ^ {32{sub}};
    assign {cout, result} = a + b_xor + sub;
endmodule
