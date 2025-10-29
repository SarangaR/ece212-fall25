
module lab1_tb();
    initial begin
        $dumpfile("ttl_example_tb.vcd");
        $dumpvars(0, lab1_tb);
    end

    reg [2:0] dio;
    wire [2:0] f;

    lab1 uut(.dio(dio), .f(f));

    initial begin
        dio = 3'd0;
        #5
        dio = 3'd1;
        #5
        dio = 3'd2;
        #5
        dio = 3'd3;
        #5
        dio = 3'd4;
        #5
        dio = 3'd5;
        #5
        dio = 3'd6;
        #5
        dio = 3'd7;
        #5
        $finish;
    end

endmodule