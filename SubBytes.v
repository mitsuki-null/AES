module SubBytes(
    input   [127:0]  IN,
    output  [127:0]  OUT
);

Sbox sbox0 (
    .IN             (IN[127:120])  ,
    .OUT            (OUT[127:120])  
);

Sbox sbox1 (
    .IN             (IN[119:112])  ,
    .OUT            (OUT[119:112])  
);

Sbox sbox2 (
    .IN             (IN[111:104])  ,
    .OUT            (OUT[111:104])  
);

Sbox sbox3 (
    .IN             (IN[103:96])  ,
    .OUT            (OUT[103:96])  
);

Sbox sbox4 (
    .IN             (IN[95:88])  ,
    .OUT            (OUT[95:88])  
);

Sbox sbox5 (
    .IN             (IN[87:80])  ,
    .OUT            (OUT[87:80])  
);

Sbox sbox6 (
    .IN             (IN[79:72])  ,
    .OUT            (OUT[79:72])  
);

Sbox sbox7 (
    .IN             (IN[71:64])  ,
    .OUT            (OUT[71:64])  
);

Sbox sbox8 (
    .IN             (IN[63:56])  ,
    .OUT            (OUT[63:56])  
);

Sbox sbox9 (
    .IN             (IN[55:48])  ,
    .OUT            (OUT[55:48])  
);

Sbox sbox10 (
    .IN             (IN[47:40])  ,
    .OUT            (OUT[47:40])  
);

Sbox sbox11 (
    .IN             (IN[39:32])  ,
    .OUT            (OUT[39:32])  
);

Sbox sbox12 (
    .IN             (IN[31:24])  ,
    .OUT            (OUT[31:24])  
);

Sbox sbox13 (
    .IN             (IN[23:16])  ,
    .OUT            (OUT[23:16])  
);

Sbox sbox14 (
    .IN             (IN[15:8])  ,
    .OUT            (OUT[15:8])  
);

Sbox sbox15 (
    .IN             (IN[7:0])  ,
    .OUT            (OUT[7:0])  
);




endmodule