module correlator(
    input [4:0] received,
    input [3:0] code,
    output  reg data_out
    );
    integer i;
reg signed [6:0] score;

always @(*) begin
    score = 0;

    for(i=0; i<4; i=i+1) begin
        if(received[i] == code[i])
            score = score + 1;
        else
            score = score - 1;
    end

    if(score > 0)
        data_out = 1'b1;
    else
        data_out = 1'b0;
end
endmodule
