module AddRoundKey(
    input       [127:0]         IN,
    input       [127:0]         keys,
    output      [127:0]         OUT
)

assign OUT = IN ^ keys;

endmodule