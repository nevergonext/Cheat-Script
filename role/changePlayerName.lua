[ENABLE]
{$lua}
local chrNameTab1 = {}

local chrNameTab2 = {
  '[[key_addr_2]+10]+88' ,
  '[[[[key_addr_2]+10]+7c0]+0]+38' ,
  '[[[[key_addr_2]+10]+7b8]+c0]+38'
}

for i = 0 , 33 do chrNameTab1[(i + 1)] = 0 end

changePlayerName.CEButton1.Onclick = function (s)
    local str = changePlayerName.CEEdit1.Text

    if str ~= '' then
      if readInteger(chrNameTab2[1]) then
        for _ , v in pairs(chrNameTab2) do writeBytes(v , chrNameTab1) end
        writeString(chrNameTab2[1] , str , true)
      end
      if s.Caption == '确认修改' then s.Caption = '成功 ！' end
    else
      s.Caption = '失败 ！'
    end
end

changePlayerName.show()

changePlayerName.OnClose = function (s)
  local ptr = getAddressList()

  if ptr.getMemoryRecordByID(91354).Active then
    ptr.getMemoryRecordByID(91354).Active = false
  end
end

createNativeThread(function ()
    while (CHANGE_PLAY_NAMES) do
      if changePlayerName.CEButton1.Caption ~= '确认修改' then
        sleep(100)
        changePlayerName.CEButton1.Caption = '确认修改'
      end
      sleep(500)
    end
end)

if not CHANGE_PLAY_NAMES then CHANGE_PLAY_NAMES = true end
{$asm}

[DISABLE]
{$lua}
changePlayerName.hide()
CHANGE_PLAY_NAMES = nil
changePlayerName.CEEdit1.Text = ''
{$asm}