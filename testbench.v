`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:29 03/12/2015 
// Design Name: 
// Module Name:    testbench 
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
module testbench(
    );

parameter size = 31;

reg clk, reset;

wire[size:0] PCTick, PCF;
wire[size:0] RD;
wire[size:0] InstrD;
wire[size:0] RD1, RD2, rd1mux, rd2mux;

wire[size:0] PCPlusF, PCPlusD;
wire[size:0] SignImmD, SignImmE;
wire[size:0] ALUOutM;
wire[size:0] ReadDataM;
wire[size:0] ReadDataW;
wire[size:0] ALUResult;

wire RegWriteD, RegWriteE, RegWriteM, RegWriteW;
wire MemtoRegD, MemtoRegE, MemtoRegM, MemtoRegW;
wire MemWriteD, MemWriteE, MemWriteM;

wire[2:0] ALUControlD, ALUControlE;

wire ALUSrcD, ALUSrcE;
wire RegDstD, RegDstE;


wire[size:0] SrcAE, SrcBE, WriteDataE, WriteDataM;
wire[size:0] PCBranchD;

//used to pass the destination from the jump instruction
wire[size:0] jumpdest;

wire[size:0] ALUOutW;

wire[size:0] Rd1E, Rd2E;
wire[4:0] RsE, RtE, RdE;
wire[4:0] RsD, RtD, RdD;
wire[size:0] ResultW;
wire[4:0] WriteRegE, WriteRegM, WriteRegW;


//wires from hazard unit
wire StallF, StallD, FlushE;
wire ForwardAD, ForwardBD;
wire[1:0] ForwardAE, ForwardBE;


wire JumpD;
wire clearclk1;
wire BranchD, bequal;


assign jumpdest = {PCPlusD[31:26], InstrD[25:0]}; 
assign bequal = BranchD & (rd1mux == rd2mux); 

assign RsD = InstrD[25:21];
assign RtD = InstrD[20:16];
assign RdD = InstrD[15:11];	

clkregen clrg1(.clk(clk), .en(~StallF), .in(PCTick), .out(PCF), .reset(reset));

instructionmemory im1(.in(PCF), .out(RD));

pcplus pp1(.in(PCF), .out(PCPlusF), .reset(reset));

jumpbranchdest jbdst(.jumpdest(jumpdest), .branchdest(PCBranchD), .PCPlusF(PCPlusF), .JumpD(JumpD), .bequal(bequal), .PCTick(PCTick), .clk1clear(clearclk1));

//old way to try and route PCBranch ...worked for pcbranch but not jump
//muxtwo_one mux1(.in(PCSrcD), .a(PCPlusF), .b(PCBranchD) ,.out(PCTick));
//muxthree_one jbeq(.in(PCSrcD), .out(PCTick), .a(PCPlusF), .b(PCBranchD), .c(jumpdest));

clk1 cl1( .clk(clk), .en(~StallD), .clr(clearclk1), .RD(RD), .PCPlusF(PCPlusF), 
.InstrD(InstrD), .PCPlusD(PCPlusD));

controlunit cu(.Op(InstrD[31:26]), .Funct(InstrD[5:0]), .RegWriteD(RegWriteD),
.MemtoRegD(MemtoRegD), .MemWriteD(MemWriteD), .BranchD(BranchD),
.ALUControlD(ALUControlD), .ALUSrcD(ALUSrcD), .RegDstD(RegDstD), .jump(JumpD));


registerfile rf(.clk(clk), .WE3(RegWriteW), .a1(InstrD[25:21]),
.a2(InstrD[20:16]), .a3(WriteRegW), .WD3(ResultW), .RD1(RD1), .RD2(RD2));

muxtwo_one rd1(.in(ForwardAD), .out(rd1mux), .a(RD1), .b(ALUOutM));

muxtwo_one rd2(.in(ForwardBD), .out(rd2mux), .a(RD2), .b(ALUOutM));

muxthree_one rd1m(.in(ForwardAE), .a(Rd1E), .b(ALUOutM), .c(ResultW),
.out(SrcAE));

muxthree_one rd2m(.in(ForwardBE), .a(Rd2E), .b(ALUOutM), .c(ALUOutW), 
.out(WriteDataE));

muxtwo_one srcbm(.in(ALUSrcE), .a(WriteDataE), .b(SignImmE), .out(SrcBE));

muxregdst muxrg(.in(RegDstE), .a(RtE), .b(RdE), .out(WriteRegE));

signextend se1(.in(InstrD[15:0]), .out(SignImmD));

add a1(.a(SignImmD), .b(PCPlusD), .sum(PCBranchD));

clk2 cu2(.clk(clk), .clr(~FlushE), .RegWriteD(RegWriteD), .MemtoRegD(MemtoRegD),
.MemWriteD(MemWriteD), .ALUControlD(ALUControlD), .ALUSrcD(ALUSrcD), 
.RegDstD(RegDstD), .Rd1D(RD1), .Rd2D(RD2), .RsD(InstrD[25:21]), 
.RtD(InstrD[20:16]), .RdD(InstrD[15:11]), .SignImmD(SignImmD),
.RegWriteE(RegWriteE), .MemtoRegE(MemtoRegE), .MemWriteE(MemWriteE),
.ALUSrcE(ALUSrcE), .RegDstE(RegDstE), .ALUControlE(ALUControlE),
.Rd1E(Rd1E), .Rd2E(Rd2E), .RsE(RsE), .RtE(RtE), .RdE(RdE),.SignImmE(SignImmE));

datamemory dm1(.clk(clk), .A(ALUOutM), .WD(WriteDataM), 
.WE(MemWriteM), .RD(ReadDataM));

clk4 clockfour(.clk(clk), .RegWriteM(RegWriteM), .MemtoRegM(MemtoRegM), 
.ReadDataM(ReadDataM), .ALUOutM(ALUOutM), .WriteRegM(WriteRegM),
.RegWriteW(RegWriteW), .MemtoRegW(MemtoRegW), .ReadDataW(ReadDataW),
.ALUOutW(ALUOutW), .WriteRegW(WriteRegW));

aluone onetwo(.ALUControl(ALUControlE), .SrcA(SrcAE), .SrcB(SrcBE),
.ALUResult(ALUResult));

muxtwo_one pcback(.in(MemtoRegW), .a(ALUOutW),
.b(ReadDataW), .out(ResultW));

clk3 cl3(.clk(clk), .RegWriteE(RegWriteE), .MemtoRegE(MemtoRegE),
.MemWriteE(MemWriteE), .ALUOutE(ALUResult), .WriteDataE(WriteDataE),
.WriteRegE(WriteRegE), .RegWriteM(RegWriteM), .MemtoRegM(MemtoRegM), 
.MemWriteM(MemWriteM), .ALUOutM(ALUOutM), .WriteDataM(WriteDataM),
.WriteRegM(WriteRegM));

hazardunit hu1( .RD1(RD1), .RD2(RD2), .StallF(StallF), .StallD(StallD), .BranchD(BranchD), 
.ForwardAD(ForwardAD), .ForwardBD(ForwardBD), .RsD(RsD), .RtD(RtD), 
.FlushE(FlushE), .RsE(RsE), .RtE(RtE), .ForwardAE(ForwardAE), 
.ForwardBE(ForwardBE), .WriteRegE(WriteRegE), .MemtoRegE(MemtoRegE),
.MemtoRegM(MemtoRegM), .RegWriteM(RegWriteM),
.RegWriteE(RegWriteE), .WriteRegM(WriteRegM), .WriteRegW(WriteRegW), 
.RegWriteW(RegWriteW));


always #10 clk = ~clk;

initial 

	begin
	
	clk = 0;
	reset = 1;
	#20;
	reset = 0;
	#60;
	

	end
endmodule
