module Funcs(

    input       [127:0]           IN,
    input       [127:0]            keys,
    output      [127:0]           OUT

);

wire            [127:0]           sub_data      , 
                                  shift_data    , 
                                  mix_data      ;


SubBytes SubBytes (
    .IN(IN),
    .OUT(sub_data)
);

ShiftRows ShiftRows (
    .IN(sub_data),
    .OUT(shift_data)
);

MixColumns MixColumns (
    .IN(shift_data),
    .OUT(mix_data)
);

AddRoundKey AddRoundKey (
    .IN(mix_data),
    .keys(keys),
    .OUT(OUT)
);


endmodule