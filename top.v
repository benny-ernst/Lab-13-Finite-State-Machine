module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    onehot onehot(
        .clk(btnC),
        .reset(btnU),
        .w(sw),
        .z(led[0]),
        .A(led[2]),
        .B(led[3]),
        .C(led[4]),
        .D(led[5]),
        .E(led[6])
    );
    
    binary binary(
        .clk(btnC),
        .reset(btnU),
        .w(sw),
        .z(led[1]),
        .State(led[9:7])
    );

endmodule