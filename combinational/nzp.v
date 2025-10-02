
module nzp (
    input signed [3:0] bus,
    output reg n, z, p
);

    always @ (*) begin
        if(bus == 0) begin
            z = 1;
            n = 0;
            p = 0;
        end else 
        if
        (bus > 0) 
        begin
            z = 0;
            n = 0;
            p = 1;
        end else begin
            z = 0;
            n = 1;
            p = 0;
        end
    end

endmodule