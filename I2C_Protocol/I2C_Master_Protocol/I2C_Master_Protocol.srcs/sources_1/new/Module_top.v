`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2026 08:29:25 AM
// Design Name: NGO VAN HAT
// Module Name: Module_top
// Project Name: I2C Protocol master 
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


module Module_top(
    input clk,  // su dung tan so 100mhz
    input resetn, // thuc hien tich cuc o muc thap 
    // i2c interface 
    output scl, 
    input sda_in, 
    output sda_out
    // thuc hien qua trinh xu ly cho du lieu dau vao
    );
    
    // THUC HIEN CHIA TAN SO BANG COUNTER ////////////////////////////////////////////////////////
    localparam Thresold_clk = 10;
    reg [31:0] couter_clk =10; 
    reg clk_reg =0;
    wire clk_buf;
    
    always @(posedge clk or negedge resetn) begin 
        if(!resetn) begin couter_clk <=0; clk_reg <=0; end 
        else begin 
            if(couter_clk >= (Thresold_clk-1)) begin 
                couter_clk <= 0;
                clk_reg <= ~clk_reg; 
            end else begin couter_clk <= couter_clk +1; end 
        end 
    end 
    assign clk_buf = clk_reg; 
    ///////////////////////////////////////////////////////////////////////////////////////////
    assign scl = clk_buf;
    
endmodule
