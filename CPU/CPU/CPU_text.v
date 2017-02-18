`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:49:17 04/23/2016
// Design Name:   CPU_main
// Module Name:   E:/XILINX/project/CPU/CPU_text.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_text;

	// Inputs
	reg [31:0] Reset;

	// Instantiate the Unit Under Test (UUT)
	CPU_main uut (
		.Reset(Reset)
	);

	initial begin
		// Initialize Inputs
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#5000;
        
		// Add stimulus here

	end
      
endmodule

