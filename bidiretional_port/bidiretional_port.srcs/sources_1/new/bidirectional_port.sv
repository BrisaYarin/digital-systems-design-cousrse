`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2026 07:10:22 PM
// Design Name: 
// Module Name: bidirectional_port
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


module bidirectional_port(
//declaracion de las entradas y salidas
    input logic direction,
    input logic signal_in,
    output logic signal_out,
    inout tri bidirectional
);

    // Bidirectional I/O pin
    assign bidirectional = (direction) ? signal_in : 1'bz;
    assign signal_out = bidirectional;
endmodule