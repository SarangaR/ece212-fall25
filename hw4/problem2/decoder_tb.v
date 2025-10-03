`timescale 1ns/100ps
module decoder_tb();
    initial begin
        $dumpfile("decoder_tb.vcd");
        $dumpvars(0, decoder_tb);
    end

    reg [1:0] value_in;
    wire [3:0] value_out;

    decoder uut(.in(value_in), .out(value_out));

    initial begin
        $monitor("Input: %d\tOutput: %b", value_in, value_out);
        value_in = 2'd0;
        #5
        value_in = 2'd1;
        #5
        value_in = 2'd2;
        #5
        value_in = 2'd3;
        #5
        $finish;
    end

endmodule