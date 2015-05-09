`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:00 03/12/2015 
// Design Name: 
// Module Name:    clkregen 
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
module clkregen #(parameter size = 31)(
input clk, en, reset,
input[size:0] in, 
output reg[size:0] out
    );
	 
initial 
	begin
		out <= 0;
	end

always @ (posedge clk)
	
	if(reset) out <= 0;
	else 	
		begin
			if(en) out <= in;
		end

endmodule

