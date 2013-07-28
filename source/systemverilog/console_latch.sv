//74HC573 QUAD LATCH
module console_latch(
		     input logic       le,
		     input logic       n_oe,
		     input logic [7:0] d_in,
		     output logic [7:0] d_out     
		     )
  assign d_out = (le==1 && n_oe==0)?d_out:8'hzz;
  
endmodule // console_latch

    
