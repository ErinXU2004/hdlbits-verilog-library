// carry-select adder (4-bit example)
module carry_select_adder_4bit (
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout
);
    wire [3:0] sum0, sum1;
    wire cout0, cout1;

    // assume carry-in = 0
    ripple_adder_4bit adder0 (.a(a), .b(b), .cin(1'b0), .sum(sum0), .cout(cout0));
    // assume carry-in = 1
    ripple_adder_4bit adder1 (.a(a), .b(b), .cin(1'b1), .sum(sum1), .cout(cout1));

    assign sum  = cin ? sum1  : sum0;
    assign cout = cin ? cout1 : cout0;
endmodule

