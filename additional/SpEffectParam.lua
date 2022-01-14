[ENABLE]
{$lua}
if not syntaxcheck then
local darkblade3 = {
  {40,0x128,"80 40 2F 06"},
  {40,0x0C,"CD CC CC 3D"},
  {103760000,0x128,"6D 99 C0 07"},
  {103760000,0x0C,"17 B7 D1 38"},
  {103760000,0x08,"00 00 80 BF"},
  {130062701,0x128,"80 40 2F 06"},
  {130062701,0x0C,"17 B7 D1 38"},
  {130062701,0x08,"00 00 80 BF"},
}
ParamIterator("SpEffectParam",darkblade3,"darkblade3Original")
end

[DISABLE]
{$lua}
if not syntaxcheck then
  ParamDepatcher("darkblade3Original")
end