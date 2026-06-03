`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2026 08:58:25 AM
// Design Name: 
// Module Name: Simulator
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


module Simulator();
    reg clk; 
    reg resetn; 
    wire scl; 
    
    reg sda_in;
    wire sda_out;
    
    // thuc hien test
    Module_top test_1(
    .clk(clk), 
    .resetn(resetn), 
    .scl(scl), 
    .sda_in(sda_in), 
    .sda_out(sda_out)
    ); 
    
    always #1 clk = ~clk; 
    
    initial  
    begin 
    clk =0; resetn =1;
    #1 resetn =1;
    #1 resetn =1;
    end 
endmodule
