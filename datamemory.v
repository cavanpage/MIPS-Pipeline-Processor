`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:20:41 03/12/2015 
// Design Name: 
// Module Name:    datamemory 
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
module datamemory #(parameter CSIZE = 31)(

input clk,
input[CSIZE:0] A, WD,
input WE,
output reg[CSIZE:0] RD
    );
	 
reg [CSIZE:0] mem[0:50];
integer i, j, f;

initial 
begin
// USED FOR HW #3 to initialize memory
//	begin
//		j = 31;
//
//		for( i = 0; i <32 ; i = i +1)
//			begin
//				mem[i] = j;
//				j = j - 1;
//				end //end forloop

// Used for Final Project #1
	mem[0]  <= -1;
	mem[1]  <= -2;
	mem[2]  <=  3;
	mem[3]  <=  4;
	mem[4]  <= -5;
	mem[5]  <=  1;
	mem[6]  <=  0;
	mem[7]  <=  3;
	mem[8]  <=  4;
	mem[9]  <=  1;
	mem[10] <=  2;
	mem[11] <=  3;
	mem[12] <=  4;
	mem[13] <=  2;
	mem[14] <= -1;
	mem[15] <=  3;
	mem[16] <=  2;
	mem[17] <=  6;
	mem[18] <=  1;
	mem[19] <= -1;
	mem[20] <=  7;
	mem[21] <=  -5;
	mem[22] <=  -28;
	mem[23] <= 0;
	mem[24] <= 0;
	mem[25] <= 0;
	mem[26] <= 0;
	mem[27] <= 0;
	mem[28] <= 0;
	mem[29] <= 0;
	mem[30] <= 0;
	mem[31] <= 0;
	mem[32] <= 0;
	mem[33] <= 0;
	mem[34] <= 0;
	mem[35] <= 0;
	mem[36] <= 0;
	mem[37] <= 0;
	mem[38] <= 0;
	mem[39] <= 0;
	

	end //end initial

always@ (posedge clk) begin //write port clocked

	if(WE)begin
	 mem[A] <= WD;
	end

end //end always

always @*begin

	RD = mem[A];
 
end

endmodule

