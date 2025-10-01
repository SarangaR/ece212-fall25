`timescale 1ps/1ps

module alu_tb();
    initial begin
        $dumpfile("alu_tb.vcd");
        $dumpvars(0, alu_tb);
    end

    reg [3:0] a;
    reg [3:0] b;
    reg [1:0] op;
    wire [3:0] result;
    reg en;
    alu uut(.a(a), .b(b), .op(op), .result(result), .alu_enable(en));

    initial begin
        $monitor("en: %d, a: %d, b: %d, Res: %d, op: %d", en, a, b, result, op);
        en=1;
        a = 0;
        b = 0;
        op = 1;
        #5
        en=0;
        a = 1;
        b = 1;
        op = 1;
        #5
        a = 1;
        b = 3;
        op = 2;
        #5

        $finish;
    end

endmodule