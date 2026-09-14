`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 03:40:23 PM
// Design Name: 
// Module Name: concatenation_replication_shift
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


module concatenation_replication_shift(
//declaración de entrada y salidas
    input logic [7:0] a,
    output logic [7:0] rotate,shift_left,shift_arithmetic

);

    //Desplaza  ala derecha 
    assign rotate = {a[2:0], a[7:3]};

    // Desplaza a la derecha y agrega 3 bits
    assign shift_left = {3'b000, a[7:3]};

    // Desplaza hacia la derecha y llenar con MSB
    assign shift_arithmetic = {{3{a[7]}}, a[7:3]};
   //fin
endmodule
