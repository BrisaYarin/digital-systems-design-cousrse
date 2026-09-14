`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2026 07:12:12 PM
// Design Name: 
// Module Name: binary_decoder_if
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


module binary_decoder_if (
//Declaracion de puertos
    input  logic       a,
    input  logic [1:0] b,
    output logic [3:0] c
);
//Bloque combinacional
    always_comb begin
        if (!a) begin
            c = 4'b0000;
        end else if (b == 2'b00) begin
            c = 4'b0001;
        end else if (b == 2'b01) begin
            c = 4'b0010;
        end else if (b == 2'b10) begin
            c = 4'b0100;
        end else begin
            c = 4'b1000;
        end
    end
//fin 
endmodule
