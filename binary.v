module binary(
    input w, clk, reset,
    output z, [2:0] State
);
    wire [2:0] Next;
    
    dff zero(
        .D(Next[0]),
        .clk(clk),
        .reset(reset),
        .Default(1'b0),
        .Q(State[0])
    );
    dff one(
        .D(Next[1]),
        .clk(clk),
        .reset(reset),
        .Default(1'b0),
        .Q(State[1])
    );
    dff two(
        .D(Next[2]),
        .clk(clk),
        .reset(reset),
        .Default(1'b0),
        .Q(State[2])
    );
    
    assign z = (~State[2] & State[1] & ~State[0]) | (State[2] & ~State[1] & ~State[0]);
    assign Next[0] = (~State[1] & ~State[0] & ~w) | (~State[2] & ~State[0] & w) | (~State[1] & State[0] & w) | (State[1] & State[0] & ~w);
    assign Next[1] = (State[1] & ~State[0] & ~w) | (~State[2] & ~State[0] & w) | (~State[1] & State[0]);
    assign Next[2] = (State[2] & ~State[0] & w) | (State[1] & State[0] & w);
endmodule