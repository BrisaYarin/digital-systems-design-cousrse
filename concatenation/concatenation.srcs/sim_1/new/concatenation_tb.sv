`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 02:42:16 PM
// Design Name: 
// Module Name: concatenation_tb
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


module concatenation_tb;
//DeclaraciÓn de las señales
    logic a1;
    logic [3:0] a4;

    logic [7:0] b8,c8,d8;
//Instancia 
    concatenation test (
        .a1(a1),.a4(a4),.b8(b8),.c8(c8),.d8(d8)
    );

    initial begin
//Pruebas
//prueba 1
        a1 = 1'b0;
        a4 = 4'b0000;
        #10;
//prueba 2
        a1 = 1'b1;
        a4 = 4'b1010;
        #10;
//prueba 3
        a1 = 1'b0;
        a4 = 4'b1100;
        #10;
//prueba 4
        a1 = 1'b1;
        a4 = 4'b1111;
        #10;
//prueba 5
        a1 = 1'b1;
        a4 = 4'b0101;
        #10;
        
        $stop;

    end
endmodule
