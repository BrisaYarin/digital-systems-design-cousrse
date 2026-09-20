`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2026 06:35:21 PM
// Design Name: 
// Module Name: tristate_buffer_tb
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

module tristate_buffer_tb;

    // Declaración de las señales
    logic a_input;
    logic out_enable;
    tri y_output;

    // Instancia del módulo
    tristate_buffer test (
        .a_input(a_input),
        .out_enable(out_enable),
        .y_output(y_output)
    );

    initial begin

        // Prueba 1: Buffer deshabilitado
        a_input = 1'b0;
        out_enable = 1'b0;
        #10;
        // Prueba 2: Buffer deshabilitado
        a_input = 1'b1;
        out_enable = 1'b0;
        #10;
        // Prueba 3: Buffer habilitado y entrada en 0
        a_input = 1'b0;
        out_enable = 1'b1;
        #10;
        // Prueba 4: Buffer habilitado y entrada en 1
        a_input = 1'b1;
        out_enable = 1'b1;
        #10;

        // Prueba 5: Buffer habilitado con entrada en 1
        a_input = 1'b0;
        out_enable = 1'b0;
        #10;

        $stop;
    end
endmodule
