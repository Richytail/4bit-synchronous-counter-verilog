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
Testbench
-------------------------------------------------
module up_counter_tb() ;
  reg clock,reset ;
  wire[3:0] count ;
  
  up_counter dut (clock,reset,count) ;
  
initial begin
	clock = 0 ;
    forever #10 clock =~clock ;
end
  
initial begin
  	$dumpfile("dump.vcd") ;
    $dumpvars(0,dut);
    $monitor("Time=%0t clock =%b reset =%b count =%b", $time,clock,reset,count);
    #0 reset=1;
    #25 reset=0;
    
    repeat(40)
      @ (posedge clock);
  
  $finish();
end 
endmodule
---------------------------------------------------------------
