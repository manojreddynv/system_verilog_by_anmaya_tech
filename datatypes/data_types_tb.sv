module datatype_tb;

  logic clk;
  logic rst_n;
  logic [7:0] data_in;
  logic [7:0] data_out;
  
  datatype_design dut (
    .clk(clk),
    .rst_n(rst_n),
    .data_in(data_in),
    .data_out(data_out)
  );
  
  initial clk = 0;
  always #5 clk = ~clk;

 
  initial begin
    rst_n = 0;
    #10 rst_n = 1;
  end

 
  bit      b;      
  logic    l;      

  logic signed   [7:0] s_byte = -8'd5;
  logic unsigned [7:0] u_byte = 8'd5;

  byte     b_val = 8'd127;
  shortint s_val = 16'd30000;
  int      i_val = 32'd2000000000;
  longint  l_val = 64'd100000000000;

  logic [3:0] packed_array;         
  logic       unpacked_array [3:0]; 
  int         dynamic_array [];     

  typedef enum logic [1:0] {
    RED = 2'b00,
    GREEN = 2'b01,
    BLUE = 2'b10
  } color_t;
  color_t color;

  typedef struct {
    int id;
    string name;
  } student_t;
  student_t student;

  initial begin
    // 2-state vs 4-state
    b = 1;
    l = 1'bx;
    $display("bit b = %0b, logic l = %0b", b, l);

    //  Signed vs Unsigned
    $display("Signed = %0d, Unsigned = %0d", s_byte, u_byte);

    //  Integer types
    $display("byte = %0d, shortint = %0d, int = %0d, longint = %0d", 
              b_val, s_val, i_val, l_val);

    //  Arrays
    packed_array = 4'b1010;
    unpacked_array[0] = 1;
    unpacked_array[1] = 0;
    unpacked_array[2] = 1;
    unpacked_array[3] = 0;

    dynamic_array = new[4];
    foreach(dynamic_array[i]) dynamic_array[i] = i;

    $display("Packed: %b", packed_array);
    $display("Unpacked: %p", unpacked_array);
    $display("Dynamic: %p", dynamic_array);

    //  Enum
    color = BLUE;
    $display("Enum color = %s", color.name());

    //  Structure
    student.id = 405;
    student.name = "manoj";
    $display("Student ID = %0d, Name = %s", student.id, student.name);

    // Drive DUT input
    data_in = 8'h20;
    #20
    $display("DUT Output = %h", data_out);

    #30 $finish;
  end

endmodule
