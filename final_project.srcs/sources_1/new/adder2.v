module adder2(
input [1:0] A,
input [1:0] B,
input c_in,
input RST,
output [1:0] S,
output c_out
);
wire notr;
wire ic_out;
wire [1:0] ts;
full_adder ADDER0(
.A(A[0]),
.B(B[0]),
.c_in(c_in),
.S(ts[0]),
.c_out(ic_out)
);
full_adder ADDER1(
.A(A[1]),
.B(B[1]),
.c_in(ic_out),
.S(ts[1]),
.c_out(c_out)
);

not NOTR(notr, RST);
and S0OUT(S[0], ts[0], notr);
and S1OUT(S[1], ts[1], notr);
endmodule