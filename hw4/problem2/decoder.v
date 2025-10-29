
module decoder(
    input [1:0] in,
    output reg [3:0] out
);
    //Your code here
    always @ (*) begin
        case(in)
            2'd0: out = 4'b0001;
            2'd1: out = 4'b0010;
            2'd2: out = 4'b0100;
            2'd3: out = 4'b1000;
        endcase
    end

endmodule