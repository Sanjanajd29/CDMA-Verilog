module adder(
    input  signed [3:0] user1,
    input signed [3:0] user2,
    output signed [4:0] sum
    );
    assign sum = user1 + user2 ;
endmodule
