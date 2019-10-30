load q3.asm,
output-file q3.out,
compare-to q3.cmp,
output-list RAM[2]%D2.6.2;

//////////////////// test 1

set PC 0,
set RAM[0] 0,   // Set test arguments
set RAM[1] 0,
repeat 200 {
  ticktock;
}
output;

/////////////////// test 2

set PC 0,
set RAM[0] 2,   // Set test arguments
set RAM[1] 3,
repeat 200 {
  ticktock;
}
output;

/////////////////// test 3

set PC 0,
set RAM[0] 3,   // Set test arguments
set RAM[1] 3,
repeat 200 {
  ticktock;
}
output;

/////////////////// test 4

set PC 0,
set RAM[0] 5,   // Set test arguments
set RAM[1] 2,
repeat 200 {
  ticktock;
}
output;

/////////////////// test 5

set PC 0,
set RAM[0] 8,   // Set test arguments
set RAM[1] 1,
repeat 200 {
  ticktock;
}
output;
