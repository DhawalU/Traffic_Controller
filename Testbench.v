<<<<<<< HEAD
`timescale 10 ns/ 1 ps
module tb_traffic;

// DUT Input regs
reg clk;
reg rst_n;
reg sensor;
wire [2:0] light_farm;
// DUT Output wires
wire [2:0] light_highway;

// DUT Instantiation
traffic_light tb(light_highway, light_farm, sensor, clk, rst_n);

 //clock generation
 always #1 clk=~clk;
 initial
 begin
  $monitor("TIME = %d, clk=%b, reset = %b, sensor = %b, light of highway = %b, light of farm road = %b",$time, rst_n ,sensor, light_highway, light_farm);
  rst_n = 0; sensor = 0;       // At time 0
  #2 rst_n = 1; sensor = 0;              // At time 20 ns
  #60 rst_n = 1; sensor = 1;             // At time 600 ns
  #60.1 rst_n = 1; sensor = 1;           // At time 601 ns
  #62.5 rst_n = 1; sensor = 1;           // At time 625 ns
  #70.5 rst_n = 1; sensor = 1;           // At time 705 ns
  #72.9 rst_n = 1; sensor = 1;           // At time 729 ns
  #73.1 rst_n = 1; sensor = 1;           // At time 731 ns
  #75.3 rst_n = 1; sensor = 1;           // At time 753 ns
  #83.3 rst_n = 1; sensor = 1;           // At time 833 ns
  #85.7 rst_n = 1; sensor = 1;           // At time 857 ns
  #85.9 rst_n = 1; sensor = 1;           // At time 859 ns
  #88.1 rst_n = 1; sensor = 1;           // At time 881 ns
  #96.1 rst_n = 1; sensor = 1;           // At time 961 ns
  #98.5 rst_n = 1; sensor = 1;           // At time 985 ns
  #98.7 rst_n = 1; sensor = 1;           // At time 987 ns
  #100.9 rst_n = 1;sensor = 1;           // At time 1009 ns
 $finish;
 end
endmodule
=======
`timescale 10 ns/ 1 ps
module tb_traffic;

// DUT Input regs
reg clk;
reg rst_n;
reg sensor;
wire [2:0] light_farm;
// DUT Output wires
wire [2:0] light_highway;

// DUT Instantiation
traffic_light tb(light_highway, light_farm, sensor, clk, rst_n);

 //clock generation
 always #1 clk=~clk;
 initial
 begin
  $monitor("TIME = %d, clk=%b, reset = %b, sensor = %b, light of highway = %b, light of farm road = %b",$time, rst_n ,sensor, light_highway, light_farm);
  rst_n = 0; sensor = 0;       // At time 0
  #2 rst_n = 1; sensor = 0;              // At time 20 ns
  #60 rst_n = 1; sensor = 1;             // At time 600 ns
  #60.1 rst_n = 1; sensor = 1;           // At time 601 ns
  #62.5 rst_n = 1; sensor = 1;           // At time 625 ns
  #70.5 rst_n = 1; sensor = 1;           // At time 705 ns
  #72.9 rst_n = 1; sensor = 1;           // At time 729 ns
  #73.1 rst_n = 1; sensor = 1;           // At time 731 ns
  #75.3 rst_n = 1; sensor = 1;           // At time 753 ns
  #83.3 rst_n = 1; sensor = 1;           // At time 833 ns
  #85.7 rst_n = 1; sensor = 1;           // At time 857 ns
  #85.9 rst_n = 1; sensor = 1;           // At time 859 ns
  #88.1 rst_n = 1; sensor = 1;           // At time 881 ns
  #96.1 rst_n = 1; sensor = 1;           // At time 961 ns
  #98.5 rst_n = 1; sensor = 1;           // At time 985 ns
  #98.7 rst_n = 1; sensor = 1;           // At time 987 ns
  #100.9 rst_n = 1;sensor = 1;           // At time 1009 ns
 $finish;
 end
endmodule
>>>>>>> 8111d8b5314cc41b7c81e4665a884e9d3aa39508
