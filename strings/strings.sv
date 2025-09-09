module string_ops (
  input  string firstname,
  input  string lastname,
  output string fullname,
  output string replicated,
  output byte   first_char,
  output byte   last_char,
  output logic  is_equal,
  output logic  is_less,
  output logic  is_greater
);
  
  always_comb begin
    is_equal   = (firstname == lastname);
    is_less    = (firstname < lastname);
    is_greater = (firstname > lastname);

    fullname   = {firstname, " ", lastname};
    
    replicated = {3{firstname}};
    
    first_char = firstname.len() > 2 ? firstname[2] : 0;
    last_char  = lastname.len() > 2  ? lastname[2]  : 0;
  end
endmodule
