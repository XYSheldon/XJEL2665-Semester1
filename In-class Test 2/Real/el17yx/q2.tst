load q2.asm,
output-file q2.out,
compare-to q2.cmp,
output-list RAM[2]%D2.6.2 RAM[3]%D2.6.2;

set RAM[0] 0,
set RAM[1] 1,
repeat 200 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 1,
set RAM[1] 1,
repeat 200 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 7,
set RAM[1] 8,
repeat 200 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 10000,
set RAM[1] 139,
repeat 2000 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 82,
set RAM[1] 14,
repeat 200 {
  ticktock;
}
output;