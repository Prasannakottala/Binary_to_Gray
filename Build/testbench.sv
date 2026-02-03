// Code your testbench here
// or browse Examples
module tb();
  reg [2:0] binary;
  wire [2:0] gray;
  binary_to_gray dut(binary,gray);
  initial begin
    $monitor("$binary=%0b,$gray=%0d",binary,gray);
    binary =4'b000; #10;
    binary =4'b001; #10;
    binary =4'b010; #10;
    binary =4'b011; #10;
    binary =4'b100; #10;
    binary =4'b101; #10;
    binary =4'b110; #10;
    binary =4'b111; #10;
    $finish;
  end
    initial begin
      $dumpfile("dumpfile.vcd");
      $dumpvars;
  end
endmodule
    