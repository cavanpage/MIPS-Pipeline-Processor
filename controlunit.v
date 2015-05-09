`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:14:34 03/16/2015 
// Design Name: 
// Module Name:    controlunit 
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
module controlunit(

input[5:0] Op, Funct,

output reg RegWriteD,
output reg MemtoRegD,
output reg MemWriteD,
output reg BranchD,
output reg[2:0] ALUControlD,
output reg ALUSrcD,
output reg RegDstD,
output reg jump
    );


initial 
	begin
		RegWriteD <= 0;
		MemtoRegD <= 0;
		MemWriteD <= 0;
		BranchD <= 0;
		ALUControlD <= 0;
		ALUSrcD <= 0;
		RegDstD <= 0;
		jump <= 0;
	end
	

always @(*) 
begin
	
	if(Op == 35) //enable write to register file
		begin
			ALUControlD <= 2;
			RegWriteD <= 1;
			MemWriteD <= 0;
			MemtoRegD <= 1;
			ALUSrcD <= 1;
			RegDstD <= 0;
			BranchD <= 0;
			jump <= 0;
		end
	
	else if(Op == 43) //enable write to data memory
		begin
			ALUControlD <= 2;
			MemWriteD <= 1;
			RegWriteD <= 0;
			MemtoRegD <= 0;
			ALUSrcD <= 1;
			RegDstD <= 0;
			jump <= 0;
		end
	
	else if(Op == 8) //addifunction
		begin
			ALUControlD <= 2;
			MemWriteD <= 0;
			RegWriteD <= 1;
			MemtoRegD <= 0;
			ALUSrcD <= 1;
			RegDstD <= 0;
			BranchD <= 0;
			jump <= 0;
		end
	
	else if (Op == 4) //branch function
		begin
			BranchD <= 1;
			MemWriteD <= 0;
			RegWriteD <= 0;
			MemtoRegD <= 0;
			ALUSrcD <= 0;
			RegDstD <= 0;
			ALUControlD <= 0;
			jump <= 0;
		end
		
	else if(Op == 2) //jump function
		begin
			MemtoRegD <= 0;
			RegDstD <= 0;
			BranchD <= 0;
			MemWriteD <= 0;
			RegWriteD <= 0;
			ALUSrcD <= 0;
			ALUControlD <= 0;
			jump <= 1;
		end
	
	else if(Op == 00) //r-type function
		begin
			MemWriteD <= 0;
			RegWriteD <= 1;
			MemtoRegD <= 0;
			ALUSrcD <= 0;
			RegDstD <= 1;
			BranchD <= 0;
			jump <= 0;
			
			case (Funct)
			
				37: ALUControlD <= 1; //or function
				36: ALUControlD <= 0; //and function
				32: ALUControlD <= 2; //add function
				42: ALUControlD <= 7; //set less than
				34: ALUControlD <= 6; //subtract
				24: ALUControlD <= 3; //multiply
				
				default: ALUControlD <= 2; // add function
			endcase
			
		end
	
	else 
		begin
		ALUControlD <= 2;
		jump <= 0;
		end

end
endmodule
