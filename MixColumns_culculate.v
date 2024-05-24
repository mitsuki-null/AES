module MixColumns_culculate#(
    parameter   [7:0]      polynomial = 8'b00011011;
)(
    input       [7:0]      IN_s0,
    input       [7:0]      IN_s1,
    input       [7:0]      IN_s2,
    input       [7:0]      IN_s3,
    output      [7:0]      OUT_S0,
    output      [7:0]      OUT_S1,
    output      [7:0]      OUT_S2,
    output      [7:0]      OUT_S3
);

wire            [7:0]      S0_02;
wire            [7:0]      S0_03;

wire            [7:0]      S1_02;
wire            [7:0]      S1_03;

wire            [7:0]      S2_02;
wire            [7:0]      S2_03;

wire            [7:0]      S3_02;
wire            [7:0]      S3_03;

assign S0_02 = (IN_s0[7] == 1'b1) ? (IN_s0 <<< 1) ^ polynomial : IN_s0 <<< 1;
assign S1_02 = (IN_s1[7] == 1'b1) ? (IN_s1 <<< 1) ^ polynomial : IN_s1 <<< 1;
assign S2_02 = (IN_s2[7] == 1'b1) ? (IN_s2 <<< 1) ^ polynomial : IN_s2 <<< 1;
assign S3_02 = (IN_s3[7] == 1'b1) ? (IN_s3 <<< 1) ^ polynomial : IN_s3 <<< 1;

assign OUT_S0 = S0_02 ^ (S1_02 ^ IN_s0) ^ IN_s2 ^ IN_s3;
assign OUT_S1 = IN_s0 ^ S1_02 ^ (S2_02 ^ IN_s0) ^ IN_s3;
assign OUT_S2 = IN_s0 ^ IN_s1 ^ S2_02 ^ (S3_02 ^ IN_s0);
assign OUT_S3 = (S0_02 ^ IN_s0) ^ IN_s1 ^ IN_s2 ^ S3_02;


endmodule