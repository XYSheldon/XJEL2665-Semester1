load q1.asm,
output-file q1.out,
compare-to q1.cmp,
output-list RAM[2]%D2.6.2;

//////////////////// test 1

set PC 0,
set RAM[0] 0,   // Set test arguments
set RAM[1] 0,
repeat 50 {
  ticktock;
}
output;

/////////////////// test 2

set PC 0,
set RAM[0] 0,   // Set test arguments
set RAM[1] 1,
repeat 50 {
  ticktock;
}
output;

/////////////////// test 3

set PC 0,
set RAM[0] 5,   // Set test arguments
set RAM[1] 20,
repeat 50 {
  ticktock;
}
output;

/////////////////// test 4

set PC 0,
set RAM[0] 10,   // Set test arguments
set RAM[1] 23,
repeat 50 {
  ticktock;
}
output;

/////////////////// test 5

set PC 0,
set RAM[0] 50,   // Set test arguments
set RAM[1] 49,
repeat 50 {
  ticktock;
}
output;
