`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 10:36:32 AM
// Design Name: 
// Module Name: reg3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module reg2(
    input [1:0] in_D,
    input in_EN,
    input in_CLK,
    input RST,
    output [1:0] out_Q
    );
   
 
wire not_r, en_or_rst;
wire [1:0] d_gated;

not not0(not_r, RST);
and and0[1:0](d_gated, in_D, not_r);
or  or0(en_or_rst, in_EN, RST);

dff_en dff1 (
	.data_out(out_Q[1]),
	.in_D(d_gated[1]),
	.in_CLK(in_CLK),
	.in_EN(en_or_rst)
);

dff_en dff0 (
	.data_out(out_Q[0]),
	.in_D(d_gated[0]),
	.in_CLK(in_CLK),
	.in_EN(en_or_rst)
);

endmodule
