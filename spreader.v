module spreader(
    input data,
    input signed[3:0] code,
    output signed [3:0] spread_out
    );
    assign spread_out = (data == 1'b1)?
    code : ~code;
endmodule
