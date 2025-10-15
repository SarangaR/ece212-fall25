
module main(
    input [7:0] sw,
    input [3:0] btn,
    input clk_12m,
    output [6:0] led,
    output reg red, green, blue
);
    reg [31:0] clk;
    reg [3:0] count;
    always @ (posedge clk_12m) begin
        clk <= clk + 1;
    end

    always @ (posedge clk[22] or posedge btn[0]) begin
        if(btn[0]) count = 4'b0;
        else count <= count + 1;
    end

    seven_seg u1(.bcd(count), .segs(led));
endmodule