`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:50 05/07/2015 
// Design Name: 
// Module Name:    jumpbranchdest 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Determines whether to take the Jump Dest, Branch Dest, or PCPLusF Dest
// 					that calls the next instruction in the memory. 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module jumpbranchdest #(parameter SIZE = 31)(


input[SIZE:0] jumpdest, branchdest, PCPlusF,
input JumpD, bequal, 
output reg[SIZE:0] PCTick, 
output reg clk1clear

    );



always @*
begin

	if(JumpD)
	begin
	
		PCTick <= jumpdest;	
		clk1clear <= 1;
		
	end
		
	else if(bequal)
	begin
	
		PCTick <= branchdest;
		clk1clear <= 1;	
		
	end
	
	else 
	begin
	
		PCTick <= PCPlusF;
		clk1clear <= 0;
		
	end



end


endmodule
