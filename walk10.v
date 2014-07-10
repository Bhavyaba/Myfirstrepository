//
//	Copyright (c) 2003 HDL Express.
//	All rights reserved.
//
//	E-mail: verilog@hdlexpress.com
//	World Wide Web: http://www.hdlexpress.com	
//

module MODEL;

reg [15:0] R, temp;
integer i;

initial begin
  R = 16'hE7A0;
end

always begin
for (i = 0 ; i <= 15; i= i + 1) begin
temp[15-i] = ~R[i];
end 
$display(" value is %h",temp);
$finish;  
end
  
endmodule
