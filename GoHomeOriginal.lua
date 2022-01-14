[ENABLE]
{$lua}
if not syntaxcheck then
local gohome = {
     {40,0x08,"00 00 80 BF"},
     {40,0x128,"07 00 00 00"},
     {40,0x0C,"00 00 00 00"},
}

ParamIterator("SpEffectParam",gohome,"gohomeOriginal")
end

{$asm}
[DISABLE]
{$lua}
if not syntaxcheck then
  ParamDepatcher("gohomeOriginal")
end

							