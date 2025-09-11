// Code your design here
class Person;
  string name;
  int age;

  // Constructor
  function new(string name_in, int age_in);
    name = name_in;
    age = age_in;
  endfunction

  // display method or seqvence 
  function void display();
    $display("Name: %s, Age: %0d", name, age);
  endfunction
endclass
