`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:49:11 03/12/2015 
// Design Name: 
// Module Name:    alu 
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
module alu #(parameter SIZE = 31)(
input[SIZE:0] SrcA, SrcB, 
input[2:0]ALUControl, 
output reg[SIZE:0] ALUResult
//output reg Zero
 );
 
//always @*begin
//	begin
//		if(SrcA == SrcB) Zero = 1;
//		else Zero = 0;
//	end
//end
 
always@*

	case (ALUControl)
		0: ALUResult <= (SrcA & SrcB);
		1: ALUResult <= SrcA | SrcB;
		2: ALUResult <= SrcA + SrcB;
		//3: Not Used
		4: ALUResult <= SrcA & ~SrcB;
		5: ALUResult <= SrcA | ~SrcB;
		6: ALUResult <= SrcA - SrcB;
		7: ALUResult <= (SrcA < SrcB);
	default: ALUResult <= 0;
endcase
