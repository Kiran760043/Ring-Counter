//////////////////////////////////////////////////////////////////////////////////
// Design: Ring Counter
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module ring_counter(clk, rst, out);

    parameter N = 4;
    
    input  wire clk;
    input  wire rst;
    output reg  [N-1:0] out;
    
    always@(posedge clk)
        begin
            if(rst==1) begin
                out <= 1;
            end else begin
                out[0]<=out[N-1];
                out[N-1:1]<=out[N-2:0];
            end
            
        end
   
endmodule
