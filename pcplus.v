`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:01 03/12/2015 
// Design Name: 
// Module Name:    pcplus 
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
module pcplus#(parameter CSIZE = 31)(
input reset,
input[CSIZE:0] in,
output reg[CSIZE:0]out
    );

initial 
begin
out <= 0;
end

always@*
begin

	if(reset) out <= 0;
	else out <= in + 1;

end

endmodule
