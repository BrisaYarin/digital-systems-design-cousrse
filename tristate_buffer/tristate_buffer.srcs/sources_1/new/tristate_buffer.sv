`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2026 06:30:33 PM
// Design Name: 
// Module Name: tristate_buffer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tristate_buffer(
//declaración de entradas y salidas
    input logic a_input,
    input logic out_enable,
    output tri y_output
);
// conditional tristate
    assign y_output = (out_enable) ? a_input : 1'bz;
endmodule
