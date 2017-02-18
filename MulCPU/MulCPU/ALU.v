`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:31:45 05/11/2016 
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
module ALU(zero, result, A, regRes, exRes, ALUSrcB, ALUOp
    );
	 input [31:0] A, regRes, exRes;
	 input [2:0] ALUOp;
	 input ALUSrcB;
	 output [31:0] result;
	 output zero;
	 reg [31:0] result, B;
	 reg zero;
	 
         always @ (A or B or ALUOp or regRes or exRes or ALUSrcB) begin
			        if (ALUSrcB == 0) B = regRes;
					  else B = exRes;
                 case (ALUOp)
					        3'b000: result = A + B;
							  3'b001: result = A - B;
							  3'b010: begin
							      if (A < B) result = 1;
									else result = 0;
							  end
							  3'b011: result = A >> B;
							  3'b100: result = A << B;
							  3'b101: result = A | B;
							  3'b110: result = A & B;
							  3'b111: result = A ^ B;
					  endcase
					  if (result == 0) zero = 1;
					  else zero = 0;
			end


endmodule
