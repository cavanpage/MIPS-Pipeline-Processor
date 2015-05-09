`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:15:30 03/17/2015 
// Design Name: 
// Module Name:    clk3 
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
module clk3 #(parameter size = 31)(

input clk,

input RegWriteE, MemtoRegE, MemWriteE,
input[size:0] ALUOutE, WriteDataE,
input[4:0] WriteRegE,

output reg RegWriteM, MemtoRegM, MemWriteM,
output reg[size:0] ALUOutM, WriteDataM,
output reg[4:0] WriteRegM
    );
	 
initial 
	begin
		RegWriteM <= 0;
		MemtoRegM <= 0;
		MemWriteM <= 0;
		ALUOutM <= 0;
		WriteDataM <= 0;
		WriteRegM <= 0;
	end

always @ (posedge clk)
	begin
		RegWriteM <= RegWriteE;
		MemtoRegM <= MemtoRegE;
		MemWriteM <= MemWriteE;
		ALUOutM <= ALUOutE;
		WriteDataM <= WriteDataE;
		WriteRegM <= WriteRegE;
	end


endmodule
