`timescale 1us/1ns //This sets the timescale and time resolution
//The first number means that writing #1 will wait 1 microsecond.
//The second number is the granularity of the simulation, so the
//minimum time step is #.001, which would be 1 nanosecond.

module gates_tb;
    //This is needed to save the waveform to view in GTKWave
    //This may be unnecessary if using different synthesis/simulation software.
    initial begin
        //Filename must be the same as the testbench file, but with the .vcd extension
        //This is just what apio expects, and is not a requirement set by verilog.
        $dumpfile("example_tb.vcd");
        //This tells the simulator to save all the variables within the gates_tb module
        //and all submodules to the dumpfile.
        //Changing the 0 to a 1 hides variables in submodules.
        //and_dut and or_dut are submodules of gates_tb.
        $dumpvars(0, gates_tb);
    end

    //This is the start of the actual testbench
    //Inputs to modules
    reg in1;
    reg in2;
    //Outputs from modules
    wire out_and;
    wire out_or;

    //Instantiate an and_gate module named and_dut
    and_gate and_dut(in1,in2,out_and);
    //Instantiate an or_gate module named or_dut
    or_gate or_dut(in1,in2,out_or);

    initial begin
        //$display prints messages
        $display("Starting simulation.");
        $display("Doug Townsend dktownse@ncsu.edu");
        //$monitor will print any time any of the variable arguments change.
        $monitor("time=%0d\tin1=%b\tin2=%b\tout_and=%b\tout_or=%b", $time, in1, in2, out_and, out_or);
        //Set the inputs
        in1=0;
        in2=0;
        //Wait 5 microseconds
        #5
        in1=0;
        in2=1;
        #5
        in1=1;
        in2=0;
        #5
        in1=1;
        in2=1;
        #5
        $display("Simulation complete.");
        //End the simulation.
        $finish;
    end
endmodule