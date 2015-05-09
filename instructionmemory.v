`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:38 03/12/2015 
// Design Name: 
// Module Name:    instructionmemory 
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
module instructionmemory #(parameter CSIZE = 31)(
input[CSIZE:0] in,
output reg[CSIZE:0] out
    );


reg [CSIZE:0] mem[0:CSIZE];

initial begin

	//$readmemh("program.dat", mem);  // used for HW $3
	//$readmemh("final1.dat", mem);     // used for final project part 1
	$readmemh("final2.dat", mem);   // used for final project part 2

end

always@(in)begin

	out <= mem[in];
	
end

endmodule