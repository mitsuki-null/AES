module ShiftRows(
    input   [127:0]  IN,
    output  [127:0]  OUT
);

//シフト演算子使うと上位ビット消えることに留意
assign OUT = {IN[127:96], IN[87:64], IN[95:88], IN[47:32], IN[63:48], IN[7:0], IN[31:24]};


endmodule