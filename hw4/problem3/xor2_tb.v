`timescale 1ns/100ps
module xor2_tb();
    //Your code here
    reg a, b;
    wire f;
    xor2 uut(.a(a), .b(b), .f(f));

    initial begin
        $dumpfile("xor2_tb.vcd");
        $dumpvars(0, xor2_tb);
        a = 0;
        b = 0;
        #5
        a = 0;
        b = 1;
        #5
        a = 1;
        b = 0;
        #5
        a = 1;
        b = 1;
        #5
        $finish;
    end
endmodule