`timescale 1ns / 1ps

module subtractor4bit(a,b,out,borrow);
input [3:0]a,b;
output [3:0]out;
output borrow;
wire [3:0]b_2scomplement;
assign b_2scomplement=~b+4'b0001;

assign {borrow,out}=a+b_2scomplement;



endmodule
