`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:08 03/12/2015 
// Design Name: 
// Module Name:    muxthree_one 
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
module muxthree_one #(parameter size = 31)(
input[1:0] in,
input[size:0] a, b, c,
output reg[size:0] out
    );

always @*
	begin
		case(in)
			2'b00: out <= a;
			2'b01: out <= b;
			2'b10: out <= c;
			2'b11: out <= 0;
			default: out <= 0;
		endcase
	end
			
endmodule
