`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 03:46:04 PM
// Design Name: 
// Module Name: concatenation_replication_shift_tb
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


module concatenation_replication_shift_tb;

    // Declaración de las señales
    logic [7:0] a;
    logic [7:0] rotate, shift_left, shift_arithmetic;

    // Instancia
    concatenation_replication_shift test (
        .a(a),
        .rotate(rotate),
        .shift_left(shift_left),
        .shift_arithmetic(shift_arithmetic)
    );

    initial begin

        // Prueba 1
        a = 8'b10110110;
        #10;

        // Prueba 2
        a = 8'b11001001;
        #10;

        // Prueba 3
        a = 8'b01101100;
        #10;

        // Prueba 4
        a = 8'b11110000;
        #10;

        // Prueba 5
        a = 8'b00001111;
        #10;

        $stop;
    end
endmodule
