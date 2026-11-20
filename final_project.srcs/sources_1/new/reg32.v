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

module reg32(
    input [31:0] in_D,
    input in_EN,
    input in_CLK,
    output [31:0] out_Q
    );
   
   dff_en dff31 (
	.data_out(out_Q[31]),
	.in_D(in_D[31]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff30 (
	.data_out(out_Q[30]),
	.in_D(in_D[30]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff29 (
	.data_out(out_Q[29]),
	.in_D(in_D[29]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff28 (
	.data_out(out_Q[28]),
	.in_D(in_D[28]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff27 (
	.data_out(out_Q[27]),
	.in_D(in_D[27]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff26 (
	.data_out(out_Q[26]),
	.in_D(in_D[26]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff25 (
	.data_out(out_Q[25]),
	.in_D(in_D[25]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff24 (
	.data_out(out_Q[24]),
	.in_D(in_D[24]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff23 (
	.data_out(out_Q[23]),
	.in_D(in_D[23]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff22 (
	.data_out(out_Q[22]),
	.in_D(in_D[22]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff21 (
	.data_out(out_Q[21]),
	.in_D(in_D[21]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff20 (
	.data_out(out_Q[20]),
	.in_D(in_D[20]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff19 (
	.data_out(out_Q[19]),
	.in_D(in_D[19]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff18 (
	.data_out(out_Q[18]),
	.in_D(in_D[18]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff17 (
	.data_out(out_Q[17]),
	.in_D(in_D[17]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
);
   
   
   dff_en dff16 (
	.data_out(out_Q[16]),
	.in_D(in_D[16]),
	.in_CLK(in_CLK),
	.in_EN(in_EN)
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
