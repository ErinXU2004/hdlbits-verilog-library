//An if statement usually creates a 2-to-1 multiplexer, selecting one input if the condition is true, and the other input if the condition is false.

always @(*) begin
    if (condition) begin
        out = x;
    end
    else begin
        out = y;
    end
end
//This is equivalent to using a continuous assignment with a conditional operator:

assign out = (condition) ? x : y;
