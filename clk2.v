`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:49:30 03/17/2015 
// Design Name: 
// Module Name:    clk2 
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
module clk2 #(parameter size = 31)(

input clk, clr, 

//control unit outputs
input RegWriteD,
input MemtoRegD,
input MemWriteD,
input[2:0] ALUControlD,
input ALUSrcD,
input RegDstD,


//register fle outputs
input[size:0] Rd1D,
input[size:0] Rd2D,

//opcode outputs
input[4:0] RsD,
input[4:0] RtD,
input[4:0] RdD,
input[size:0] SignImmD,

//outputs
output reg RegWriteE, MemtoRegE, MemWriteE, ALUSrcE, RegDstE, 
output reg[2:0] ALUControlE,
output reg[size:0] Rd1E, Rd2E,
output reg[4:0] RsE, RtE, RdE,
output reg[size:0] SignImmE

    );


initial 
	begin
		RegWriteE <= 0;
		MemtoRegE <= 0;
		MemWriteE <= 0;
		ALUSrcE <= 0;
		ALUControlE <= 0;
		RegDstE <= 0;
		Rd1E <= 0;
		Rd2E <= 0;
		RsE <= 0;
		RtE <= 0;
		RdE <= 0;
		SignImmE <= 0;
	end

always @*
	begin
		if(clr) 
			begin
				RegWriteE <= 0;
				MemtoRegE <= 0;
				MemWriteE <= 0;
				ALUControlE <= 0;
				ALUSrcE <= 0;
				RegDstE <= 0;
				Rd1E <= 0;
				Rd2E <= 0;
				RsE <= 0;
				RtE <= 0;
				RdE <= 0;
				SignImmE <= 0;
			end
	end

always @ (posedge clk)
		begin
			
			RegWriteE <= RegWriteD;
			MemtoRegE <= MemtoRegD;
			MemWriteE <= MemWriteD;
			ALUSrcE <= ALUSrcD;
			RegDstE <= RegDstD;
			ALUControlE <= ALUControlD;
			Rd1E <= Rd1D;
			Rd2E <= Rd2D;
			RsE <= RsD;
			RtE <= RtD;
			RdE <= RdD;
			SignImmE <= SignImmD;
			
		end

endmodule
