
module main(
    input [7:0] sw,
    input [3:0] btn,
    input clk_12m,
    output [6:0] led,
    output reg red, green, blue
);
    wire clk;
    reg [3:0] count;
    wire [3:0] btn_db;

    //clockdiv cdiv(.clk_in(clk_12m), .clk_out(clk), .max_count(24'd6000000));
    debounce btn0_db(.btn(btn[0]), .btn_db(btn_db[0]), .clk(clk_12m));
    debounce btn1_db(.btn(btn[1]), .btn_db(btn_db[1]), .clk(clk_12m));
    debounce btn2_db(.btn(btn[2]), .btn_db(btn_db[2]), .clk(clk_12m));
    debounce btn3_db(.btn(btn[3]), .btn_db(btn_db[3]), .clk(clk_12m));

    always @ (posedge btn_db[0]) begin
        count <= count + 1;
    end

    seven_seg u1(.bcd(count), .segs(led));
endmodule