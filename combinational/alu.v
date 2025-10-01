
module alu(
    input [3:0] a,
    input [3:0] b,
    input [1:0] op,
    input alu_enable,
    output reg [3:0] result
);
    always @ (*) begin
        if (alu_enable) begin
            case(op)
                2'd0: result = 4'd0;
                2'd1: result = a + b;
                2'd2: result = a & b;
                2'd3: result = ~a;
            endcase
        end else begin
            result = 4'bz;
        end
    end

endmodule