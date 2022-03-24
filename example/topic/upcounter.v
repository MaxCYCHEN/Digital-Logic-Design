`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/28 15:36:36
// Design Name: 
// Module Name: upcounter
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
module upcounter(
input clock, reset,
output reg [3:0] an = 4'b0001,
output reg [7:0] seg = 8'd0
);
reg [26:0] cnt = 27'd1;
reg [3:0] num = 4'd0;
reg clock_1hz = 1'd1;
//100MHz ���W 1Hz
always@(posedge clock, negedge reset)
    if(!reset)
        cnt = 27'd1;
    else if(cnt == 27'd100_000_000)
        cnt = 27'd1;
    else
        cnt = cnt + 27'd1;
always@(posedge clock, negedge reset)
    if(!reset)
        clock_1hz = 1'd1;
    else if(cnt <= 27'd50_000_000)
        clock_1hz = 1'd1;
    else
        clock_1hz = 1'd0;
//�W��
always@(posedge clock_1hz, negedge reset)
    if(!reset)
        num = 4'd0;
    else if(num == 4'd9)
        num = 4'd0;
    else
        num = num + 4'd1;
//�C�q�ѽX
always@(num) begin
an = 4'b0001;
    case(num)
        4'd0: seg = 8'b11111100;
        4'd1: seg = 8'b01100000;
        4'd2: seg = 8'b11011010;
        4'd3: seg = 8'b11110010;
        4'd4: seg = 8'b01100110;
        4'd5: seg = 8'b10110110;
        4'd6: seg = 8'b10111110;
        4'd7: seg = 8'b11100000;
        4'd8: seg = 8'b11111110;
        4'd9: seg = 8'b11110110;
        default: seg = 8'b0;
    endcase
end
endmodule