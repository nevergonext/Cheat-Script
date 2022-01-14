{$lua}
-------------- 构造物品ID表
local iGlobalLists={
  tool_items = {
    {tool_n='白标记蜡石' , tool_i='1073741924'},
    {tool_n='红标记蜡石' , tool_i='1073741925'},
    {tool_n='血红眼眸宝珠' , tool_i='1073741926'},
    {tool_n='法兰余烬' , tool_i='1073743927'},
    {tool_n='老者余烬' , tool_i='1073743928'},
    {tool_n='巨人余烬' , tool_i='1073743929'},
    {tool_n='罪业余烬' , tool_i='1073743930'},
    {tool_n='原素碎片' , tool_i='1073743965'},
    {tool_n='不死人遗骨' , tool_i='1073743967'},

  },
  all_items = {

    ['白标记蜡石']=1073741924,
    ['红标记蜡石']=1073741925,
    ['血红眼眸宝珠']=1073741926,
    ['法兰余烬']=1073743927,
    ['老者余烬']=1073743928,
    ['巨人余烬']=1073743929,
    ['罪业余烬']=1073743930,
    ['原素碎片']=1073743965,
    ['不死人遗骨']=1073743967,
  }
}

MasterParamTable = {}

---------------------------------------------------------------------- 构建指针
local Ds3_Pointer0=[[
aobscanmodule(hack_key_aob1,DarkSoulsIII.exe,48 8B 1D xx xx xx xx 48 8B F9 48 85 DB xx xx 8B 11 85 D2)
registersymbol(hack_key_aob1)

aobscanmodule(hack_key_aob2,DarkSoulsIII.exe,48 8B 05 xx xx xx xx 48 85 C0 xx xx 48 8B 40 xx C3)
registersymbol(hack_key_aob2)

aobscanmodule(hack_key_aob3,DarkSoulsIII.exe,48 8B 05 xx xx xx xx 48 8B 80 xx 0C 00 00)
registersymbol(hack_key_aob3)

aobscanmodule(hack_key_aob4,DarkSoulsIII.exe,48 8B 0D xx xx xx xx 48 85 C9 74 26 44 8B)
registersymbol(hack_key_aob4)

aobscanmodule(hack_key_aob6,DarkSoulsIII.exe,48 8B 86 xx xx xx xx 48 8B 88 xx xx xx xx 48 85 C9 xx xx 80 79)
registersymbol(hack_key_aob6)

aobscanmodule(hack_key_aob7,DarkSoulsIII.exe,80 3D xx xx xx xx 00 xx xx C7 83 xx 01 xx xx xx xx xx xx C7 83 xx 02 00 00)
registersymbol(hack_key_aob7)

aobscanmodule(hack_key_aob8,DarkSoulsIII.exe,48 8B 83 xx xx xx xx 48 85 C0 xx xx E8  xx xx xx xx 8b xx xx 48)
registersymbol(hack_key_aob8)

aobscanmodule(hack_key_aob9,DarkSoulsIII.exe,48 8B 80 xx xx xx xx F3 0F 10 7F)
registersymbol(hack_key_aob9)

aobscanmodule(VarFlagsAob0,DarkSoulsIII.exe,0F B6 83 xx xx 00 00 33 ED)
registersymbol(VarFlagsAob0)

aobscanmodule(VarFlagsAob1,DarkSoulsIII.exe,80 BB xx xx 00 00 00 0F B6 87)
registersymbol(VarFlagsAob1)

aobscanmodule(VarFlagsAob2,DarkSoulsIII.exe,48 8B 46 08 0F B6 90 xx xx 00 00)
registersymbol(VarFlagsAob2)

aobscanmodule(Control_Aob2,DarkSoulsIII.exe,48 8B 05 xx xx xx xx 66 0F 7F 44 24 40 48 85 C0)
registersymbol(Control_Aob2)

aobscanmodule(P_Speed_Aob1,DarkSoulsIII.exe,0F 28 D0 F3 0F 10 83 xx xx 00 00 F3 0F 59 83)
registersymbol(P_Speed_Aob1)

aobscanmodule(PlayerSizeBaseAob,DarkSoulsIII.exe,48 8B 59 xx 49 8B C0)
registersymbol(PlayerSizeBaseAob)

aobscanmodule(ParamBaseAob,DarkSoulsIII.exe,48 89 5C 24 48 8B FA 48 8b d9 c7 44 24 20 00 00 00 00 48)
registersymbol(ParamBaseAob)

aobscanmodule(RegulateTwoAob,DarkSoulsIII.exe,48 8B 80 xx xx xx xx 48 85 C0 xx xx 49 8B)
registersymbol(RegulateTwoAob)

aobscanmodule(Week_One_Aob,DarkSoulsIII.exe,05 xx xx xx xx 8B 40 xx 48 83 C4 28)
registersymbol(Week_One_Aob)

aobscanmodule(Blood_Stain_Aob,DarkSoulsIII.exe,48 8B 05 xx xx xx xx 48 8B 50 xx 48 85 D2 xx xx 48 8B 07)
registersymbol(Blood_Stain_Aob)
]]

---------------------------------------------------------------------- 检验版本并激活
local rCEVersion = 6.7
local sham , err = pcall(function() getAddressSafe("hack_key_aob1") end)

if (getCEVersion == nil) or (getCEVersion() < rCEVersion) then
  messageDialog('当前CE的版本较低,请安装最新的 Cheat Engine '..rCEVersion, mtError, mbOK)
  closeCE()
end

if not sham then
  messageDialog('你当前使用的CE版本缺失getAddressSafe()函数,请安装最新的 Cheat Engine '..rCEVersion, mtError, mbOK)
  closeCE()
end

if not autoAssemble(Ds3_Pointer0) then
  error('错误！该修改器无法激活，请检查该修改器是否支持当前游戏的版本')
end

---------------------------------------------------------------------- 注册初始指针
local Ds3_Arrays0={
  {"key_addr_1" , "hack_key_aob1+3" , 4}, --4
  {"key_addr_2" , "hack_key_aob2+3" , 4},
  {"key_addr_3" , "hack_key_aob3+3" , 4},
  {"key_addr_4" , "hack_key_aob4+3" , 4},
  {"ParamBase" , "ParamBaseAob+15" , 4},--param_ptr
  {"key_addr_6" , "hack_key_aob6-1F" , 4},
  {"key_addr_7" , "hack_key_aob7+2" , 5}, --5
  {"Control_2" , "Control_Aob2+3" , 4}
}

local Ds3_Arrays1={
  {"Key_B" , "hack_key_aob8+3" , false  , 0},
  {"Key_A" , "hack_key_aob9+3" , false , 0},
  {"VarFlags0" , "VarFlagsAob0+3" , false , 0},
  {"VarFlags1" , "VarFlagsAob0+3" , false , -1},
  {"VarFlags2" , "VarFlagsAob0+3" , false , 1},
  {"VarFlags3" , "VarFlagsAob1+2" , false , 0},
  {"VarFlags4" , "VarFlagsAob2+7" , false , 0},
  {"SpKey1" , "P_Speed_Aob1+7" , false , 0},
  {"Size_A" , "PlayerSizeBaseAob+3" , true , 0},
  {"Regu_B" , "RegulateTwoAob+3" , false , 0},
  {"Regu_C" , "RegulateTwoAob+3" , false , -16},
  {"Week_A" , "Week_One_Aob+7" , true , 0},
  {"Week_B" , "Week_One_Aob+7" , true , 32},
  {"Week_C" , "Week_One_Aob+7" , true , 44},
  {"Nets_1" , "hack_key_aob2+f" , true , 0},
  {"Blood_1" , "Blood_Stain_Aob+a" , true , 0}
}

-------------- 注册地址
function getRegisterSml(name , addr)
  unregisterSymbol(name)
  registerSymbol(name , addr , true)
end

-------------- 获得基址、基础偏移
local addr0 , addr1

local function getBasePointer(name , addr , dev)
  addr0 = getAddress(addr)
  addr0 = addr0 + readInteger(addr0) + dev
  getRegisterSml(name , addr0)
end

local function getBaseDeviation(name , addr , term , number)
  if not term then
    addr1 = readInteger(addr)
  else
    addr1 = readBytes(addr)
  end
  addr1 = addr1 + number
  getRegisterSml(name , addr1)
end

-------------- 批量注册基址 #1
for i,v in pairs(Ds3_Arrays0) do
  getBasePointer(v[1] , v[2] , v[3])
end

-------------- 批量注册基础偏移
for i,v in pairs(Ds3_Arrays1) do
  getBaseDeviation(v[1] , v[2] , v[3] , v[4])
end

---------------------------------------------------------------------- 有关二进制的计算
-------------- 获得二进制数组
local function dg_GetBinaryArray(flag0)

  local ose0 = {}

  local t0 , t1 , y0 = flag0

  for i=1 , 8 do

    y0 = t0

    t0 , t1 = math.modf(t0 / 2)

    ose0[i] = y0 - (t0 * 2)

  end

  return ose0
end

-------------- 获得十进制整数
local function dg_GetDecimalInteger(table0)

  local v0 , v1 = 0 , 0

  for i=#table0 , 1 , -1 do

    if table0[i] ~= 0 then

      v0 = 2 ^ (i - 1) ; v1 = v1 + v0

    end

  end

  v1 = tonumber(string.format("%d",tostring(v1)))

  return v1
end

-------------- 检测并修改二进制
local function dg_CheckBinaryArray(index0 , table0 , term0)

  local x0 = index0 + 1

  if table0[x0] ~= nil then

    if table0[x0] ~= 1 then

      if term0 then

        table0[x0] = 1

      end

    else

      if not term0 then

        table0[x0] = 0

      end

    end -- 1

  end -- nil
  return table0
end

----------------------------------------------------------替换物品
-------------- 构造物品ID的筛选表
local isItemLabels0 = {
  {SwapItems1.CELabel4 , iGlobalLists.tool_items},
  {SwapItems1.CELabel5 , iGlobalLists.material_items},
  {SwapItems1.CELabel6 , iGlobalLists.importool_items},
  {SwapItems1.CELabel7 , iGlobalLists.magic_items},
  {SwapItems1.CELabel8 , iGlobalLists.lrweaption_items},
  {SwapItems1.CELabel9 , iGlobalLists.catalyst_items},
  {SwapItems1.CELabel10 , iGlobalLists.shield_items},
  {SwapItems1.CELabel11 , iGlobalLists.meleeweapon_items},
  {SwapItems1.CELabel12 , iGlobalLists.armor_items},
  {SwapItems1.CELabel13 , iGlobalLists.arrow_items},
  {SwapItems1.CELabel14 , iGlobalLists.ring_items},
  {SwapItems1.CELabel15 , iGlobalLists.other_items}

}
-------------- 构造表格式化
local toHexL = function (str)
  return string.format("%08X" , str)
end

local escape = function (str)
  return str:gsub('[[.*+?()^$%%-]','%%%1')
end

-------------- 加载物品ID列表
local function isLoadIdsList(addr0,table0)
  addr0.clear()
  for k , v in pairs(table0) do
    addr0.Items.add(v.tool_n)
  end
end

-------------- 在列表框中选择ID
local function isFindSelectIdTable(table , name)
  for k , v in pairs(table) do
    if v.tool_n == name then
      return v.tool_i
    end
  end
end

local function isCheckSelectIdsList(name)
  for k ,v in pairs (isItemLabels0) do
    if v[1].Font.Style == '[fsBold]' then
      SwapItems1.CEEdit1.Text = isFindSelectIdTable(v[2] , name)
    end
  end
end

local function isSelectionIdsList1(addr0)
  local t0 , t1

  if addr0.ItemIndex ~= -1 then
    t0 = addr0.Items[addr0.ItemIndex]
    t1 = iGlobalLists.all_items[t0]
    SwapItems1.CEEdit1.Text = t1
    SwapItems1.CEEdit8.Text = 'ID：' .. toHexL(t1) .. '    名称：' .. t0
  end
end
-------------- 搜索物品
local function isfindItemNames(addr)
  local n1
  for k ,v in pairs (isItemLabels0) do
    if v[1].Font.Style == '[fsBold]' then
      for i , d in pairs(v[2]) do
        if d.tool_n:upper():match(escape(addr.Text):upper()) then
          if not n1 then
            n1 = true
            SwapItems1.CEListBox1.clear()
          end
          SwapItems1.CEListBox1.Items.add(d.tool_n)
        end
      end
    end
  end
end

-------------- 设置粗体
local function isItemIdsFilter(addr0)
  for k , v in pairs(isItemLabels0) do
    if v[1] == addr0 then
      addr0.Font.Style = '[fsBold]'
      addr0.Font.Color = -2147483635
      isLoadIdsList(SwapItems1.CEListBox1,v[2])
    else
      v[1].Font.Style = '[]'
      v[1].Font.Color = 536870912
    end
  end
end
-------------- 替换物品
local function ifSwapItemIds()
  for k , v in pairs(
  {{SwapItems1.CEEdit1.Text , '[pickup_ptr]+58'},
  {SwapItems1.CEEdit2.Text , '[pickup_ptr]+5C'},
  {SwapItems1.CEEdit3.Text , '[pickup_ptr]+60'}}
  ) do
    if tonumber(v[1]) and readInteger(v[2]) then
      if readInteger(v[2]) ~= 0xffffffff then
        writeInteger(v[2] , tonumber(v[1]))
      end
    end
  end --table
end

-------------- 复制物品ID
local function iSwpCaption(s)
    local n = s.Caption

    s.Caption = '正在复制！'
    if (s.Caption == '正在复制！') then
      sleep(500) ; s.Caption = n
    end
end

local function isCopyItemIds(s)--writeToClipboard
  local tp = ''
  local ts = SwapItems1.CEButton2
  local tr = SwapItems1.CEEdit8.Text

  tr = tr:gsub('(%w-)：' , ''):match('(%w+)')

  if tr then
    tp = tonumber(('0X' ..tr))
    if ts ~= s then
      writeToClipboard(tr)
    else
      writeToClipboard(tp)
    end
    iSwpCaption(s)
  end
  return nil
end

function isShowLootNames(addr)
  isItemIdsFilter(addr)
end

----------------------------------------------------------参数补丁
local function _readInteger(Input)
  local Value = readInteger(Input)

  if Value < 0x80000000 then
    return Value
  else
    return Value - 0x100000000
  end
end

-------------- 构造参数补丁表
local function ParamIndexer(name)
  local Param = getAddress(name)
  local Start = readQword(Param)
  local End = readQword(Param + 8)
  local Count = (End - Start) / 8

  for i=0 , Count-1 do
    local ParamOffset = readQword(Start + i * 8)
    local ParamString = "Unknown"

    if readInteger(ParamOffset + 0x20) > 7 then
      ParamString = readString(readQword(ParamOffset + 0x10) , 90 , true)
    else
      ParamString = readString(ParamOffset + 0x10 , 90 , true)
    end
    MasterParamTable[ParamString] = ParamOffset
  end

  if MasterParamTable["Bullet"] then
    return true
  end
end

-------------- 获得参数地址
function getParamAddr(ParamName)
  local id , ar , tc

  ar = MasterParamTable[ParamName]
  if ar ~= nil then
    id = {}

    ar = readQword(readQword(ar + 0x68) + 0x68)
    tc = byteTableToWord(readBytes(ar + 0xA , 2 , true))

    for i=0 , tc-1 do
      local pid = readInteger(ar+0x40+0x18*i)
      local mid = readInteger(ar+0x48+0x18*i)
      local poffset = ar + mid

      id[pid] = poffset
    end
  end
  return id
end

-------------- 注入参数
function ParamIterator(ParamName,ChangeTable,UUID) --Param Offset is in decimal
  local IDTable = getParamAddr(ParamName)

  if UUID ~= nil then --Make a table for backups
    if UnPatcher == nil then UnPatcher = {} end

    UnPatcher[UUID] = {}

    for k,v in pairs(ChangeTable) do
      local Backup = {}
      local _,DataLength = string.gsub(v[3], "%x+","") --Dirty but it works

      Backup[1]=IDTable[v[1]]+v[2]
      Backup[2]=readBytes(Backup[1],DataLength,true)
      table.insert(UnPatcher[UUID],Backup)
      ParamPatcher(IDTable[v[1]],v[2],v[3],v[4])
    end
  else
    for k,v in pairs(ChangeTable) do
      ParamPatcher(IDTable[v[1]],v[2],v[3],v[4])
    end
  end
end

-------------- 注销参数
function ParamDepatcher(UUID) --yes the name is baddly done
  for k,v in pairs(UnPatcher[UUID]) do
    writeBytes(v[1],v[2])
  end

  UnPatcher[UUID] = nil
end

-------------- 修改参数
function ParamPatcher(IDOffset,DataOffset,Data,Symbol) --seperated for now in case i need to update something
  local WriteAddr = IDOffset+DataOffset
  local HexTable = {}

  if Symbol == nil then -- basicly if symbol is set, ignore data completely and not write any info
    for word in string.gmatch(Data, "%x+") do
      table.insert(HexTable,tonumber(word,16))
    end

    writeBytes(WriteAddr,HexTable)
  else
    registerSymbol(Symbol,WriteAddr,true)
  end
end

----------------------------------------------------------创建新类型
---------------------------------------------------------------------- last
-------------- 构造参数表
if not ParamPatchClock then
  ParamPatchClock = createTimer(nil , false)
end

ParamPatchClock.setOnTimer(
  function (t)
    local n

    if autoAssemble([[
        aobscanmodule(Dragon_Armor_Aob,DarkSoulsIII.exe,48 8B 0D xx xx xx xx 48 85 C9 xx xx 4C 8B C0 48 8B D7)
        registersymbol(Dragon_Armor_Aob)
       ]]) then
       n = getAddress("Dragon_Armor_Aob+3")
       n = n + readInteger(n) + 4
       getRegisterSml("param_ptr" , n)
       n = readQword(n)+ 0x10
       getRegisterSml("ParamPatch" , n)

       if readInteger("ParamPatch") then
         if ParamIndexer("ParamPatch") then
           t.setEnabled(false)
         end
       end
    end
    return nil
  end
)

ParamPatchClock.setEnabled(true)
ParamPatchClock.setInterval(500)

-------------- 计算二进制数值
function dg_ReckonBinaryArray(value0 , index0 , term0)
    return dg_GetDecimalInteger(dg_CheckBinaryArray(index0 , dg_GetBinaryArray(value0) , term0))
end

-------------- 物品管理器事件
for k ,v in pairs(isItemLabels0) do
  v[1].OnClick = isItemIdsFilter
end

SwapItems1.CEButton1.OnClick = ifSwapItemIds
SwapItems1.CEButton2.OnClick = isCopyItemIds
SwapItems1.CEButton3.OnClick = isCopyItemIds
SwapItems1.CEEdit4.OnChange = isfindItemNames
SwapItems1.CEListBox1.OnSelectionChange = isSelectionIdsList1
{$asm}
[ENABLE]

 
[DISABLE]
{$lua}
ParamPatchClock.destroy()
ParamPatchClock = nil

unregisterSymbol("hack_key_aob1")
unregisterSymbol("hack_key_aob2")
unregisterSymbol("hack_key_aob3")
unregisterSymbol("hack_key_aob4")
unregisterSymbol("Dragon_Armor_Aob")
unregisterSymbol("hack_key_aob6")
unregisterSymbol("hack_key_aob7")
unregisterSymbol("hack_key_aob8")
unregisterSymbol("hack_key_aob9")
unregisterSymbol("VarFlagsAob0")
unregisterSymbol("VarFlagsAob1")
unregisterSymbol("VarFlagsAob2")
unregisterSymbol("Control_Aob2")
unregisterSymbol("P_Speed_Aob1")
unregisterSymbol("PlayerSizeBaseAob")
unregisterSymbol("RegulateTwoAob")
unregisterSymbol("Week_One_Aob")
unregisterSymbol("Blood_Stain_Aob")
unregisterSymbol("key_addr_1")
unregisterSymbol("key_addr_2")
unregisterSymbol("key_addr_3")
unregisterSymbol("key_addr_4")
unregisterSymbol("param_ptr")
unregisterSymbol("ParamBase")
unregisterSymbol("ParamPatch")
unregisterSymbol("key_addr_6")
unregisterSymbol("key_addr_7")
unregisterSymbol("Control_2")
unregisterSymbol("Key_B")
unregisterSymbol("Key_A")
unregisterSymbol("VarFlags0")
unregisterSymbol("VarFlags1")
unregisterSymbol("VarFlags2")
unregisterSymbol("VarFlags3")
unregisterSymbol("VarFlags4")
unregisterSymbol("SpKey1")
unregisterSymbol("Size_A")
unregisterSymbol("Regu_B")
unregisterSymbol("Regu_C")
unregisterSymbol("Week_A")
unregisterSymbol("Week_B")
unregisterSymbol("Week_C")
unregisterSymbol("Nets_1")
unregisterSymbol("Blood_1")
{$asm}