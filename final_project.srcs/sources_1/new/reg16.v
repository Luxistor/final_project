
module reg3(
    input [2:0] in_D,
    input in_EN,
    input in_CLK,
    output [2:0] out_Q
    );
   
    
dff_en dff2 (
	.data_out(out_Q[2]),
	.in_D(in_D[2]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);

dff_en dff1 (
	.data_out(out_Q[1]),
	.in_D(in_D[1]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);

dff_en dff0 (
	.data_out(out_Q[0]),
	.in_D(in_D[0]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);

endmodule;
