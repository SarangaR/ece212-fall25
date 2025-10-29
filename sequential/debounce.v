
module debounce(
    input btn,
    input clk,
    output reg btn_db
);
    reg last_btn;

    always @ (posedge clk) begin
        if(btn == last_btn)
            btn_db <= btn;
        last_btn <= btn;
    end

endmodule