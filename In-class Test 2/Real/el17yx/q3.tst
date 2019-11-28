load q3.asm,
output-file q3.out,
compare-to q3.cmp,
output-list RAM[2]%D2.6.2;

set RAM[0] 0,
set RAM[1] 0,
repeat 200 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 1,
set RAM[1] 0,
repeat 200 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 1,
set RAM[1] 8,
repeat 200 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 100,
set RAM[1] 4,
repeat 200 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 42,
set RAM[1] 9,
repeat 200 {
  ticktock;
}
output;