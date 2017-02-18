`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:01:54 04/22/2016
// Design Name:   Extend
// Module Name:   E:/XILINX/project/CPU/Extend_text.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Extend_text;

	// Inputs
	reg [15:0] Data;
	reg ExtSel;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	Extend uut (
		.result(result), 
		.Data(Data), 
		.ExtSel(ExtSel)
	);

	initial begin
		// Initialize Inputs
		Data = 0;
		ExtSel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Data = 1;
		ExtSel = 0;
		
		#100;
		Data = 1;
		ExtSel = 1;
		
		#100;
		Data = -1;
		ExtSel = 0;
		
		#100;
		Data = -1;
		ExtSel = 1;
		
		
        
		// Add stimulus here

	end
      
endmodule

