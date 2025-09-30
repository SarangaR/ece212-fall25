
module lec8(
    input btn1,
    input btn2,
    output led1
);

    assign led1 = ~(btn1 & btn2);

endmodule