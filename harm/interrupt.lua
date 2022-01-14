[ENABLE]
{$lua}
local checkAnim = 42902
local skip = {}
local resetAsmString = [[
ThrowPacArgu+20:
db 01
ThrowPacArgu+22:
db 01
ThrowPacArgu+21:
db D0
ThrowPacArgu+23:
db D0
]]
local function BeatBlackCrystal()
  for i = 1,5 do
      if readInteger(addOfOthers[i].level) then
          local am = readInteger(addOfOthers[i].animation[1])
          local hp = readInteger(addOfSelf.hp)
          if am == checkAnim and not skip[i] then
            if not readInteger(addOfSelf.hp) then return end
			local apAddr = addOfOthers[i].ap
			local setAsmString = [[
			ThrowPacArgu+20:
			readmem(]]..apAddr..[[,1)
			ThrowPacArgu+22:
			readmem(]]..apAddr..[[,1)
			ThrowPacArgu+21:
			db D0
			ThrowPacArgu+23:
			db D0
			ThrowPacArgu:
			dd 0,0,0,0,0,0,0,0
			ThrowPacArgu+24:
			db 3C F8 07 00
			CREATETHREAD(ThrowPacketFunc)
			]]
			autoAssemble(setAsmString)
            skip[i] = true
          else
		    autoAssemble(resetAsmString)
            skip[i] = nil
          end
      end
  end
end
BeatBlackCrystalt = createTimer()
BeatBlackCrystalt.Interval = 5
BeatBlackCrystalt.OnTimer = BeatBlackCrystal
{$asm}
[DISABLE]
{$lua}
BeatBlackCrystalt.destroy()
BeatBlackCrystalt = nil