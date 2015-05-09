`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:36 03/12/2015 
// Design Name: 
// Module Name:    registerfile 
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
module registerfile #(parameter SIZE = 31, ADSIZE = 4)(
input clk, WE3,
input[ADSIZE:0] a1, a2, a3,
input[SIZE:0] WD3,
output[SIZE:0] RD1, RD2
    );

integer i;
reg [SIZE:0] mem[0:SIZE];


assign RD1 = mem[a1];
assign RD2 = mem[a2];

initial begin

	for(i = 0; i < 32; i = i +1)
		begin
			mem[i] = i;
		end //end for loop

end //end initial


always @(negedge clk) begin//write ports clocked

	if(WE3)
		begin
			mem[a3] = WD3;
		end
	
end

endmodule