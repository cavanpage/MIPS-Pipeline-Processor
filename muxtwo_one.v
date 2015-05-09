`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:08 03/12/2015 
// Design Name: 
// Module Name:    muxtwo_one 
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
module muxtwo_one #(parameter size = 31 )(
input in,
input[size:0] a, b,
output[size:0] out
    );

assign out = in ? b: a; 

endmodule
