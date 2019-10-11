load q2.hdl,
output-file q2.out,
compare-to q2.cmp,
output-list a%B2.8.2 b%B2.8.2 out%B2.1.2;

set a %B11100100,
set b %B11100100,
eval,
output;

set a %B10001110,
set b %B11100100,
eval,
output;

set a %B00000000,
set b %B00000000,
eval,
output;
set a %B00001000,
set b %B01000000,
eval,
output;
set a %B11100100,
set b %B11100100,
eval,
output;
set a %B01000000,
set b %B01000000,
eval,
output;
set a %B00110000,
set b %B00011000,
eval,
output;
set a %B11111111,
set b %B11111111,
eval,
output;
set a %B10101010,
set b %B01010101,
eval,
output;
set a %B10101010,
set b %B10101010,
eval,
output;
set a %B00001111,
set b %B00011111,
eval,
output;
