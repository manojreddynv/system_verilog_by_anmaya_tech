//Behavioral level
module and_gate (a,b,y);
  input logic a;
  input logic b;
  output logic y;
  

  always_comb begin 
    if(a == 1'b1 && b == 1'b1) begin 
      y = 1'b1;
    end 
    else begin 
      y = 1'b0;
    end 
  end 
endmodule 
  
//RTL coding (dataflow modeling )
  module andgate(input logic a1,input logic b1,output logic y1);
    
  assign y1 = a1&b1;
  endmodule 
  
  
  // gate level coding 
  module and__gate ( input logic a2,input logic b2, output logic y2);
    
    and u1 (y2, a2, b2);
  endmodule 

     
