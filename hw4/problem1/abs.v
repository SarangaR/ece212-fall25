module abs(
    input signed [3:0] in,
    output reg signed [3:0] out
);
    //Your code here
    always @ (*) begin
        if (in < 0) out = -in;
        else out = in;
    end

endmodule