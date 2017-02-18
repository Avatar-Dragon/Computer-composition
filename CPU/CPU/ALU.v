`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:44 04/21/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(zero, result, A, B, ALUOp
    );
	 input [31:0] A, B;
	 input [2:0] ALUOp;
	 output [31:0] result;
	 output zero;
	 reg [31:0] result;
	 reg zero;
	 
         always @ (A or B or ALUOp) begin
                 case (ALUOp)
					        3'b000: result = A + B;
							  3'b001: result = A - B;
							  3'b010: result = B - A;
							  3'b011: result = A | B;
							  3'b100: result = A & B;
							  3'b101: result = (~A) & B;
							  3'b110: result = A ^ B;
							  3'b111: result = ~(A ^ B);
					  endcase
					  if (result == 0) zero = 1;
					  else zero = 0;
			end
endmodule
