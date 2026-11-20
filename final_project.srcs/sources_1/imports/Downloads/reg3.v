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

module reg16(
    input [15:0] in_D,
    input in_EN,
    input in_CLK,
    output [15:0] out_Q
    );
   
   dff_en dff15 (
	.data_out(out_Q[15]),
	.in_D(in_D[15]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff14 (
	.data_out(out_Q[14]),
	.in_D(in_D[14]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff13 (
	.data_out(out_Q[13]),
	.in_D(in_D[13]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff12 (
	.data_out(out_Q[12]),
	.in_D(in_D[12]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff11 (
	.data_out(out_Q[11]),
	.in_D(in_D[11]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff10 (
	.data_out(out_Q[10]),
	.in_D(in_D[10]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff9 (
	.data_out(out_Q[9]),
	.in_D(in_D[9]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff8 (
	.data_out(out_Q[8]),
	.in_D(in_D[8]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff7 (
	.data_out(out_Q[7]),
	.in_D(in_D[7]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff6 (
	.data_out(out_Q[6]),
	.in_D(in_D[6]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff5 (
	.data_out(out_Q[5]),
	.in_D(in_D[5]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff4 (
	.data_out(out_Q[4]),
	.in_D(in_D[4]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   dff_en dff3 (
	.data_out(out_Q[3]),
	.in_D(in_D[3]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
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

endmodule
