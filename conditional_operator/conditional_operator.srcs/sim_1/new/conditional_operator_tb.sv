`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2026 05:53:24 PM
// Design Name: 
// Module Name: conditional_operator_tb
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

module conditional_operator_tb;

    // Declaración de las señales
    logic [3:0] a;
    logic [3:0] b;
    logic [3:0] max;
    // Instancia
    conditional_operator test (
        .a(a),.b(b),.max(max)
    );

    initial begin
        // Prueba 1
        a = 4'b0101;
        b = 4'b0011;
        #10;
        // Prueba 2
        a = 4'b0010;
        b = 4'b0111;
        #10;
        // Prueba 3
        a = 4'b1001;
        b = 4'b0100;
        #10;
        // Prueba 4
        a = 4'b0110;
        b = 4'b1010;
        #10;
        // Prueba 5
        a = 4'b1111;
        b = 4'b0010;
        #10;

        $stop;
    end
endmodule