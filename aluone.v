`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:01 03/17/2015 
// Design Name: 
// Module Name:    aluone 
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
module aluone #(parameter SIZE = 31)(
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
reg[63:0] product;
 
 
always@*

	case (ALUControl)
		0: ALUResult <= (SrcA & SrcB);
		1: ALUResult <= SrcA | SrcB;
		2: ALUResult <= SrcA + SrcB;
		3: begin
				
				product = SrcA * SrcB;
				ALUResult = product[31:0];
			
			end
		4: ALUResult <= SrcA & ~SrcB;
		5: ALUResult <= SrcA | ~SrcB;
		6: ALUResult <= SrcA - SrcB;
		7: ALUResult <= (SrcA < SrcB);
	default: ALUResult <= SrcA + SrcB;
	
endcase

endmodule