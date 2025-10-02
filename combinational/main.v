
module main(
    input [7:0] sw,
    input [3:0] btn,
    output [6:0] led,
    output red, green, blue
);
    /*
    wire [2:0] seg;
    assign led[0] = seg[0];
    assign led[3] = seg[2];
    assign led[6] = seg[1];
    proj1 u1(.a(btn[2:0]), .f(seg));
    */
    wire [3:0] result;
    seven_seg u1(.bcd(result), .segs(led));
    alu u2(.a(sw[7:4]), .b(sw[3:0]), .op(btn[1:0]), .result(result));
    nzp u3(.bus(result), .n(blue), .z(green), .p(red));
endmodule