`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2026 05:50:28 PM
// Design Name: 
// Module Name: conditional_operator
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


module conditional_operator(
//declaración de entradas y salida
    input logic [3:0] a,
    input logic [3:0] b,
    output logic [3:0] max
);//condición ?
    assign max = (a > b) ? a : b;
    //fin
endmodule
