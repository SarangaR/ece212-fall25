
module debounce(
    input btn,
    input clk,
    output reg btn_db
);
    wire db_clk;
    reg last_btn;

    clockdiv cdiv(.clk_in(clk), .clk_out(db_clk), .max_count(24'd6000));

    always @ (posedge db_clk) begin
        if(btn == last_btn)
            btn_db <= btn;
        last_btn <= btn;
    end

endmodule