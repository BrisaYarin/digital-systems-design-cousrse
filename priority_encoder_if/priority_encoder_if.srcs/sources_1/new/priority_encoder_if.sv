`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2026 06:25:41 PM
// Design Name: 
// Module Name: priority_encoder_if
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


module priority_encoder_if (
//Declaracion 
    input  logic [3:0] p_in,
    output logic [2:0] p_code
);
//Bloque combinacional
    always_comb begin
        if (p_in[3]) begin
            p_code = 3'b100;
        end else if (p_in[2]) begin
            p_code = 3'b011;
        end else if (p_in[1]) begin
            p_code = 3'b010;
        end else begin
            p_code = 3'b000;
        end
    end

endmodule