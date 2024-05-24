module Top(
    input   [127:0]  message,
    output  [127:0]  ciphertext
);

wire        [127:0]      keys            ;

assign keys = 500;

wire        [127:0]     func0           , 
                        func1           , 
                        func2           , 
                        func3           , 
                        func4           , 
                        func5           , 
                        func6           , 
                        func7           , 
                        func8           , 
                        func9           ,
                        func10          , 
                        func10_1        , 
                        func10_2        , 
                        func_10_3       ;

AddRoundKey AddRoundKey_0 (
    .IN(message),
    .keys(keys),
    .OUT(func0)
);

Funcs func_0 (
    .IN(func0),
    .OUT(func1)
);

Funcs func_1 (
    .IN(func1),
    .OUT(func2)
);

Funcs func_2 (
    .IN(func2),
    .OUT(func3)
);

Funcs func_3 (
    .IN(func3),
    .OUT(func4)
);

Funcs func_4 (
    .IN(func4),
    .OUT(func5)
);

Funcs func_5 (
    .IN(func5),
    .OUT(func6)
);

Funcs func_6 (
    .IN(func6),
    .OUT(func7)
);

Funcs func_7 (
    .IN(func7),
    .OUT(func8)
);

Funcs func_8 (
    .IN(func8),
    .OUT(func9)
);

Funcs func_9 (
    .IN(func9),
    .OUT(func10)
);

SubBytes SubBytes_10 (
    .IN(func10),
    .OUT(func10_1)
);

ShiftRows ShiftRows_10 (
    .IN(func10_1),
    .OUT(func10_2)
);

AddRoundKey AddRoundKey_10 (
    .IN(func10_2),
    .keys(keys),
    .OUT(ciphertext)
);



endmodule