`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 02:32:51 PM
// Design Name: 
// Module Name: concatenation
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


module concatenation(
//declaración de entradas y salidad
    input logic a1,
    input logic [3:0] a4,
    output logic [7:0] b8,c8, d8

);
//concatenación
    assign b8 = {a4, a4};
    assign c8 = {a1, a1, a4, 2'b00};
    assign d8 = {b8[3:0], c8[3:0]};
//fin
endmodule
