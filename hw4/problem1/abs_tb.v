`timescale 1ns/100ps
module abs_tb();
    initial begin
        $dumpfile("abs_tb.vcd");
        $dumpvars(0, abs_tb);
    end

    reg signed [3:0] value_in;
    wire signed [3:0] value_out;

    abs uut(.in(value_in), .out(value_out));

    initial begin
        $monitor("Input: %d\tOutput: %d", value_in, value_out);
        value_in = 4'd3;
        #5
        value_in = -4'd4;
        #5
        value_in = 4'd1;
        #5
        value_in = -4'd6;
        #5
        $finish;
    end

endmodule