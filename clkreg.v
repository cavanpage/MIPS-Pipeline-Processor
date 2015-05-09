`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:34 03/12/2015 
// Design Name: 
// Module Name:    clkreg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clkreg #(parameter SIZE = 31)(
input clk,
input[SIZE:0] in,
output reg[SIZE:0] out);
	
always @(posedge clk)

	out <= in;



endmodule
