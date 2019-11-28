load q1.asm,
output-file q1.out,
compare-to q1.cmp,
output-list RAM[2]%D2.6.2;

set RAM[0] 0,
set RAM[1] 0,
repeat 20 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 1,
set RAM[1] 0,
repeat 20 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 7,
set RAM[1] 8,
repeat 20 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 100,
set RAM[1] 139,
repeat 20 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 82,
set RAM[1] 14,
repeat 20 {
  ticktock;
}
output;