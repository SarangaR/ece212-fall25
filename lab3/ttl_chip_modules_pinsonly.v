
module sn7474_DFF_pins(
    input p01,
    input p02,
    input p03,
    input p04,
    output reg p05,
    output reg p06,
    output reg p08,
    output reg p09,
    input p10,
    input p11,
    input p12,
    input p13
);
    always @ (posedge p03 or negedge p01 or negedge p04) begin
        if(!p01) begin
            p05 <= 0;
            p06 <= 1;
        end else if (!p04) begin
            p05 <= 1;
            p06 <= 0;
        end else begin
            p05 <= p02;
            p06 <= ~p02;
        end 
    end

    always @ (posedge p11 or negedge p13 or negedge p10) begin
        if(!p13) begin
            p09 <= 0;
            p08 <= 1;
        end else if (!p10) begin
            p09 <= 1;
            p08 <= 0;
        end else begin
            p09 <= p12;
            p08 <= ~p12;
        end 
    end
endmodule

module sn7408_AND_pins(
    input p01,
    input p02,
    output p03,
    input p04,
    input p05,
    output p06,
    output p08,
    input p09,
    input p10,
    output p11,
    input p12,
    input p13
);
    assign p03 = p01 & p02;
    assign p06 = p04 & p05;
    assign p08 = p09 & p10;
    assign p11 = p12 & p13;
endmodule

module sn7432_OR_pins(
    input p01,
    input p02,
    output p03,
    input p04,
    input p05,
    output p06,
    output p08,
    input p09,
    input p10,
    output p11,
    input p12,
    input p13
);
    assign p03 = p01 | p02;
    assign p06 = p04 | p05;
    assign p08 = p09 | p10;
    assign p11 = p12 | p13;
endmodule

module sn74153_MUX_pins(
    
);

endmodule

module sn7404_NOT_pins(
    input p01,
    output p02,
    input p03,
    output p04,
    input p05,
    output p06,
    output p08,
    input p09,
    output p10,
    input p11,
    output p12,
    input p13
);
    assign p02 = ~p01;
    assign p04 = ~p03;
    assign p06 = ~p05;
    assign p08 = ~p09;
    assign p10 = ~p11;
    assign p12 = ~p13;
endmodule

module sn7410_NAND_pins(
    input p01,
    input p02,
    input p03,
    input p04,
    input p05,
    output p06,
    output p08,
    input p09,
    input p10,
    input p11,
    output p12,
    input p13
);
    assign p12 = ~(p01 & p02 & p13);
    assign p06 = ~(p03 & p04 & p05);
    assign p08 = ~(p09 & p10 & p11);
endmodule

module sn7486_XOR_pins(
    input p01,
    input p02,
    output p03,
    input p04,
    input p05,
    output p06,
    output p08,
    input p09,
    input p10,
    output p11,
    input p12,
    input p13
);
    assign p03 = p01 ^ p02;
    assign p06 = p04 ^ p05;
    assign p08 = p09 ^ p10;
    assign p11 = p12 ^ p13;
endmodule