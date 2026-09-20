`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2026 02:31:06 PM
// Design Name: 
// Module Name: dont_care
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
module dont_care(
//declaración de entrada y salida
    input logic [1:0] a,
    output logic y
);
//condicones
    assign y = (a == 2'b00) ? 1'b0 :
               (a == 2'b01) ? 1'b1 :
               (a == 2'b10) ? 1'b1 :
                              1'bx; //dont care
endmodule