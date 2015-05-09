`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:00 03/17/2015 
// Design Name: 
// Module Name:    muxregdst 
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
module muxregdst(

input[4:0] a, b,
input in,
output[4:0] out
    );

assign out = in? b: a;

endmodule
