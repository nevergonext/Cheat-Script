[ENABLE]
{$lua}
if syntaxcheck then return end

min = -20
max = 20

HEAD_S_PTR = "[[BaseA]+10]+3B0"
UPPER_S_PTR = "[[BaseA]+10]+3B4"
LEFTH_S_PTR = "[[BaseA]+10]+3C4"
LEFTL_S_PTR = "[[BaseA]+10]+3C8"
LOWER_S_PTR = "[[BaseA]+10]+3B8"
RIGHTH_S_PTR = "[[BaseA]+10]+3BC"
RIGHTL_S_PTR = "[[BaseA]+10]+3C0"

oldHS = readFloat(HEAD_S_PTR)
oldUS = readFloat(UPPER_S_PTR)
oldLHS = readFloat(LEFTH_S_PTR)
oldLLS = readFloat(LEFTL_S_PTR)
oldLS = readFloat(LOWER_S_PTR)
oldRHS = readFloat(RIGHTH_S_PTR)
oldRLS = readFloat(RIGHTH_S_PTR)

function OgreDrive()
  writeFloat(HEAD_S_PTR, math.random(min,max))
  writeFloat(UPPER_S_PTR, math.random(min,max))
  writeFloat(LEFTH_S_PTR, math.random(min,max))
  writeFloat(LEFTL_S_PTR, math.random(min,max))
  writeFloat(LOWER_S_PTR, math.random(min,max))
  writeFloat(RIGHTH_S_PTR, math.random(min,max))
  writeFloat(RIGHTL_S_PTR, math.random(min,max))
end

OgreDrive()
if(OgreDriveTimer == nil) then
  OgreDriveTimer = createTimer(getMainForm())
  OgreDriveTimer.Interval = 100
  OgreDriveTimer.OnTimer = function(timer)
    OgreDrive()
  end
end
OgreDriveTimer.setEnabled(true)

[DISABLE]
{$lua}
if OgreDriveTimer ~= nil then
OgreDriveTimer.setEnabled(false)
end
  writeFloat(HEAD_S_PTR, oldHS)
  writeFloat(UPPER_S_PTR, oldUS)
  writeFloat(LEFTH_S_PTR, oldLHS)
  writeFloat(LEFTL_S_PTR, oldLLS)
  writeFloat(LOWER_S_PTR, oldLS)
  writeFloat(RIGHTH_S_PTR, oldRHS)
  writeFloat(RIGHTL_S_PTR, LOWER_S_PTR)