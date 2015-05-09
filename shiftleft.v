`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:25:44 03/17/2015 
// Design Name: 
// Module Name:    shiftleft 
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
module shiftleft #(parameter size = 31)(

input[size:0] in, 
output[size:0] out

    );

assign out = in << 2;

endmodule
