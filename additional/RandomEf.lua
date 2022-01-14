[ENABLE]
{$lua}
local BUFFList = {
3910,
3920,
3930,
3940,
102431000,
102562000,
102440000,
102650000,
103560000,
103561000,
12170,
3290,
120700,
130091911,
1420050,
1420040,
120840,
}

local BUFFValue = "[[[[Param]+4A8]+68]+68]+1BB98"
local TotalBUFF = 0
for i,id in ipairs(BUFFList) do
  TotalBUFF = TotalBUFF +1
end

function RandomizeBUFF()

  local BUFFRandomInterval = 1

  local BUFFInterval = (BUFFRandomInterval / 1)
  local ChooseNextBUFF = math.random(1,TotalBUFF)
  local NextRandomBUFF = BUFFList[ChooseNextBUFF]
  writeInteger(BUFFValue, NextRandomBUFF)
  writeFloat(IntervalValue,BUFFInterval)
end

RandomizeBUFF()
if(randomBUFFimer == nil) then
  randomBUFFimer = createTimer()
  randomBUFFimer.Interval = 1
  randomBUFFimer.OnTimer = function(timer)
    RandomizeBUFF()
  end
end
randomBUFFimer.setEnabled(true)
[DISABLE]
{$lua}
if syntaxcheck then return end
if randomBUFFimer ~= nil then
  randomBUFFimer.setEnabled(false)
  local BUFFValue = "[[[[Param]+4A8]+68]+68]+1BB98"
  writeInteger(BUFFValue,11620000)
end
