
module clockdiv(
    input clk_in,
    input [23:0] max_count,
    output reg clk_out
);
    
    reg [23:0] count;

    always @ (posedge clk_in) begin
        if (count >= max_count - 1) begin
            clk_out <= ~clk_out;
            count <= 24'b0;
        end else begin
            count <= count + 1'b1;
        end
    end

endmodule