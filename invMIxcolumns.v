module invMIxcolumns(
    input  [31:0] IN_S0,
    input  [31:0] IN_S1,
    input  [31:0] IN_S2,
    input  [31:0] IN_S3,

    output [31:0] OUT_S0,
    output [31:0] OUT_S1,
    output [31:0] OUT_S2,
    output [31:0] OUT_S3
);

wire [7:0] S_00, S_00_09, S_00_0b, S_00_0d, S_00_e;
wire [7:0] S_01, S_01_09, S_01_0b, S_01_0d, S_01_e;
wire [7:0] S_02, S_02_09, S_02_0b, S_02_0d, S_02_e;
wire [7:0] S_03, S_03_09, S_03_0b, S_03_0d, S_03_e;

wire [7:0] S_10, S_10_09, S_10_0b, S_10_0d, S_10_e;
wire [7:0] S_11, S_11_09, S_11_0b, S_11_0d, S_11_e;
wire [7:0] S_12, S_12_09, S_12_0b, S_12_0d, S_12_e;
wire [7:0] S_13, S_13_09, S_13_0b, S_13_0d, S_13_e;

wire [7:0] S_20, S_20_09, S_20_0b, S_20_0d, S_20_e;
wire [7:0] S_21, S_21_09, S_21_0b, S_21_0d, S_21_e;
wire [7:0] S_22, S_22_09, S_22_0b, S_22_0d, S_22_e;
wire [7:0] S_23, S_23_09, S_23_0b, S_23_0d, S_23_e;

wire [7:0] S_30, S_30_09, S_30_0b, S_30_0d, S_30_e;
wire [7:0] S_31, S_31_09, S_31_0b, S_31_0d, S_31_e;
wire [7:0] S_32, S_32_09, S_32_0b, S_32_0d, S_32_e;
wire [7:0] S_33, S_33_09, S_33_0b, S_33_0d, S_33_e;

wire [7:0] calculated_S00, calculated_S10, calculated_S20, calculated_S30,; 
wire [7:0] calculated_S01, calculated_S11, calculated_S21, calculated_S31,; 
wire [7:0] calculated_S02, calculated_S12, calculated_S22, calculated_S32,; 
wire [7:0] calculated_S03, calculated_S13, calculated_S23, calculated_S33,; 

assign [7:0] S_00 = IN_S0[31:24];
assign [7:0] S_01 = IN_S0[23:16];
assign [7:0] S_02 = IN_S0[15:8];
assign [7:0] S_03 = IN_S0[7:0];

assign [7:0] S_10 = IN_S0[31:24];
assign [7:0] S_11 = IN_S0[23:16];
assign [7:0] S_12 = IN_S0[15:8];
assign [7:0] S_13 = IN_S0[7:0];

assign [7:0] S_20 = IN_S0[31:24];
assign [7:0] S_21 = IN_S0[23:16];
assign [7:0] S_22 = IN_S0[15:8];
assign [7:0] S_23 = IN_S0[7:0];

assign [7:0] S_30 = IN_S0[31:24];
assign [7:0] S_31 = IN_S0[23:16];
assign [7:0] S_32 = IN_S0[15:8];
assign [7:0] S_33 = IN_S0[7:0];

invMul m00(.IN_S(S_00), .OUT_S(S_00_09), .OUT_S(S_00_0b), .OUT_S(S_00_0d), .OUT_S(S_00_0e));
invMul m01(.IN_S(S_01), .OUT_S(S_01_09), .OUT_S(S_01_0b), .OUT_S(S_01_0d), .OUT_S(S_01_0e));
invMul m02(.IN_S(S_02), .OUT_S(S_02_09), .OUT_S(S_02_0b), .OUT_S(S_02_0d), .OUT_S(S_02_0e));
invMul m03(.IN_S(S_03), .OUT_S(S_03_09), .OUT_S(S_03_0b), .OUT_S(S_03_0d), .OUT_S(S_03_0e));

invMul m10(.IN_S(S_10), .OUT_S(S_10_09), .OUT_S(S_10_0b), .OUT_S(S_10_0d), .OUT_S(S_10_0e));
invMul m11(.IN_S(S_11), .OUT_S(S_11_09), .OUT_S(S_11_0b), .OUT_S(S_11_0d), .OUT_S(S_11_0e));
invMul m12(.IN_S(S_12), .OUT_S(S_12_09), .OUT_S(S_12_0b), .OUT_S(S_12_0d), .OUT_S(S_12_0e));
invMul m13(.IN_S(S_13), .OUT_S(S_13_09), .OUT_S(S_13_0b), .OUT_S(S_13_0d), .OUT_S(S_13_0e));

invMul m20(.IN_S(S_20), .OUT_S(S_20_09), .OUT_S(S_20_0b), .OUT_S(S_20_0d), .OUT_S(S_20_0e));
invMul m21(.IN_S(S_21), .OUT_S(S_21_09), .OUT_S(S_21_0b), .OUT_S(S_21_0d), .OUT_S(S_21_0e));
invMul m22(.IN_S(S_22), .OUT_S(S_22_09), .OUT_S(S_22_0b), .OUT_S(S_22_0d), .OUT_S(S_22_0e));
invMul m23(.IN_S(S_23), .OUT_S(S_23_09), .OUT_S(S_23_0b), .OUT_S(S_23_0d), .OUT_S(S_23_0e));

invMul m30(.IN_S(S_30), .OUT_S(S_30_09), .OUT_S(S_30_0b), .OUT_S(S_30_0d), .OUT_S(S_30_0e));
invMul m31(.IN_S(S_31), .OUT_S(S_31_09), .OUT_S(S_31_0b), .OUT_S(S_31_0d), .OUT_S(S_31_0e));
invMul m32(.IN_S(S_32), .OUT_S(S_32_09), .OUT_S(S_32_0b), .OUT_S(S_32_0d), .OUT_S(S_32_0e));
invMul m33(.IN_S(S_33), .OUT_S(S_33_09), .OUT_S(S_33_0b), .OUT_S(S_33_0d), .OUT_S(S_33_0e));

assign calculated_S00 = S_00_0e ^ S_10_0b ^ S_20_0d ^ S_30_09;
assign calculated_S01 = S_01_0e ^ S_11_0b ^ S_21_0d ^ S_31_09;
assign calculated_S02 = S_02_0e ^ S_12_0b ^ S_22_0d ^ S_32_09;
assign calculated_S03 = S_03_0e ^ S_13_0b ^ S_23_0d ^ S_33_09;

assign calculated_S10 = S_00_09 ^ S_10_0e ^ S_20_0b ^ S_30_0d;
assign calculated_S11 = S_01_09 ^ S_11_0e ^ S_21_0b ^ S_31_0d;
assign calculated_S12 = S_02_09 ^ S_12_0e ^ S_22_0b ^ S_32_0d;
assign calculated_S13 = S_03_09 ^ S_13_0e ^ S_23_0b ^ S_33_0d;

assign calculated_S20 = S_00_0d ^ S_10_09 ^ S_20_0e ^ S_30_0b;
assign calculated_S21 = S_01_0d ^ S_11_09 ^ S_21_0e ^ S_31_0b;
assign calculated_S22 = S_02_0d ^ S_12_09 ^ S_22_0e ^ S_32_0b;
assign calculated_S23 = S_03_0d ^ S_13_09 ^ S_23_0e ^ S_33_0b;

assign calculated_S30 = S_00_0b ^ S_10_0d ^ S_20_09 ^ S_30_0e;
assign calculated_S31 = S_01_0b ^ S_11_0d ^ S_21_09 ^ S_31_0e;
assign calculated_S32 = S_02_0b ^ S_12_0d ^ S_22_09 ^ S_32_0e;
assign calculated_S33 = S_03_0b ^ S_13_0d ^ S_23_09 ^ S_33_0e;

//
assign OUT_S0 = {calculated_S00, calculated_S01, calculated_S02, calculated_S03}
assign OUT_S1 = {calculated_S10, calculated_S11, calculated_S12, calculated_S13}
assign OUT_S2 = {calculated_S20, calculated_S21, calculated_S22, calculated_S23}
assign OUT_S3 = {calculated_S30, calculated_S31, calculated_S32, calculated_S33}

endmodule



module invMul(
    input  [7:0] IN_S,
    output [7:0] OUT_S_09, OUT_S_0b, OUT_S_0d, OUT_S_0e
);

parameter [7:0] polynomial =  8'b00011011;   //x^8=x^4+x^3+x+1

wire [7:0] S_1;
wire [7:0] S_2;
wire [7:0] S_3;

//3bit左シフト
assign S_1 = (IN_S[7] == 1'b1) ? (IN_S << 1) ^ polynomial : IN_S << 1;
assign S_2 = (S_1[7] == 1'b1)  ? (S_1 << 1)  ^ polynomial : S_1 << 1;
assign S_3 = (S_2[7] == 1'b1)  ? (S_2 << 1)  ^ polynomial : S_2 << 1;

//3bit左シフト ^ 0bit左シフト
assign S_OUT_09 = S_3 ^ IN_S;

//3bit左シフト ^ 1bit左シフト ^ 0bit左シフト
assign S_OUT_0b = S_3 ^ S_1 ^ IN_S;

//3bit左シフト ^ 2bit左シフト ^ 0bit左シフト
assign S_OUT_0d = S_3 ^ S_2 ^ IN_S;

//3bit左シフト ^ 2bit左シフト ^ 1bit左シフト
assign S_OUT_0e = S_3 ^ S_2 ^ _S1;

endmodule