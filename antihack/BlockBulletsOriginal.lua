[ENABLE]
{$lua}
if not syntaxcheck then
local BlockBullets = {
  {113,0x10,"00 00 00 00"},
  {1000,0x04,"C4 9B 04 00"},
  {5221710,0x10,"00 00 00 00"},
  {5280190,0x10,"00 00 00 00"},
  {100062900,0x10,"00 00 00 00"},
  {100062910,0x10,"00 00 00 00"},
  {100082900,0x10,"00 00 00 00"},
  {100082910,0x10,"00 00 00 00"},
}
ParamIterator("Bullet",BlockBullets,"BlockBulletsOriginal")
end

[DISABLE]
{$lua}
if not syntaxcheck then
  ParamDepatcher("BlockBulletsOriginal")
end