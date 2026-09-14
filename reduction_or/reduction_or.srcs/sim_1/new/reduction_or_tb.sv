`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 12:28:32 PM
// Design Name: 
// Module Name: reduction_or_tb
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


module reduction_or_tb;
//Declaración de señales
    logic [3:0] a;
    logic y;
//intanciación
    reduction_or test (
        .a(a),
        .y(y)
    );
//Comienzo del bloque de intancia
    initial begin
// valores a prueba
        a = 4'b0000;
        #10;//10 ns

        a = 4'b0001;
        #10;

        a = 4'b0010;
        #10;

        a = 4'b0100;
        #10;

        a = 4'b1000;
        #10;

        a = 4'b1010;
        #10;

        a = 4'b1111;
        #10;

        a = 4'b0000;
        #10;

        $stop;
//fin
    end
endmodule