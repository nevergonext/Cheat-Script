[ENABLE]
{$lua}
function disableSelf(sender)
  sender.destroy()
  local addr=getAddressList().getMemoryRecordByDescription("灭度常世众仙")
  memoryrecord_unfreeze(addr)
  local addr1=getAddressList().getMemoryRecordByDescription("邪魔外道")
  memoryrecord_unfreeze(addr1)
end

local t=createTimer(nil)
t.OnTimer=disableSelf
t.Interval=1000
t.Enabled=true
{$asm}
createthread(testcrash)
[DISABLE]
