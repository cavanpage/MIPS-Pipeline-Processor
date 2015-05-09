`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:53:43 03/12/2015 
// Design Name: 
// Module Name:    signextend 
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
module signextend #(parameter CSIZE = 31, LSIZE = 15)(
input[LSIZE:0] in,
output[CSIZE:0] out
    );

assign out = {{16{in[LSIZE]}}, {in[LSIZE:0]}};

endmodule
