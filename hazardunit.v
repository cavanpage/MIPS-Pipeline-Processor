`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:18:26 03/16/2015 
// Design Name: 
// Module Name:    hazardunit 
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
module hazardunit(

input jump,
input[31:0] RD1, RD2,
input[4:0] RsD, RtD,
input[4:0] RsE, RtE, WriteRegE, WriteRegM, WriteRegW,
input MemtoRegE,
input MemtoRegM,
input BranchD,

output reg StallD, StallF,FlushE,
output reg[1:0] ForwardAE, ForwardBE,

output reg ForwardAD, ForwardBD,

input RegWriteE,
input RegWriteM,
input RegWriteW

    ); 

reg lwstall;
reg branchstall;
 
initial 
	begin
	branchstall <= 0;
	lwstall <= 0;
	StallD <= 0;
	StallF <= 0;
	ForwardAD <= 0; 
	ForwardBD <= 0;
	ForwardAE <= 0;
	ForwardBE <= 0;
	FlushE <= 0;
	
	end
always @ * 
	begin
		
		//data forwarding for SrcAE
		if((RsE != 0) & (RsE == WriteRegM) && RegWriteM) ForwardAE <= 2'b01;// set srca = aluoutM		
		else if((RsE != 0) & (RsE == WriteRegW) && RegWriteW) ForwardAE <= 2'b10;		
		else ForwardAE <= 2'b00;
		
		//data forwarding for SrcBE
		if((RtE != 0) & (RtE == WriteRegM) && RegWriteM) ForwardBE <= 2'b01;//	
		else if((RtE != 0) & (RtE == WriteRegW) && RegWriteW) ForwardBE <= 2'b10;
		else ForwardBE <= 2'b00;
		
		//stalls and flushed
		lwstall <= ((RsD == RtE) | (RtD == RtE)) & MemtoRegE;
		
		//elminating control hazards
		ForwardAD = (RsD != 0) & (RsD == WriteRegM) && RegWriteM;
		ForwardBD = (RtD != 0) & (RtD == WriteRegM) && RegWriteM;
		
		//stall detection logic 
		branchstall = BranchD & RegWriteE & 
		(WriteRegE == RsD | WriteRegE == RtD) |
		BranchD && MemtoRegM & (WriteRegM == RsD | WriteRegM == RtD);
	
		StallF <= lwstall | branchstall;
   	StallD <= lwstall | branchstall;
		FlushE <= lwstall | branchstall;
				 					
	end


endmodule
