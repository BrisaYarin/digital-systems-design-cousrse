`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2026 07:25:03 PM
// Design Name: 
// Module Name: bidirectional_port_tb
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


module bidirectional_port_tb;

    // Declaración de las señales
    logic direction;
    logic signal_in;
    logic signal_out;
    tri bidirectional;

    logic external_signal;
    
    // Instancia del módulo
    bidirectional_port test (
        .direction(direction),
        .signal_in(signal_in),
        .signal_out(signal_out),
        .bidirectional(bidirectional)
    );

    // Dispositivo externo
    assign bidirectional = (!direction) ? external_signal : 1'bz;

    initial begin

        // Prueba 1: El módulo funciona como salida y envía 0
        direction = 1'b1;
        signal_in = 1'b0;
        external_signal = 1'bz;
        #10;

        // Prueba 2: El módulo funciona como salida y envía 1
        direction = 1'b1;
        signal_in = 1'b1;
        external_signal = 1'bz;
        #10;

        // Prueba 3: El módulo funciona como entrada y recibe 0
        direction = 1'b0;
        signal_in = 1'b0;
        external_signal = 1'b0;
        #10;

        // Prueba 4: El módulo funciona como entrada y recibe 1
        direction = 1'b0;
        signal_in = 1'b0;
        external_signal = 1'b1;
        #10;

        // Prueba 5: El pin queda sin ningún dispositivo manejándolo
        direction = 1'b0;
        signal_in = 1'b0;
        external_signal = 1'bz;
        #10;

        $stop;
    end
endmodule