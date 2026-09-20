`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2026 02:32:38 PM
// Design Name: 
// Module Name: dont_care_tb
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

module dont_care_tb;

    // Declaración de las señales
    logic [1:0] a;
    logic y;

    // instancia del módulo
    dont_care test (
        .a(a),
        .y(y)
    );

    initial begin

        // Prueba 1: a = 00
        a = 2'b00;
        #10;

        // Prueba 2: a = 01
        a = 2'b01;
        #10;

        // Prueba 3: a = 10
        a = 2'b10;
        #10;

        // Prueba 4: a = 11
        a = 2'b11;
        #10;

        $stop;
    end
endmodule