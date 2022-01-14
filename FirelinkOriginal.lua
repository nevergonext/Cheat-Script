[ENABLE]
{$lua}
if syntaxcheck then return end
local Firelink = {
  {40,0x128,"95 0C 00 00"},
  {40,0x08,"00 00 80 BF"},
  {3221,0xC,"0A D7 23 3C"},
}

ParamIterator("SpEffectParam",Firelink,"FirelinkOriginal")

local function disableSelf(sender)
  sender.destroy()
  local addr=getAddressList().getMemoryRecordByDescription("强制回到祭祀场")
  memoryrecord_unfreeze(addr)
end

GoBackByEF3221t = createTimer()
GoBackByEF3221t.Interval = 1000
GoBackByEF3221t.OnTimer = disableSelf
{$asm}
[DISABLE]
{$lua}
if syntaxcheck then return end
GoBackByEF3221t.destroy()
GoBackByEF3221t = nil
ParamDepatcher("FirelinkOriginal")

