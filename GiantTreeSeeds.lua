[ENABLE]
{$lua}
if not syntaxcheck then
local Pontiffsword = {
     {370,0x3e,"11 00 00 00"},
}
local asdf = {
      {130,0x60,"74 0E 00 00"},
      {131,0x60,"74 0E 00 00"},
      }
ParamIterator("EquipParamGoods",Pontiffsword,"EquipParamGoods")
ParamIterator("Bullet",asdf,"asdfOriginal")
end



{$asm}
[DISABLE]
{$lua}
if not syntaxcheck then
  ParamDepatcher("EquipParamGoods")
ParamDepatcher("asdfOriginal")
end


