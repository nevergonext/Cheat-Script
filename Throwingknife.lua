[ENABLE]
{$lua}
if not syntaxcheck then
local throwingknife = {
      {300,0x00,"F0 46 BE 00"},
      {300,0x04,"FF FF FF FF"},
      {300,0x08,"FF FF FF FF"},
      {300,0x14,"00 00 A0 41"},
      {300,0x18,"00 00 C8 41"},
      {300,0x44,"00 00 A0 40"},
      {300,0x6C,"00 97 2B 06"},
      {300,0x70,"6E 00 00 00"},
      {300,0x74,"7C D7 01 00"},
      {300,0x80,"0A 00 2D 00"},
      {300,0x82,"2D 00 00 00"},
      {300,0x92,"01 00 03 01"},
}
ParamIterator("Bullet",throwingknife,"default")
end

{$asm}
[DISABLE]
{$lua}
if not syntaxcheck then
ParamDepatcher("default")
end

