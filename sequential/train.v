
module train (
    input a, b,
    input clk, rst,
    output reg x
);
    localparam IDLE = 2'b0;
    localparam ENTER = 2'd1;
    localparam INSIDE = 2'd2;
    localparam EXIT = 2'd3;

    reg [1:0] state;
    reg [1:0] next_state;

    always @ (posedge clk or posedge rst) begin
        if (rst) state <= IDLE;
        else state <= next_state;
    end

    always @ (*) begin
        case(state)
            IDLE: begin
                x = 1'b0;
                case({a,b})
                    2'b00: next_state = IDLE;
                    2'b10: next_state = ENTER;
                    2'b01: next_state = ENTER;
                    2'b11: next_state = IDLE;
                endcase
            end
            ENTER: begin
                x = 1'b1;
                case({a,b})
                    2'b00: next_state = INSIDE;
                    2'b10: next_state = ENTER;
                    2'b01: next_state = ENTER;
                    2'b11: next_state = INSIDE;
                endcase
            end
            INSIDE: begin
                x = 1'b1;
                case({a,b})
                    2'b00: next_state = INSIDE;
                    2'b10: next_state = EXIT;
                    2'b01: next_state = EXIT;
                    2'b11: next_state = INSIDE;
                endcase
            end
            EXIT: begin
                x = 1'b1;
                case({a,b})
                    2'b00: next_state = IDLE;
                    2'b10: next_state = EXIT;
                    2'b01: next_state = EXIT;
                    2'b11: next_state = IDLE;
                endcase
            end

        endcase
    end


endmodule