`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:25:58 03/17/2015 
// Design Name: 
// Module Name:    clk4 
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
module clk4 #(parameter size = 31)(

input clk,

input RegWriteM, MemtoRegM,
input[size:0] ReadDataM, ALUOutM,
input[4:0] WriteRegM,

output reg RegWriteW, MemtoRegW, 
output reg[size:0] ReadDataW, ALUOutW,
output reg[4:0] WriteRegW
    );

initial 
	begin
		RegWriteW <= 0;
		MemtoRegW <= 0;
		ReadDataW <= 0;
		ALUOutW <= 0;
		WriteRegW <= 0;
	end
	
always @ (posedge clk) 
	begin
		RegWriteW <= RegWriteM;
		MemtoRegW <= MemtoRegM;
		ReadDataW <= ReadDataM;
		ALUOutW <= ALUOutM;
		WriteRegW <= WriteRegM;
	end

endmodule
