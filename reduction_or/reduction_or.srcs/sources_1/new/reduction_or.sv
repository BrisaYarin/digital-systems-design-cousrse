`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 12:12:39 PM
// Design Name: 
// Module Name: reduction_or
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


module reduction_or(
//declaración de entrada y salida
    input logic [3:0] a,
    output logic y
);
//Reducción OR
    assign y = |a;
//Fin del programa
endmodule
