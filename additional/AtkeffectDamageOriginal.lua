[ENABLE]
{$lua}
if not syntaxcheck then
local Atkeffect1 = {
  {31,0x128,"42 0E 00 00"},
  {31,0x0C,"00 00 00 00"},
  {3650,0x98,"97 CA 1D 06"},
}
local Atkeffect1damage = {
  {100161601,0x6C,"A6 2C 00 00"},
}
ParamIterator("SpEffectParam",Atkeffect1,"Atkeffect1Original")
ParamIterator("Bullet",Atkeffect1damage,"Atkeffect1damageOriginal")
end

{$asm}
[DISABLE]
{$lua}
if not syntaxcheck then
      ParamDepatcher("Atkeffect1Original")
      ParamDepatcher("Atkeffect1damageOriginal")
end
							