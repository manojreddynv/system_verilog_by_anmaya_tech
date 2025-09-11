// Code your testbench here
`include "person_class.sv"

module tb_person_class;
  Person p1, p2; // Declare object handles

  initial begin
    // Allocate memory using 'new' and initializing values
    p1 = new("Alice", 25);
    p2 = new("Bob", 30);

    // Call the class method
    p1.display();
    p2.display();
  end
endmodule
