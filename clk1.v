`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:45 03/12/2015 
// Design Name: 
// Module Name:    clk1 
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
module clk1 # (parameter size = 31)(
input clk, en, clr, 
input[size:0] RD, PCPlusF,
output reg[size:0] InstrD, PCPlusD
    );


initial 
	begin
		InstrD <= 0;
		PCPlusD <= 0;
		
	end

always @*
	begin
		
	end

always @ (posedge clk)
begin	
		if(clr) 
			begin
				InstrD <= 0;
				PCPlusD <= 0;
			end
			
		if(en)
			begin
				InstrD <= RD;
				PCPlusD <= PCPlusF;
			end
end
endmodule
