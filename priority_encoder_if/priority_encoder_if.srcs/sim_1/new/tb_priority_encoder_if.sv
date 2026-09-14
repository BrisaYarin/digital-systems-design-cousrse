`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2026 06:36:15 PM
// Design Name: 
// Module Name: tb_priority_encoder_if
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

module tb_priority_encoder_if;

//Declaracion de senales
    logic [3:0] p_in;
    logic [2:0] p_code;
//Circuito a prueba
    priority_encoder_if test (.p_in(p_in),.p_code(p_code));

    initial begin
        $monitor("Tiempo = %0t | p_in = %b | p_code = %b", $time, p_in, p_code);
//vectores a pruebas
        p_in = 4'b0000;
        #10;

        p_in = 4'b0010;
        #10;

        p_in = 4'b0011;
        #10;

        p_in = 4'b0100;
        #10;

        p_in = 4'b0101;
        #10;

        p_in = 4'b1000;
        #10;
        p_in = 4'b1111;
        #10;
//Terminar simulacion
        $stop;
    end

endmodule
