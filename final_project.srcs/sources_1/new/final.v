`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2026 12:21:50 PM
// Design Name: 
// Module Name: lab9_main
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


module final(
input [15:0]sw,
input btnC,
input btnL,
input clk,
output [15:0]led
);

    
wire btnC_up, btnL_down;

debouncer debouncer0(
    .clk(clk),
    .PB(btnL),
    .PB_up(btnL_down),
);

debouncer debouncer1(
    .clk(clk),
    .PB(btnC),
    .PB_up(btnC_up)
);


wire [3:0]Op, Q, D;
wire RFD;
lab9_fsm lab9_fsm1 (
    .ENTER(PB_up),
    .F(addSubtractSW),
    .CLK(clk),
    .OP(Op),
    .RFD(RFD),
    .Q(Q),
    .D(D)
);

lab9_mfr lab9_mfr1 (
    .I(sw),
    .Op(Op),
    .EN(1'b1),
    .CLK(clk),
    .Q(led)
);

    
endmodule
