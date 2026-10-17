Design
---------------------------------------------
module up_counter(clock,reset,count) ;
  input clock,reset ;
  output reg [3:0] count=4'b0000 ;
  
  always @ (posedge clock) begin
    if (reset==1)
      count<=4'b0000;
    else
      count<= count + 1;
  end
endmodule 
--------------------------------------------------------

