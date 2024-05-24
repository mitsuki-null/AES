module MixColumns(
    input   [127:0]      IN,
    output  [127:0]      OUT
);

//１列目
MixColumns_culculate col0(
.IN_s0(IN[127:120]),
.IN_s1(IN[95:88]),
.IN_s2(IN[63:56]),
.IN_s3(IN[31:24]),
.OUT_S0(OUT[127:120]),
.OUT_S1(OUT[95:88]),
.OUT_S2(OUT[63:56]),
.OUT_S3(OUT[31:24])
);

//2列目
MixColumns_culculate col0(
.IN_s0(IN[119:112]),
.IN_s1(IN[87:80]),
.IN_s2(IN[55:48]),
.IN_s3(IN[23:16]),
.OUT_S0(OUT[119:112]),
.OUT_S1(OUT[87:80]),
.OUT_S2(OUT[55:48]),
.OUT_S3(OUT[23:16])
);

//3列目
MixColumns_culculate col0(
.IN_s0(IN[111:104]),
.IN_s1(IN[79:72]),
.IN_s2(IN[47:40]),
.IN_s3(IN[15:8]),
.OUT_S0(OUT[111:104]),
.OUT_S1(OUT[79:72]),
.OUT_S2(OUT[47:40]),
.OUT_S3(OUT[15:8])
);

//4列目
MixColumns_culculate col0(
.IN_s0(IN[103:96]),
.IN_s1(IN[71:64]),
.IN_s2(IN[39:32]),
.IN_s3(IN[7:0]),
.OUT_S0(OUT[103:96]),
.OUT_S1(OUT[71:64]),
.OUT_S2(OUT[39:32]),
.OUT_S3(OUT[7:0])
);

endmodule