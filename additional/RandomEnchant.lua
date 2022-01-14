[ENABLE]
{$lua}
local FUMOList = {
101310000,
101311000,
101312000,
102435000,
130061801,
130063401,
103760000,
130062701,
130069601,
103591000,
130061702,
103640000,
2170,
100910,
130069501,
130091910,
130100710,
101313000,
130041000,
}

local FUMOValue = "[[[[Param]+4A8]+68]+68]+1BB98"
local TotalFUMO = 0
for i,id in ipairs(FUMOList) do
  TotalFUMO = TotalFUMO +1
end

function RandomizeFUMO()

  local FUMORandomInterval = 1

  local FUMOInterval = (FUMORandomInterval / 1)
  local ChooseNextFUMO = math.random(1,TotalFUMO)
  local NextRandomFUMO = FUMOList[ChooseNextFUMO]
  writeInteger(FUMOValue, NextRandomFUMO)
  writeFloat(IntervalValue,FUMOInterval)
end

RandomizeFUMO()
if(randomFUMOimer == nil) then
  randomFUMOimer = createTimer()
  randomFUMOimer.Interval = 1
  randomFUMOimer.OnTimer = function(timer)
    RandomizeFUMO()
  end
end
randomFUMOimer.setEnabled(true)
[DISABLE]
{$lua}
if syntaxcheck then return end
if randomFUMOimer ~= nil then
  randomFUMOimer.setEnabled(false)
  local FUMOValue = "[[[[Param]+4A8]+68]+68]+1BB98"
  writeInteger(FUMOValue,101310000)
end
