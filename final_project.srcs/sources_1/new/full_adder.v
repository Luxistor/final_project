module full_adder(
	input A,
	input B,
	input c_in,
	output c_out,
	output S
);

wire X13, X14, X15;


xor U2 (S,A, B, Cin);

or U8 (Cout,X13, X14, X15);

and U13 (X13,A, Cin);

and U14 (X14,A, B);

and U15 (X15,B, Cin);

endmodule
