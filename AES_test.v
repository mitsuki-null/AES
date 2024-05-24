module AES_test;

wire [127:0] in, out;

Top aes (
    .IN(in),
    .OUT(out)
);

initial begin
        in = 123456789012;
        #50
        $display("message:%b out:%b", in, out);
        $finish;
    end
endmodule