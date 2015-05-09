`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:20 03/12/2015 
// Design Name: 
// Module Name:    pcbranch 
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
module pcbranch #(parameter size = 31)(
input[size:0] offsetin, pcplus,
output[size:0] pcout
    );

assign pcout = offsetin + pcplus;

endmodule
