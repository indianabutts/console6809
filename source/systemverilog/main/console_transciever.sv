//Based on the 74'HC245
//Used to Buffer the CPU Data bus.
module console_transciever(
			   input logic 	     oe_n,
			   inout logic 	     t_nr,
			   inout logic [7:0] a,
			   inout logic [7:0] b
			   )

always_comb
  begin: data_bus_assign
     if (oe_n == 0)
       begin
	  if (t_nr)
	    b=a;
	  else
	    a=b;
       end
     else
       begin
	  a=8'hzz;
	  b=8'hzz;
       end
  end
  
endmodule // console_transciever
