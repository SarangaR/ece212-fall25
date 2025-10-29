`timescale 1ns/1ns

module train_tb();
    reg clk, rst;
    reg a, b;
    wire x;

    train uut(.a(a), .b(b), .x(x), .clk(clk), .rst(rst));

    initial begin
        rst = 0;
        clk = 0;
        a = 0;
        b = 0;
        $dumpfile("train_tb.vcd");
        $dumpvars(0, train_tb);
    end

    always begin
        #5
        clk = ~clk;
    end

    initial begin
        #2
        rst = 1;
        #5
        rst = 0;
        #5
        //Short train
        a = 1;
        #10
        a = 0;
        #40
        b = 1;
        #10
        b = 0;
        #10
        //Long train
        a = 1;
        #30
        b = 1;
        #30
        a = 0;
        #30
        b = 0;
        #10
        $finish;
    end

endmodule