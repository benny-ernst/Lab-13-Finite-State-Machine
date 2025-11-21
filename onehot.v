module onehot(
    input w, clk, reset,
    output z, A, B, C, D, E
);
    wire Anext, Bnext, Cnext, Dnext, Enext;
    
    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .reset(reset),
        .Q(A)
    );  
    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .reset(reset),
        .Q(B)
    );  
    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .reset(reset),
        .Q(C)
    );  
    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .reset(reset),
        .Q(D)
    );  
    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .reset(reset),
        .Q(E)
    );  
    
    assign z = C | E;
    
    assign Anext = 0;
    assign Bnext = ~w & (A | D | E);
    assign Cnext = ~w & (B | C);
    assign Dnext = w & (A | B | C);
    assign Enext = w & (D | E);
endmodule