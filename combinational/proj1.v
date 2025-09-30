
module proj1(
    input [2:0] a,
    output [2:0] f
);
    assign f[0] = (~a[2] & ~a[1]) | (a[2] & a[1]);
    assign f[1] = (~a[1] & ~a[0]) | a[2];
    assign f[2] = (~a[2] & a[1] & a[0]) | (a[2] & ~a[1] & a[0]) | (a[2] & a[1] & ~a[0]);

endmodule