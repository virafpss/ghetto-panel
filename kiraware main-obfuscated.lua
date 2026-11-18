-- Lua 5.3+ / Luau compatibility polyfills
if not math.ldexp then math.ldexp = function(x, n) return x * 2 ^ n end end
if not math.frexp then math.frexp = function(x)
    if x == 0 then return 0, 0 end
    local exp = math.floor(math.log(math.abs(x)) / math.log(2)) + 1
    local mantissa = x / 2 ^ exp
    return mantissa, exp
end end
if not loadstring and load then loadstring = load end
if not loadstring then loadstring = function(s) return load(s) end end

--[Obfuscated by nigger v2.0.0 | nigger-obfuscator.xyz/discord | nigger-obfuscator.xyz/source]
local ykIYDEgvrY,vKWviNFx,QlZrJtYXO,YbXiWHNtf,GgXzfybF,DhvFXRttG,apljvcUJ,HGNEdJCLyetb,JdLjnvFBx,NFaHQVMs,VmMkIHfyG,LFseWWrJ,oVzFIdJdolfS,wTGBcZJPDybg,mXuyOFGrMPkX,FvloPVKMr,VvyNaLoj,pdGvBxoKkp,gqGjCurh,xYxHdEio,EgQQnOWF,rFVisTKKDxaf,hnDBrwTrEUEJ,GsDQrGbtQIbw,rzWNDhpCG,NbdJOkUNthaD
ykIYDEgvrY=error;vKWviNFx=ipairs;QlZrJtYXO=next;YbXiWHNtf=pairs;GgXzfybF=pcall;DhvFXRttG=tonumber;apljvcUJ=tostring;HGNEdJCLyetb=xpcall;JdLjnvFBx=math.abs;NFaHQVMs=math.acos;VmMkIHfyG=math.floor;LFseWWrJ=math.huge;oVzFIdJdolfS=math.max;wTGBcZJPDybg=math.min;mXuyOFGrMPkX=math.sqrt;FvloPVKMr=string.char;VvyNaLoj=string.find;pdGvBxoKkp=string.gsub;gqGjCurh=string.lower;xYxHdEio=string.match;EgQQnOWF=string.upper;rFVisTKKDxaf=table.concat;hnDBrwTrEUEJ=table.insert;GsDQrGbtQIbw=table.remove;rzWNDhpCG=table.sort;NbdJOkUNthaD=os.clock;
local function pagtATGz(eTsJreDSb)
    return (eTsJreDSb >= 48 and eTsJreDSb <= 57) or (eTsJreDSb >= 65 and eTsJreDSb <= 90) or (eTsJreDSb >= 97 and eTsJreDSb <= 122)
end

local function LjBKcYCwVBhY(WctgnPLNs, AyyYFYID)
    local CsuYbIJULuWs = {}
    for i = 1, #WctgnPLNs do
        local eTsJreDSb = WctgnPLNs:byte(i)
        if pagtATGz(eTsJreDSb) then
            local pCuWQIAoW            if eTsJreDSb >= 48 and eTsJreDSb <= 57 then
                pCuWQIAoW = ((eTsJreDSb - 48 - AyyYFYID + 10) % 10) + 48
            elseif eTsJreDSb >= 65 and eTsJreDSb <= 90 then
                pCuWQIAoW = ((eTsJreDSb - 65 - AyyYFYID + 26) % 26) + 65
            elseif eTsJreDSb >= 97 and eTsJreDSb <= 122 then
                pCuWQIAoW = ((eTsJreDSb - 97 - AyyYFYID + 26) % 26) + 97
            end
            table.insert(CsuYbIJULuWs, string.char(pCuWQIAoW))
        else
            table.insert(CsuYbIJULuWs, string.char(eTsJreDSb))
        end
    end
    return table.concat(CsuYbIJULuWs)
end

local iZSmZIjrN,GINLLIyHNBJr,ouWxQaOY,iPZcHMsHwJee,NmyyWsthBoH,eASxgpnm={},{},{},{},{},{}
local dsMbxWworU=game:GetService(LjBKcYCwVBhY("OrkPbosfzb", 23))
if not dsMbxWworU:IsClient() then ykIYDEgvrY(LjBKcYCwVBhY("dmp rfc afmqcl pcosgpcq y Pmzjmv ajgclr cltgpmlkclr ugrf y JmayjNjywcp", 24)) end
if not game:IsLoaded() then game.Loaded:Wait() end
GINLLIyHNBJr.Players=game:GetService(LjBKcYCwVBhY("Hdsqwjk", 18))
GINLLIyHNBJr.RunService=dsMbxWworU
GINLLIyHNBJr.UIS=game:GetService(LjBKcYCwVBhY("RpboFkmrqPbosfzb", 23))
GINLLIyHNBJr.TweenService=game:GetService(LjBKcYCwVBhY("SvddmRdquhbd", 25))
GINLLIyHNBJr.SoundService=game:GetService(LjBKcYCwVBhY("RntmcRdquhbd", 25))
GINLLIyHNBJr.ReplicatedStorage=game:GetService(LjBKcYCwVBhY("ObmifzxqbaPqloxdb", 23))
GINLLIyHNBJr.HttpService=game:GetService(LjBKcYCwVBhY("EqqmPbosfzb", 23))
GINLLIyHNBJr.GuiService=game:GetService(LjBKcYCwVBhY("FthRdquhbd", 25))
GINLLIyHNBJr.Stats=game:GetService(LjBKcYCwVBhY("Rszsr", 25))
GINLLIyHNBJr.Player=GINLLIyHNBJr.Players.LocalPlayer
while not GINLLIyHNBJr.Player do task.wait() GINLLIyHNBJr.Player=GINLLIyHNBJr.Players.LocalPlayer end
GINLLIyHNBJr.Camera=workspace.CurrentCamera
GINLLIyHNBJr.Mouse=GINLLIyHNBJr.Player:GetMouse()
GINLLIyHNBJr.PlayerGui=GINLLIyHNBJr.Player:WaitForChild(LjBKcYCwVBhY("OkzxdqFth", 25),15)
local function VKAZlufAC()
local GskBGpKR,QIuMHfaluyY=GgXzfybF(function() if gethui then return gethui() end return game:GetService(LjBKcYCwVBhY("WilyAoc", 20)) end)
if GskBGpKR and QIuMHfaluyY then return QIuMHfaluyY end
return GINLLIyHNBJr.PlayerGui
end
local lhDatiprwN=VKAZlufAC()
local ZgNxYwKyuHaQ=lhDatiprwN:FindFirstChild(LjBKcYCwVBhY("dmp rfc afmqclEsgPslrgkc", 24)) or (GINLLIyHNBJr.PlayerGui and GINLLIyHNBJr.PlayerGui:FindFirstChild(LjBKcYCwVBhY("enq sgd bgnrdmFthQtmshld", 25)))
if ZgNxYwKyuHaQ then
if ZgNxYwKyuHaQ:IsA(LjBKcYCwVBhY("AhmczakdEtmbshnm", 25)) then GgXzfybF(function() ZgNxYwKyuHaQ:Invoke() end) end
ZgNxYwKyuHaQ:Destroy()
end
local KBnkSpJE=TweenInfo.new(0.12,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
local DvULsPfJM=TweenInfo.new(0.35,Enum.EasingStyle.Back,Enum.EasingDirection.Out)
local RPmMpXKSNo=TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.In)
local wFTGBzXDpAhr=TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.Out)
local jYOXTZYT={LjBKcYCwVBhY("xv", 20),LjBKcYCwVBhY("cntakdazqqdk", 25),LjBKcYCwVBhY("zkqxhaxwnnahoc", 22),LjBKcYCwVBhY("bmszjczyppcjqfmresl", 24)}
local NASfNieOGiEl={LjBKcYCwVBhY("lsu", 18),LjBKcYCwVBhY("szbshbzk", 25),LjBKcYCwVBhY("szbshbzkrf", 25),LjBKcYCwVBhY("nuwncwufmbinaoh", 20)}
local HOYgMwZWhnO={LjBKcYCwVBhY("ftm", 25),LjBKcYCwVBhY("ngqrmj", 24),LjBKcYCwVBhY("jwngdnwj", 18),LjBKcYCwVBhY("qhekd", 25),LjBKcYCwVBhY("qfmresl", 24),LjBKcYCwVBhY("icw", 16),LjBKcYCwVBhY("gx", 6),LjBKcYCwVBhY("ojelan", 22),LjBKcYCwVBhY("ovx", 21),LjBKcYCwVBhY("alryib", 23),LjBKcYCwVBhY("nl", 10),LjBKcYCwVBhY("jwn", 18)}
local ZryBqDfl={Vector3.zAxis,-Vector3.zAxis,Vector3.xAxis,-Vector3.xAxis}
iZSmZIjrN.CameraLockKey=Enum.KeyCode.Q
iZSmZIjrN.SequentialKey=Enum.KeyCode.T
iZSmZIjrN.DualFireKey=Enum.KeyCode.Y
iZSmZIjrN.DualFireDBName=LjBKcYCwVBhY("[Alryib-Yxoobi PD]", 23)
iZSmZIjrN.DualFireTacName=LjBKcYCwVBhY("[RyargayjQfmresl]", 24)
iZSmZIjrN.RangeAuto=true
iZSmZIjrN.RangeRevName=LjBKcYCwVBhY("[Pctmjtcp]", 24)
iZSmZIjrN.RangeMinimum=1
iZSmZIjrN.RangeSwitch=50
iZSmZIjrN.RangeMaximum=245
iZSmZIjrN.TriggerFOVEnabled=true
iZSmZIjrN.TriggerFOVSize=180
iZSmZIjrN.ShowTriggerFOV=true
iZSmZIjrN.DualFireCooldown=0
iZSmZIjrN.DualFireEquipDelay=0.05
iZSmZIjrN.DualFireEquipTimeout=2
iZSmZIjrN.DualFireReadyStable=0.02
iZSmZIjrN.DualFirePulse=0.08
iZSmZIjrN.DualFirePostShotHold=0.08
iZSmZIjrN.DualFireReleaseTimeout=2.5
iZSmZIjrN.MenuKey=Enum.KeyCode.RightControl
iZSmZIjrN.StreamerKey=Enum.KeyCode.F8
iZSmZIjrN.TargetCursorWeight=0.70
iZSmZIjrN.TargetWorldDistanceWeight=0.30
iZSmZIjrN.WallJumpEnabled=false
iZSmZIjrN.HoldCameraLock=false
iZSmZIjrN.HoldSequential=false
iZSmZIjrN.HoldUniversal=false
iZSmZIjrN.ShotCooldown=0
iZSmZIjrN.SequentialTargetGrace=0.120
iZSmZIjrN.UIRefresh=0.100
iZSmZIjrN.TriggerKnifeCheck=true
iZSmZIjrN.UniversalSlot=1
iZSmZIjrN.Distance={Fallback=250,Double=50,Rev=245,Tac=50}
iZSmZIjrN.NumberKeys={[Enum.KeyCode.One]=1,[Enum.KeyCode.Two]=2,[Enum.KeyCode.Three]=3,[Enum.KeyCode.Four]=4,[Enum.KeyCode.Five]=5,[Enum.KeyCode.Six]=6,[Enum.KeyCode.Seven]=7,[Enum.KeyCode.Eight]=8,[Enum.KeyCode.Nine]=9}
iZSmZIjrN.KeyByName={}
for _,NEKKeDNIVpya in vKWviNFx(Enum.KeyCode:GetEnumItems()) do iZSmZIjrN.KeyByName[NEKKeDNIVpya.Name]=NEKKeDNIVpya end
eASxgpnm.BG=Color3.fromRGB(48,48,48)
eASxgpnm.BG2=Color3.fromRGB(58,58,58)
eASxgpnm.Sidebar=Color3.fromRGB(38,38,38)
eASxgpnm.Topbar=Color3.fromRGB(31,31,31)
eASxgpnm.Panel=Color3.fromRGB(43,43,43)
eASxgpnm.Panel2=Color3.fromRGB(55,55,55)
eASxgpnm.Card=Color3.fromRGB(45,45,45)
eASxgpnm.CardHover=Color3.fromRGB(62,62,62)
eASxgpnm.Red=Color3.fromRGB(230,91,157)
eASxgpnm.RedBright=Color3.fromRGB(244,119,177)
eASxgpnm.RedDark=Color3.fromRGB(91,43,65)
eASxgpnm.RedDeep=Color3.fromRGB(65,35,49)
eASxgpnm.Green=Color3.fromRGB(130,190,151)
eASxgpnm.Yellow=Color3.fromRGB(220,184,112)
eASxgpnm.Text=Color3.fromRGB(238,238,238)
eASxgpnm.Muted=Color3.fromRGB(174,174,174)
eASxgpnm.Border=Color3.fromRGB(59,59,59)
eASxgpnm.BorderBright=Color3.fromRGB(70,70,70)
eASxgpnm.White=Color3.fromRGB(255,255,255)
eASxgpnm.GradientDark=Color3.fromRGB(12,12,12)
ouWxQaOY.ConfigFolder=LjBKcYCwVBhY("dmp_rfc_afmqcl_amldgeq", 24)
ouWxQaOY.CameraLock=false
ouWxQaOY.Sequential=false
ouWxQaOY.Universal=true
ouWxQaOY.MenuOpen=true
ouWxQaOY.StreamerMode=false
ouWxQaOY.NameESPEnabled=true
ouWxQaOY.NameESPTags={}
ouWxQaOY.NameESPConnections={}
ouWxQaOY.NameESPPending={}
ouWxQaOY.CameraLockTarget=nil
ouWxQaOY.SeqTarget=nil
ouWxQaOY.UniTarget=nil
ouWxQaOY.SelectedTargets={}
ouWxQaOY.LastSeqTarget=nil
ouWxQaOY.LastUniTarget=nil
ouWxQaOY.LastSeqShot=0
ouWxQaOY.LastUniShot=0
ouWxQaOY.SeqLostSince=nil
ouWxQaOY.LastUI=0
ouWxQaOY.Focused=true
ouWxQaOY.Sequence={1}
ouWxQaOY.SequenceIndex=1
ouWxQaOY.LearnedSlots={}
ouWxQaOY.LearnGeneration={}
ouWxQaOY.SequentialTool=nil
ouWxQaOY.UniversalTool=nil
ouWxQaOY.LocalCharacter=nil
ouWxQaOY.LocalHumanoid=nil
ouWxQaOY.LocalRoot=nil
ouWxQaOY.LocalAnimator=nil
ouWxQaOY.LocalBackpack=nil
ouWxQaOY.CachedDB=nil
ouWxQaOY.CachedTac=nil
ouWxQaOY.ToolRangeCache=setmetatable({},{__mode=LjBKcYCwVBhY("h", 23)})
ouWxQaOY.ToolGunCache=setmetatable({},{__mode=LjBKcYCwVBhY("z", 15)})
ouWxQaOY.ToolKnifeCache=setmetatable({},{__mode=LjBKcYCwVBhY("e", 20)})
ouWxQaOY.KeyCapture=nil
ouWxQaOY.SlotCapture=nil
ouWxQaOY.Ready=false
ouWxQaOY.Cleaned=false
ouWxQaOY.Connections={}
ouWxQaOY.CharacterConnections={}
ouWxQaOY.CharacterGeneration=0
ouWxQaOY.LearnSerial=0
ouWxQaOY.ActiveTool=nil
ouWxQaOY.PendingToolReleases=setmetatable({},{__mode=LjBKcYCwVBhY("w", 12)})
ouWxQaOY.AnimatedGradients={}
if ZgNxYwKyuHaQ and GINLLIyHNBJr.Player.Character then
for _,vNovTtTa in vKWviNFx(GINLLIyHNBJr.Player.Character:GetChildren()) do
if vNovTtTa:IsA(LjBKcYCwVBhY("Pkkh", 22)) then ouWxQaOY.PendingToolReleases[vNovTtTa]=true end
end
end
ouWxQaOY.ToolReleasedFrame=setmetatable({},{__mode=LjBKcYCwVBhY("y", 14)})
ouWxQaOY.ToolLastShots=setmetatable({},{__mode=LjBKcYCwVBhY("i", 24)})
ouWxQaOY.TriggerFrame=0
ouWxQaOY.TriggerCache={Frame=-1,Tool=nil,Range=nil,Target=nil}
ouWxQaOY.TriggerRayParams=RaycastParams.new()
ouWxQaOY.TriggerRayParams.FilterType=Enum.RaycastFilterType.Exclude
ouWxQaOY.TriggerRayParams.IgnoreWater=true
ouWxQaOY.WallRayParams=RaycastParams.new()
ouWxQaOY.WallRayParams.FilterType=Enum.RaycastFilterType.Exclude
ouWxQaOY.WallRayParams.IgnoreWater=true
ouWxQaOY.DualFire=nil
ouWxQaOY.SingleShotgunFallback=nil
ouWxQaOY.ManualRevTool=nil
ouWxQaOY.TriggerFOVTarget=nil
ouWxQaOY.RangeLastNotice=nil
ouWxQaOY.RangeRetryAt=0
ouWxQaOY.HeldDualKey=nil
ouWxQaOY.LastDualFire=-math.huge
ouWxQaOY.StateCache=setmetatable({},{__mode=LjBKcYCwVBhY("y", 14)})
ouWxQaOY.CrewCache=setmetatable({},{__mode=LjBKcYCwVBhY("l", 1)})
ouWxQaOY.CrouchAnimationIds={}
ouWxQaOY.CrouchAnimationsScanned=false
ouWxQaOY.HasWallJumped=false
ouWxQaOY.Now=os.clock()
ouWxQaOY.MousePos=Vector2.zero
ouWxQaOY.FpsCount=0
ouWxQaOY.LastFpsTime=ouWxQaOY.Now
ouWxQaOY.CurrentFps=60
ouWxQaOY.RenderBinding=LjBKcYCwVBhY("enq sgd bgnrdmBzldqzKnbj_", 25)..GINLLIyHNBJr.HttpService:GenerateGUID(false)
ouWxQaOY.Logs={}
GINLLIyHNBJr.OnSound=Instance.new(LjBKcYCwVBhY("Iekdt", 16))
GINLLIyHNBJr.OnSound.SoundId=LjBKcYCwVBhY("oyuxppbqfa://462332013432267", 23)
GINLLIyHNBJr.OnSound.Volume=1
GINLLIyHNBJr.OnSound.Parent=GINLLIyHNBJr.SoundService
GINLLIyHNBJr.OffSound=Instance.new(LjBKcYCwVBhY("Okqjz", 22))
GINLLIyHNBJr.OffSound.SoundId=LjBKcYCwVBhY("oyuxppbqfa://457314829990051", 23)
GINLLIyHNBJr.OffSound.Volume=1
GINLLIyHNBJr.OffSound.Parent=GINLLIyHNBJr.SoundService
if isfolder and makefolder then
GgXzfybF(function() if not isfolder(ouWxQaOY.ConfigFolder) then makefolder(ouWxQaOY.ConfigFolder) end end)
end
function NmyyWsthBoH.Log(cXzaxfAJ)
table.insert(ouWxQaOY.Logs,1,cXzaxfAJ)
if #ouWxQaOY.Logs>6 then table.remove(ouWxQaOY.Logs) end
if iPZcHMsHwJee.Log and ouWxQaOY.MenuOpen then iPZcHMsHwJee.Log.Text=table.concat(ouWxQaOY.Logs,LjBKcYCwVBhY("\n", 23)) end
end
function NmyyWsthBoH.ApplyAnimatedGradient(LabelObject)
local CipbqLryKXgs=Instance.new(LjBKcYCwVBhY("THFqzchdms", 25))
CipbqLryKXgs.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,eASxgpnm.RedBright),ColorSequenceKeypoint.new(0.25,eASxgpnm.GradientDark),ColorSequenceKeypoint.new(0.5,eASxgpnm.RedBright),ColorSequenceKeypoint.new(0.75,eASxgpnm.GradientDark),ColorSequenceKeypoint.new(1,eASxgpnm.RedBright)})
CipbqLryKXgs.Parent=LabelObject
table.insert(ouWxQaOY.AnimatedGradients,CipbqLryKXgs)
return CipbqLryKXgs
end
function NmyyWsthBoH.Connect(Signal,Callback,Connections)
local ArWPrmHk=Signal:Connect(function(...) if not ouWxQaOY.Cleaned then Callback(...) end end)
table.insert(Connections or ouWxQaOY.Connections,ArWPrmHk)
return ArWPrmHk
end
function NmyyWsthBoH.DisconnectAll(Connections)
for i=1,#Connections do Connections[i]:Disconnect() end
table.clear(Connections)
end
function NmyyWsthBoH.FiniteNumber(pUUfDVLYvzu)
local GozLGpXSovw=typeof(pUUfDVLYvzu)
if GozLGpXSovw==LjBKcYCwVBhY("iphwzm", 21) then return (pUUfDVLYvzu==pUUfDVLYvzu and math.abs(pUUfDVLYvzu)<math.huge) and pUUfDVLYvzu or nil
elseif GozLGpXSovw==LjBKcYCwVBhY("qrpgle", 24) then local WhWKFIuytm=DhvFXRttG(pUUfDVLYvzu) return (WhWKFIuytm and WhWKFIuytm==WhWKFIuytm and math.abs(WhWKFIuytm)<math.huge) and WhWKFIuytm or nil end
return nil
end
function NmyyWsthBoH.StateEnabled(pUUfDVLYvzu)
if pUUfDVLYvzu==nil then return false end
local GozLGpXSovw=typeof(pUUfDVLYvzu)
if GozLGpXSovw==LjBKcYCwVBhY("tggdwsf", 18) then return pUUfDVLYvzu end
if GozLGpXSovw==LjBKcYCwVBhY("hogvyl", 20) then return pUUfDVLYvzu==pUUfDVLYvzu and pUUfDVLYvzu>0 and pUUfDVLYvzu<math.huge end
if GozLGpXSovw==LjBKcYCwVBhY("nomdib", 21) then
local WhWKFIuytm=DhvFXRttG(pUUfDVLYvzu)
if WhWKFIuytm and WhWKFIuytm==WhWKFIuytm and math.abs(WhWKFIuytm)<math.huge then return WhWKFIuytm>0 end
local cXzaxfAJ=string.lower(string.match(pUUfDVLYvzu,LjBKcYCwVBhY("^%n*(.-)%n*$", 21)))
return cXzaxfAJ==LjBKcYCwVBhY("mknx", 19) or cXzaxfAJ==LjBKcYCwVBhY("vbp", 23) or cXzaxfAJ==LjBKcYCwVBhY("ml", 24) or cXzaxfAJ==LjBKcYCwVBhY("fj", 21) or cXzaxfAJ==LjBKcYCwVBhY("g.k", 22) or cXzaxfAJ==LjBKcYCwVBhY("cfgucwv", 18) or cXzaxfAJ==LjBKcYCwVBhY("jmnbjdcnts", 25) or cXzaxfAJ==LjBKcYCwVBhY("xmjpxc", 21) or cXzaxfAJ==LjBKcYCwVBhY("bqntbgdc", 25) or cXzaxfAJ==LjBKcYCwVBhY("bqntbghmf", 25)
end
return false
end
function NmyyWsthBoH.FindValue(Container,Names)
if not Container then return nil end
local JRiTMOhzmoC={}
for _,HLwOsJAlWZar in vKWviNFx(Names) do JRiTMOhzmoC[string.lower(HLwOsJAlWZar):gsub(LjBKcYCwVBhY("[%j_%.%-]", 17),LjBKcYCwVBhY("", 1))]=true end
for _,ukSqRgbr in vKWviNFx(Container:GetDescendants()) do
if ukSqRgbr:IsA(LjBKcYCwVBhY("TyjscZyqc", 24)) then
local HLwOsJAlWZar=string.lower(ukSqRgbr.Name):gsub(LjBKcYCwVBhY("[%c_%.%-]", 10),LjBKcYCwVBhY("", 1))
if JRiTMOhzmoC[HLwOsJAlWZar] then return ukSqRgbr end
end
end
return nil
end
function NmyyWsthBoH.CachedStateValue(qoZuKfrguXZa,Kind,Names)
local EAJDKaCZEF=ouWxQaOY.StateCache[qoZuKfrguXZa]
if not EAJDKaCZEF then EAJDKaCZEF={} ouWxQaOY.StateCache[qoZuKfrguXZa]=EAJDKaCZEF end
local FJEkArYhkfK=EAJDKaCZEF[Kind]
if FJEkArYhkfK then
if FJEkArYhkfK.Object and FJEkArYhkfK.Object:IsDescendantOf(qoZuKfrguXZa) then return FJEkArYhkfK.Object end
if not FJEkArYhkfK.Object and ouWxQaOY.Now<FJEkArYhkfK.NextScan then return nil end
end
local ukSqRgbr=NmyyWsthBoH.FindValue(qoZuKfrguXZa,Names)
EAJDKaCZEF[Kind]={Object=ukSqRgbr,NextScan=ouWxQaOY.Now+0.5}
return ukSqRgbr
end
function NmyyWsthBoH.PointerOverPanel()
if not ouWxQaOY.MenuOpen or not iPZcHMsHwJee.Gui or not iPZcHMsHwJee.Gui.Enabled or not iPZcHMsHwJee.Main or not iPZcHMsHwJee.Main.Visible then return false end
local dWGeXrulfvR=ouWxQaOY.MousePos
local AtCgvbGBs=iPZcHMsHwJee.Main.AbsolutePosition
local BWCQkknqlal=iPZcHMsHwJee.Main.AbsoluteSize
return dWGeXrulfvR.X>=AtCgvbGBs.X and dWGeXrulfvR.X<=AtCgvbGBs.X+BWCQkknqlal.X and dWGeXrulfvR.Y>=AtCgvbGBs.Y and dWGeXrulfvR.Y<=AtCgvbGBs.Y+BWCQkknqlal.Y
end
function NmyyWsthBoH.CanInteract()
return ouWxQaOY.Ready and not ouWxQaOY.Cleaned and ouWxQaOY.Focused and not GINLLIyHNBJr.UIS:GetFocusedTextBox() and not GINLLIyHNBJr.GuiService.MenuIsOpen and not ouWxQaOY.KeyCapture and not ouWxQaOY.SlotCapture
end
function NmyyWsthBoH.FlushToolReleases()
if not QlZrJtYXO(ouWxQaOY.PendingToolReleases) then return end
local qoZuKfrguXZa=ouWxQaOY.LocalCharacter
for vNovTtTa in YbXiWHNtf(ouWxQaOY.PendingToolReleases) do
if not vNovTtTa.Parent or vNovTtTa.Parent~=qoZuKfrguXZa then ouWxQaOY.PendingToolReleases[vNovTtTa]=nil
elseif vNovTtTa.Enabled then
if GgXzfybF(vNovTtTa.Deactivate,vNovTtTa) then ouWxQaOY.PendingToolReleases[vNovTtTa]=nil ouWxQaOY.ToolReleasedFrame[vNovTtTa]=ouWxQaOY.TriggerFrame end
end
end
end
function NmyyWsthBoH.RequestToolRelease(vNovTtTa)
if vNovTtTa and vNovTtTa.Parent then ouWxQaOY.PendingToolReleases[vNovTtTa]=true NmyyWsthBoH.FlushToolReleases() end
end
function NmyyWsthBoH.ReleaseTool()
local vNovTtTa=ouWxQaOY.ActiveTool
if vNovTtTa then ouWxQaOY.ActiveTool=nil NmyyWsthBoH.RequestToolRelease(vNovTtTa) end
end
function NmyyWsthBoH.PauseInput()
ouWxQaOY.HeldDualKey=nil
ouWxQaOY.TriggerFOVTarget=nil
NmyyWsthBoH.EndRangeFire()
NmyyWsthBoH.EndDualFire()
NmyyWsthBoH.ReleaseTool()
if ouWxQaOY.HeldCameraKey then NmyyWsthBoH.DisableCameraLock() end
ouWxQaOY.HeldCameraKey=nil
end
function NmyyWsthBoH.Cleanup()
if ouWxQaOY.Cleaned then return end
ouWxQaOY.Cleaned=true
ouWxQaOY.Ready=false
ouWxQaOY.CharacterGeneration=ouWxQaOY.CharacterGeneration+1
ouWxQaOY.LearnSerial=ouWxQaOY.LearnSerial+1
NmyyWsthBoH.DisconnectAll(ouWxQaOY.Connections)
NmyyWsthBoH.DisconnectAll(ouWxQaOY.CharacterConnections)
if ouWxQaOY.BackpackConnection then ouWxQaOY.BackpackConnection:Disconnect() ouWxQaOY.BackpackConnection=nil end
if ouWxQaOY.DragMoveConnection then ouWxQaOY.DragMoveConnection:Disconnect() ouWxQaOY.DragMoveConnection=nil end
for _,ArWPrmHk in YbXiWHNtf(ouWxQaOY.NameESPConnections) do ArWPrmHk:Disconnect() end
table.clear(ouWxQaOY.NameESPConnections)
table.clear(ouWxQaOY.NameESPPending)
for KYRsaoXktt,FJEkArYhkfK in YbXiWHNtf(ouWxQaOY.NameESPTags) do
if FJEkArYhkfK.Tag then FJEkArYhkfK.Tag:Destroy() end
ouWxQaOY.NameESPTags[KYRsaoXktt]=nil
end
ouWxQaOY.HeldDualKey=nil
NmyyWsthBoH.EndRangeFire()
NmyyWsthBoH.EndDualFire()
NmyyWsthBoH.ReleaseTool()
NmyyWsthBoH.FlushToolReleases()
table.clear(ouWxQaOY.PendingToolReleases)
GINLLIyHNBJr.RunService:UnbindFromRenderStep(ouWxQaOY.RenderBinding)
GINLLIyHNBJr.OnSound:Destroy()
GINLLIyHNBJr.OffSound:Destroy()
if iPZcHMsHwJee.Gui then iPZcHMsHwJee.Gui:Destroy() end
if ouWxQaOY.Runtime then ouWxQaOY.Runtime:Destroy() end
end
function NmyyWsthBoH.SetKey(HLwOsJAlWZar,NEKKeDNIVpya)
if NEKKeDNIVpya==Enum.KeyCode.Unknown or NEKKeDNIVpya==Enum.KeyCode.Escape then NmyyWsthBoH.Log(LjBKcYCwVBhY("Afmmqc y icwzmypb icw mrfcp rfyl Cqaync", 24)) return false end
for _,Other in vKWviNFx({LjBKcYCwVBhY("AykcpyJmaiIcw", 24),LjBKcYCwVBhY("XpyfVpj", 11),LjBKcYCwVBhY("RsqdzldqJdx", 25),LjBKcYCwVBhY("BsyjDgpcIcw", 24)}) do
if Other~=HLwOsJAlWZar and iZSmZIjrN[Other]==NEKKeDNIVpya then NmyyWsthBoH.Log(NEKKeDNIVpya.Name..LjBKcYCwVBhY(" fp xiobxav ylrka ql ", 23)..Other) return false end
end
NmyyWsthBoH.PauseInput()
iZSmZIjrN[HLwOsJAlWZar]=NEKKeDNIVpya
return true
end
function NmyyWsthBoH.Humanoid(qoZuKfrguXZa)
if qoZuKfrguXZa==ouWxQaOY.LocalCharacter and ouWxQaOY.LocalHumanoid and ouWxQaOY.LocalHumanoid.Parent==qoZuKfrguXZa then return ouWxQaOY.LocalHumanoid end
return qoZuKfrguXZa and qoZuKfrguXZa:FindFirstChildOfClass(LjBKcYCwVBhY("Dqiwjkez", 22))
end
function NmyyWsthBoH.EquippedTool()
local qoZuKfrguXZa=ouWxQaOY.LocalCharacter
return qoZuKfrguXZa and qoZuKfrguXZa:FindFirstChildWhichIsA(LjBKcYCwVBhY("Ojjg", 21))
end
function NmyyWsthBoH.Alive(qoZuKfrguXZa)
local IdPoDdDtFMPn=NmyyWsthBoH.Humanoid(qoZuKfrguXZa)
return IdPoDdDtFMPn~=nil and IdPoDdDtFMPn.Health>0
end
function NmyyWsthBoH.FirstPerson()
local VrpShEMOqw=GINLLIyHNBJr.Camera
if not VrpShEMOqw then return false end
return (VrpShEMOqw.CFrame.Position-VrpShEMOqw.Focus.Position).Magnitude<1
end
function NmyyWsthBoH.KO(qoZuKfrguXZa)
if not qoZuKfrguXZa then return false end
if NmyyWsthBoH.StateEnabled(qoZuKfrguXZa:GetAttribute(LjBKcYCwVBhY("Z.D", 15))) or NmyyWsthBoH.StateEnabled(qoZuKfrguXZa:GetAttribute(LjBKcYCwVBhY("CG", 18))) or NmyyWsthBoH.StateEnabled(qoZuKfrguXZa:GetAttribute(LjBKcYCwVBhY("EhiweyxIon", 20))) or NmyyWsthBoH.StateEnabled(qoZuKfrguXZa:GetAttribute(LjBKcYCwVBhY("HrJmnbjdcNts", 25))) then return false end
local pUUfDVLYvzu=NmyyWsthBoH.CachedStateValue(qoZuKfrguXZa,LjBKcYCwVBhY("RV", 7),{LjBKcYCwVBhY("i.m", 24),LjBKcYCwVBhY("hl", 23),LjBKcYCwVBhY("jmnbjdcnts", 25),LjBKcYCwVBhY("gqilmaicbmsr", 24)})
return not (pUUfDVLYvzu and NmyyWsthBoH.StateEnabled(pUUfDVLYvzu.Value))
end
function NmyyWsthBoH.NormalizeCrewValue(pUUfDVLYvzu)
local GozLGpXSovw=typeof(pUUfDVLYvzu)
if GozLGpXSovw~=LjBKcYCwVBhY("rsqhmf", 25) and GozLGpXSovw~=LjBKcYCwVBhY("eldsvi", 17) then return nil end
local cXzaxfAJ=string.lower(string.match(apljvcUJ(pUUfDVLYvzu),LjBKcYCwVBhY("^%g*(.-)%g*$", 14)))
local WhWKFIuytm=NmyyWsthBoH.FiniteNumber(cXzaxfAJ)
if WhWKFIuytm~=nil then return WhWKFIuytm>0 and apljvcUJ(WhWKFIuytm) or nil end
if cXzaxfAJ==LjBKcYCwVBhY("", 1) or cXzaxfAJ==LjBKcYCwVBhY("mhk", 25) or cXzaxfAJ==LjBKcYCwVBhY("ghgx", 19) or cXzaxfAJ==LjBKcYCwVBhY("cxipb", 23) or cXzaxfAJ==LjBKcYCwVBhY("jk ynas", 22) or cXzaxfAJ==LjBKcYCwVBhY("lmapcu", 24) or cXzaxfAJ==LjBKcYCwVBhY("kl_zobt", 23) or cXzaxfAJ==LjBKcYCwVBhY("ana", 13) or cXzaxfAJ==LjBKcYCwVBhY("pum", 7) or cXzaxfAJ==LjBKcYCwVBhY("-chz", 20) then return nil end
return cXzaxfAJ
end
function NmyyWsthBoH.FindCrewValue(KYRsaoXktt)
if not KYRsaoXktt then return nil end
local xzYYIRYjrBaF=KYRsaoXktt:GetAttribute(LjBKcYCwVBhY("Kzme", 8)) or KYRsaoXktt:GetAttribute(LjBKcYCwVBhY("ShumYT", 16)) or KYRsaoXktt:GetAttribute(LjBKcYCwVBhY("YnasEz", 22)) or KYRsaoXktt:GetAttribute(LjBKcYCwVBhY("Vkxp_BW", 19))
if xzYYIRYjrBaF~=nil then return NmyyWsthBoH.NormalizeCrewValue(xzYYIRYjrBaF) end
local FJEkArYhkfK=ouWxQaOY.CrewCache[KYRsaoXktt]
if FJEkArYhkfK then
if FJEkArYhkfK.Object and FJEkArYhkfK.Object:IsDescendantOf(KYRsaoXktt) then return NmyyWsthBoH.NormalizeCrewValue(FJEkArYhkfK.Object.Value) end
if not FJEkArYhkfK.Object and ouWxQaOY.Now<FJEkArYhkfK.NextScan then return nil end
end
local ukSqRgbr=NmyyWsthBoH.FindValue(KYRsaoXktt,{LjBKcYCwVBhY("ynas", 22),LjBKcYCwVBhY("bqdvhc", 25)})
ouWxQaOY.CrewCache[KYRsaoXktt]={Object=ukSqRgbr,NextScan=ouWxQaOY.Now+1.0}
return ukSqRgbr and NmyyWsthBoH.NormalizeCrewValue(ukSqRgbr.Value) or nil
end
function NmyyWsthBoH.Crew(KYRsaoXktt)
if not KYRsaoXktt or KYRsaoXktt==GINLLIyHNBJr.Player then return true end
local RmOTwjxfM=NmyyWsthBoH.FindCrewValue(GINLLIyHNBJr.Player)
local uBCSgHmKY=NmyyWsthBoH.FindCrewValue(KYRsaoXktt)
if not RmOTwjxfM or not uBCSgHmKY then return true end
return RmOTwjxfM~=uBCSgHmKY
end
function NmyyWsthBoH.RangeForTool(vNovTtTa)
if not vNovTtTa then return iZSmZIjrN.Distance.Fallback end
local ILHqoXFMes=ouWxQaOY.ToolRangeCache[vNovTtTa]
if ILHqoXFMes then return ILHqoXFMes end
local wIQVJBbds=string.lower(vNovTtTa.Name)
local UUwPvtANR=iZSmZIjrN.Distance.Fallback
for HLwOsJAlWZar,kJZZCQLzeM in YbXiWHNtf(iZSmZIjrN.Distance) do
if HLwOsJAlWZar~=LjBKcYCwVBhY("Zuffvuwe", 20) and string.find(wIQVJBbds,string.lower(HLwOsJAlWZar),1,true) then UUwPvtANR=kJZZCQLzeM break end
end
ouWxQaOY.ToolRangeCache[vNovTtTa]=UUwPvtANR
return UUwPvtANR
end
function NmyyWsthBoH.InRange(qoZuKfrguXZa,vNovTtTa)
if not qoZuKfrguXZa then return false end
local XSOpucbYJ=ouWxQaOY.LocalRoot
local rDjNKWvfib=qoZuKfrguXZa:FindFirstChild(LjBKcYCwVBhY("GtlzmnhcQnnsOzqs", 25))
if not XSOpucbYJ or not rDjNKWvfib or not rDjNKWvfib:IsA(LjBKcYCwVBhY("AzrdOzqs", 25)) then return false end
return (rDjNKWvfib.Position-XSOpucbYJ.Position).Magnitude<=NmyyWsthBoH.RangeForTool(vNovTtTa)
end
function NmyyWsthBoH.Crouch(qoZuKfrguXZa)
if not qoZuKfrguXZa then return false end
if qoZuKfrguXZa~=ouWxQaOY.LocalCharacter then return true end
local pUUfDVLYvzu=NmyyWsthBoH.CachedStateValue(qoZuKfrguXZa,LjBKcYCwVBhY("Apmsaf", 24),{LjBKcYCwVBhY("fpzolrzefkd", 23),LjBKcYCwVBhY("eoynkqydaz", 22),LjBKcYCwVBhY("bqntbghmf", 25),LjBKcYCwVBhY("apmsafcb", 24),LjBKcYCwVBhY("xmjpxc", 21)})
if pUUfDVLYvzu and NmyyWsthBoH.StateEnabled(pUUfDVLYvzu.Value) then return false end
local IdPoDdDtFMPn=ouWxQaOY.LocalHumanoid
if NmyyWsthBoH.StateEnabled(qoZuKfrguXZa:GetAttribute(LjBKcYCwVBhY("Zolrzefkd", 23))) or NmyyWsthBoH.StateEnabled(qoZuKfrguXZa:GetAttribute(LjBKcYCwVBhY("Bqntbg", 25))) or NmyyWsthBoH.StateEnabled(qoZuKfrguXZa:GetAttribute(LjBKcYCwVBhY("FpZolrzefkd", 23))) then return false end
if IdPoDdDtFMPn and (NmyyWsthBoH.StateEnabled(IdPoDdDtFMPn:GetAttribute(LjBKcYCwVBhY("Zolrzefkd", 23))) or NmyyWsthBoH.StateEnabled(IdPoDdDtFMPn:GetAttribute(LjBKcYCwVBhY("Zolrze", 23)))) then return false end
if NmyyWsthBoH.StateEnabled(GINLLIyHNBJr.Player:GetAttribute(LjBKcYCwVBhY("Apmsafgle", 24))) or NmyyWsthBoH.StateEnabled(GINLLIyHNBJr.Player:GetAttribute(LjBKcYCwVBhY("Ujgmuz", 18))) then return false end
local yFRfKjIcrh=ouWxQaOY.LocalAnimator or (IdPoDdDtFMPn and IdPoDdDtFMPn:FindFirstChildOfClass(LjBKcYCwVBhY("Vidhvojm", 21)))
if not yFRfKjIcrh then return true end
ouWxQaOY.LocalAnimator=yFRfKjIcrh
if not ouWxQaOY.CrouchAnimationsScanned then
local vGfKCrmtCL=GINLLIyHNBJr.ReplicatedStorage:FindFirstChild(LjBKcYCwVBhY("BkhdmsZmhlzshnmr", 25))
if vGfKCrmtCL then
ouWxQaOY.CrouchAnimationsScanned=true
for _,ukSqRgbr in vKWviNFx(vGfKCrmtCL:GetDescendants()) do
if ukSqRgbr:IsA(LjBKcYCwVBhY("Sfaeslagf", 18)) and string.find(string.lower(ukSqRgbr.Name),LjBKcYCwVBhY("ynkqyd", 22),1,true) then ouWxQaOY.CrouchAnimationIds[ukSqRgbr.AnimationId]=true end
end
end
end
for _,Track in vKWviNFx(yFRfKjIcrh:GetPlayingAnimationTracks()) do
local iHaCOjDJn=Track.Animation
if (iHaCOjDJn and ouWxQaOY.CrouchAnimationIds[iHaCOjDJn.AnimationId]) or string.find(string.lower(Track.Name),LjBKcYCwVBhY("apmsaf", 24),1,true) or (iHaCOjDJn and string.find(string.lower(iHaCOjDJn.Name),LjBKcYCwVBhY("apmsaf", 24),1,true)) then return false end
end
return true
end
function NmyyWsthBoH.BasicTarget(KYRsaoXktt,qoZuKfrguXZa)
if not KYRsaoXktt or KYRsaoXktt==GINLLIyHNBJr.Player or KYRsaoXktt.Parent~=GINLLIyHNBJr.Players or not qoZuKfrguXZa or KYRsaoXktt.Character~=qoZuKfrguXZa or not qoZuKfrguXZa:IsDescendantOf(workspace) then return false end
return NmyyWsthBoH.Alive(qoZuKfrguXZa) and NmyyWsthBoH.KO(qoZuKfrguXZa) and not NmyyWsthBoH.NameESPIsAlly(KYRsaoXktt)
end
function NmyyWsthBoH.TargetSelected(KYRsaoXktt)
return KYRsaoXktt~=nil and KYRsaoXktt~=GINLLIyHNBJr.Player and ouWxQaOY.SelectedTargets[KYRsaoXktt.UserId]==true
end
function NmyyWsthBoH.SelectedTargetCount()
local SSMbvFRBhxYH=0
for _,OcyAxTLw in YbXiWHNtf(ouWxQaOY.SelectedTargets) do if OcyAxTLw==true then SSMbvFRBhxYH=SSMbvFRBhxYH+1 end end
return SSMbvFRBhxYH
end
function NmyyWsthBoH.SetTargetSelected(KYRsaoXktt,OcyAxTLw)
if not KYRsaoXktt or KYRsaoXktt==GINLLIyHNBJr.Player then return end
if OcyAxTLw then ouWxQaOY.SelectedTargets[KYRsaoXktt.UserId]=true
else
ouWxQaOY.SelectedTargets[KYRsaoXktt.UserId]=nil
if ouWxQaOY.UniTarget==KYRsaoXktt.Character then NmyyWsthBoH.EndRangeFire() NmyyWsthBoH.ReleaseTool() end
if ouWxQaOY.CameraLockTarget==KYRsaoXktt.Character then ouWxQaOY.CameraLockTarget=nil end
if ouWxQaOY.SeqTarget==KYRsaoXktt.Character then ouWxQaOY.SeqTarget=nil ouWxQaOY.LastSeqTarget=nil end
if ouWxQaOY.UniTarget==KYRsaoXktt.Character then ouWxQaOY.UniTarget=nil ouWxQaOY.LastUniTarget=nil end
end
NmyyWsthBoH.EnsureNameESP(KYRsaoXktt)
NmyyWsthBoH.ApplyNameESPVisibility()
if NmyyWsthBoH.RefreshTargetsPage then NmyyWsthBoH.RefreshTargetsPage() end
if NmyyWsthBoH.Refresh then NmyyWsthBoH.Refresh() end
end
function NmyyWsthBoH.ClearSelectedTargets()
table.clear(ouWxQaOY.SelectedTargets)
ouWxQaOY.CameraLockTarget=nil
ouWxQaOY.SeqTarget=nil
ouWxQaOY.UniTarget=nil
ouWxQaOY.LastSeqTarget=nil
ouWxQaOY.LastUniTarget=nil
NmyyWsthBoH.EndRangeFire()
NmyyWsthBoH.ReleaseTool()
NmyyWsthBoH.ApplyNameESPVisibility()
if NmyyWsthBoH.RefreshTargetsPage then NmyyWsthBoH.RefreshTargetsPage() end
if NmyyWsthBoH.Refresh then NmyyWsthBoH.Refresh() end
end
function NmyyWsthBoH.SelectAllTargets()
for _,KYRsaoXktt in vKWviNFx(GINLLIyHNBJr.Players:GetPlayers()) do if KYRsaoXktt~=GINLLIyHNBJr.Player then ouWxQaOY.SelectedTargets[KYRsaoXktt.UserId]=true end end
NmyyWsthBoH.ApplyNameESPVisibility()
if NmyyWsthBoH.RefreshTargetsPage then NmyyWsthBoH.RefreshTargetsPage() end
if NmyyWsthBoH.Refresh then NmyyWsthBoH.Refresh() end
end
function NmyyWsthBoH.ExportTargetsJson()
local KXGOTGhGZfpD={}
for AlhSDlMkwcNG,sel in YbXiWHNtf(ouWxQaOY.SelectedTargets) do if sel==true then table.insert(KXGOTGhGZfpD,apljvcUJ(AlhSDlMkwcNG)) end end
local GskBGpKR,kiyBlznnn=GgXzfybF(GINLLIyHNBJr.HttpService.JSONEncode,GINLLIyHNBJr.HttpService,{targets=KXGOTGhGZfpD})
return GskBGpKR and kiyBlznnn or LjBKcYCwVBhY("{}", 1)
end
function NmyyWsthBoH.ImportTargetsJson(text)
if typeof(text)~=LjBKcYCwVBhY("lmkbgz", 19) or #text>65536 then return false,LjBKcYCwVBhY("Fksxifa qbuq axqx", 23) end
local GskBGpKR,nNOZFUPpWcq=GgXzfybF(GINLLIyHNBJr.HttpService.JSONDecode,GINLLIyHNBJr.HttpService,text)
if not GskBGpKR or typeof(nNOZFUPpWcq)~=LjBKcYCwVBhY("szakd", 25) then return false,LjBKcYCwVBhY("Fksxifa GPLK clojxq", 23) end
local PRMVKrRXwE=nNOZFUPpWcq.targets or nNOZFUPpWcq
if typeof(PRMVKrRXwE)~=LjBKcYCwVBhY("jqrbu", 16) then return false,LjBKcYCwVBhY("Lhrrhmf szqfds khrs zqqzx", 25) end
local gKzDCREv=0
for _,rawId in vKWviNFx(PRMVKrRXwE) do
local AlhSDlMkwcNG=DhvFXRttG(rawId)
if AlhSDlMkwcNG and AlhSDlMkwcNG>0 and not ouWxQaOY.SelectedTargets[AlhSDlMkwcNG] then ouWxQaOY.SelectedTargets[AlhSDlMkwcNG]=true gKzDCREv=gKzDCREv+1 end
end
NmyyWsthBoH.ApplyNameESPVisibility()
if NmyyWsthBoH.RefreshTargetsPage then NmyyWsthBoH.RefreshTargetsPage() end
if NmyyWsthBoH.Refresh then NmyyWsthBoH.Refresh() end
return true,LjBKcYCwVBhY("Kcpecb ", 24)..apljvcUJ(gKzDCREv)..LjBKcYCwVBhY(" lcu rypecrq qsaacqqdsjjw!", 24)
end
function NmyyWsthBoH.ExportConfig()
local llikgAvMy={}
for k,v in YbXiWHNtf(iZSmZIjrN) do
if k~=LjBKcYCwVBhY("MtladqJdxr", 25) and k~=LjBKcYCwVBhY("HbvYvKxjb", 23) then
if typeof(v)==LjBKcYCwVBhY("XgnfBmxf", 19) then llikgAvMy[k]={__isEnum=true,Type=apljvcUJ(v.EnumType),Name=v.Name}
elseif typeof(v)==LjBKcYCwVBhY("ryzjc", 24) then local OmBDRbYVUlSF={} for tk,tv in YbXiWHNtf(v) do OmBDRbYVUlSF[tk]=tv end llikgAvMy[k]=OmBDRbYVUlSF
else llikgAvMy[k]=v end
end
end
local GskBGpKR,QIuMHfaluyY=GgXzfybF(GINLLIyHNBJr.HttpService.JSONEncode,GINLLIyHNBJr.HttpService,llikgAvMy)
return GskBGpKR and QIuMHfaluyY or LjBKcYCwVBhY("{}", 1)
end
function NmyyWsthBoH.ImportConfig(IyxoTpSic)
local GskBGpKR,llikgAvMy=GgXzfybF(GINLLIyHNBJr.HttpService.JSONDecode,GINLLIyHNBJr.HttpService,IyxoTpSic)
if not GskBGpKR or type(llikgAvMy)~=LjBKcYCwVBhY("lstdw", 18) then return false,LjBKcYCwVBhY("Fksxifa GPLK clojxq", 23) end
for k,v in YbXiWHNtf(llikgAvMy) do
if iZSmZIjrN[k]~=nil then
if type(v)==LjBKcYCwVBhY("szakd", 25) and v.__isEnum then GgXzfybF(function() iZSmZIjrN[k]=Enum[v.Type][v.Name] end)
elseif type(v)==LjBKcYCwVBhY("ovwgz", 21) and type(iZSmZIjrN[k])==LjBKcYCwVBhY("fmnxq", 12) then for tk,tv in YbXiWHNtf(v) do iZSmZIjrN[k][tk]=tv end
else iZSmZIjrN[k]=v end
end
end
table.clear(ouWxQaOY.ToolRangeCache)
ouWxQaOY.CachedDB=nil
ouWxQaOY.CachedTac=nil
return true,LjBKcYCwVBhY("Bnmehftqzshnm knzcdc rtbbdrretkkx.", 25)
end
function NmyyWsthBoH.SaveConfigToFile(name)
if not writefile then return false,LjBKcYCwVBhY("Dwdbtsnq cndr mns rtoonqs ehkd rzuhmf", 25) end
name=name:gsub(LjBKcYCwVBhY("[^%f%-_]", 9),LjBKcYCwVBhY("", 1))
if name==LjBKcYCwVBhY("", 1) then return false,LjBKcYCwVBhY("Hmuzkhc ehkdmzld", 25) end
local IyxoTpSic=NmyyWsthBoH.ExportConfig()
local ERItydUPRB=ouWxQaOY.ConfigFolder..LjBKcYCwVBhY("/", 1)..name..LjBKcYCwVBhY(".irnm", 25)
local GskBGpKR=GgXzfybF(writefile,ERItydUPRB,IyxoTpSic)
return GskBGpKR,GskBGpKR and (LjBKcYCwVBhY("Qytcb rm ", 24)..ouWxQaOY.ConfigFolder..LjBKcYCwVBhY("/", 1)..name) or LjBKcYCwVBhY("Dygjcb rm qytc dgjc", 24)
end
function NmyyWsthBoH.LoadConfigFromFile(name)
if not readfile then return false,LjBKcYCwVBhY("Cvcasrmp bmcq lmr qsnnmpr dgjc pcybgle", 24) end
name=name:gsub(LjBKcYCwVBhY("[^%d%-_]", 7),LjBKcYCwVBhY("", 1))
local ERItydUPRB=ouWxQaOY.ConfigFolder..LjBKcYCwVBhY("/", 1)..name..LjBKcYCwVBhY(".fokj", 22)
local GskBGpKR,mOPSrsDAV=GgXzfybF(readfile,ERItydUPRB)
if not GskBGpKR then return false,LjBKcYCwVBhY("Ehkd mns entmc nm OB", 25) end
return NmyyWsthBoH.ImportConfig(mOPSrsDAV)
end
function NmyyWsthBoH.IsKnifeTool(vNovTtTa)
if not vNovTtTa or not vNovTtTa:IsA(LjBKcYCwVBhY("Snnk", 25)) then return false end
local ILHqoXFMes=ouWxQaOY.ToolKnifeCache[vNovTtTa]
if ILHqoXFMes~=nil then return ILHqoXFMes end
local GnZbJohXchmh=string.find(string.lower(vNovTtTa.Name),LjBKcYCwVBhY("dgbyx", 19),1,true)~=nil
ouWxQaOY.ToolKnifeCache[vNovTtTa]=GnZbJohXchmh
return GnZbJohXchmh
end
function NmyyWsthBoH.IsGunTool(vNovTtTa)
if not vNovTtTa or not vNovTtTa:IsA(LjBKcYCwVBhY("Snnk", 25)) then return false end
if NmyyWsthBoH.IsKnifeTool(vNovTtTa) then return false end
local ILHqoXFMes=ouWxQaOY.ToolGunCache[vNovTtTa]
if ILHqoXFMes~=nil then return ILHqoXFMes end
local HLwOsJAlWZar=string.lower(vNovTtTa.Name)
local GnZbJohXchmh=true
for _,Keyword in vKWviNFx(HOYgMwZWhnO) do if string.find(HLwOsJAlWZar,Keyword,1,true) then GnZbJohXchmh=true break end end
ouWxQaOY.ToolGunCache[vNovTtTa]=GnZbJohXchmh
return GnZbJohXchmh
end
function NmyyWsthBoH.ToolEmpty(vNovTtTa)
if not vNovTtTa or not vNovTtTa:IsA(LjBKcYCwVBhY("Ojjg", 21)) then return false end
local TTzsVnPHBHR=vNovTtTa:FindFirstChild(LjBKcYCwVBhY("XjjlZifbkq", 23)) or vNovTtTa:FindFirstChild(LjBKcYCwVBhY("Nzzb", 13))
if TTzsVnPHBHR and TTzsVnPHBHR:IsA(LjBKcYCwVBhY("SxirbYxpb", 23)) then
local SSMbvFRBhxYH=NmyyWsthBoH.FiniteNumber(TTzsVnPHBHR.Value)
if SSMbvFRBhxYH~=nil and SSMbvFRBhxYH<=0 then return true end
end
return false
end
function NmyyWsthBoH.ToolReady(vNovTtTa)
if not vNovTtTa or not vNovTtTa:IsA(LjBKcYCwVBhY("Mhhe", 19)) then return false end
if iZSmZIjrN.TriggerKnifeCheck and NmyyWsthBoH.IsKnifeTool(vNovTtTa) then return false end
if vNovTtTa.RequiresHandle then
local IetdsuPqd=vNovTtTa:FindFirstChild(LjBKcYCwVBhY("Fylbjc", 24))
if not IetdsuPqd or not IetdsuPqd:IsA(LjBKcYCwVBhY("ZyqcNypr", 24)) then return false end
end
return not NmyyWsthBoH.ToolEmpty(vNovTtTa)
end
function NmyyWsthBoH.FindTool(HLwOsJAlWZar)
if not HLwOsJAlWZar then return nil end
local qoZuKfrguXZa=ouWxQaOY.LocalCharacter
if qoZuKfrguXZa then
local vNovTtTa=qoZuKfrguXZa:FindFirstChild(HLwOsJAlWZar)
if vNovTtTa and vNovTtTa:IsA(LjBKcYCwVBhY("Rmmj", 24)) then return vNovTtTa end
end
local TcGyyNTwfNxU=ouWxQaOY.LocalBackpack or GINLLIyHNBJr.Player:FindFirstChildOfClass(LjBKcYCwVBhY("Yxzhmxzh", 23))
if TcGyyNTwfNxU then
ouWxQaOY.LocalBackpack=TcGyyNTwfNxU
local vNovTtTa=TcGyyNTwfNxU:FindFirstChild(HLwOsJAlWZar)
if vNovTtTa and vNovTtTa:IsA(LjBKcYCwVBhY("Rmmj", 24)) then return vNovTtTa end
end
return nil
end
function NmyyWsthBoH.ResolveDualTool(ExactName,Aliases)
local FsglUfAIBb=NmyyWsthBoH.FindTool(ExactName)
if FsglUfAIBb then return FsglUfAIBb end
local YKJRprFmi=string.lower(ExactName):gsub(LjBKcYCwVBhY("[^%t]", 23),LjBKcYCwVBhY("", 1))
local qoZuKfrguXZa=ouWxQaOY.LocalCharacter
local TcGyyNTwfNxU=ouWxQaOY.LocalBackpack or GINLLIyHNBJr.Player:FindFirstChildOfClass(LjBKcYCwVBhY("Zyainyai", 24))
for _,Container in vKWviNFx({qoZuKfrguXZa,TcGyyNTwfNxU}) do
if Container then
for _,vNovTtTa in vKWviNFx(Container:GetChildren()) do
if vNovTtTa:IsA(LjBKcYCwVBhY("Pkkh", 22)) then
local woeAlLwg=string.lower(vNovTtTa.Name):gsub(LjBKcYCwVBhY("[^%p]", 19),LjBKcYCwVBhY("", 1))
if woeAlLwg==YKJRprFmi or table.find(Aliases,woeAlLwg) then return vNovTtTa end
end
end
end
end
return nil
end
function NmyyWsthBoH.GetDualTools()
local qoZuKfrguXZa=ouWxQaOY.LocalCharacter
local TcGyyNTwfNxU=ouWxQaOY.LocalBackpack
local wRnuIltKJd=ouWxQaOY.CachedDB
if not wRnuIltKJd or (wRnuIltKJd.Parent~=qoZuKfrguXZa and wRnuIltKJd.Parent~=TcGyyNTwfNxU) then wRnuIltKJd=NmyyWsthBoH.ResolveDualTool(iZSmZIjrN.DualFireDBName,jYOXTZYT) ouWxQaOY.CachedDB=wRnuIltKJd end
local lMBKayiOczO=ouWxQaOY.CachedTac
if not lMBKayiOczO or (lMBKayiOczO.Parent~=qoZuKfrguXZa and lMBKayiOczO.Parent~=TcGyyNTwfNxU) then lMBKayiOczO=NmyyWsthBoH.ResolveDualTool(iZSmZIjrN.DualFireTacName,NASfNieOGiEl) ouWxQaOY.CachedTac=lMBKayiOczO end
return wRnuIltKJd,lMBKayiOczO
end
function NmyyWsthBoH.RestoreEquipment(EwrHVgRcn)
local RMbNoRBSV={}
if ouWxQaOY.LocalCharacter==EwrHVgRcn.Character then
for _,vNovTtTa in vKWviNFx(EwrHVgRcn.Character:GetChildren()) do
local czvWkPyWWTJ=EwrHVgRcn.Tools and table.find(EwrHVgRcn.Tools,vNovTtTa) or vNovTtTa==EwrHVgRcn.Tool
if vNovTtTa:IsA(LjBKcYCwVBhY("Jeeb", 16)) and not czvWkPyWWTJ then RMbNoRBSV[vNovTtTa]=true end
end
end
local NBufAFlzUXpz=QlZrJtYXO(RMbNoRBSV)~=nil
for _,FJEkArYhkfK in vKWviNFx(EwrHVgRcn.Restore) do
local vNovTtTa=FJEkArYhkfK.Tool
GgXzfybF(function()
local yGabUOEGIvy=FJEkArYhkfK.Parent
if yGabUOEGIvy==EwrHVgRcn.Character and NBufAFlzUXpz and not RMbNoRBSV[vNovTtTa] then yGabUOEGIvy=EwrHVgRcn.Backpack end
if yGabUOEGIvy==EwrHVgRcn.Character and (ouWxQaOY.LocalCharacter~=EwrHVgRcn.Character or not NmyyWsthBoH.Alive(EwrHVgRcn.Character)) then yGabUOEGIvy=EwrHVgRcn.Backpack end
if yGabUOEGIvy and yGabUOEGIvy.Parent and (vNovTtTa.Parent==EwrHVgRcn.Character or vNovTtTa.Parent==EwrHVgRcn.Backpack) then vNovTtTa.Parent=yGabUOEGIvy end
if FJEkArYhkfK.ManualActivationOnly~=nil and vNovTtTa.Parent then vNovTtTa.ManualActivationOnly=FJEkArYhkfK.ManualActivationOnly end
end)
end
end
function NmyyWsthBoH.EndDualFire(Message)
local EwrHVgRcn=ouWxQaOY.DualFire
if not EwrHVgRcn then return end
ouWxQaOY.DualFire=nil
if EwrHVgRcn.Activated then
for _,vNovTtTa in vKWviNFx(EwrHVgRcn.Tools) do if not EwrHVgRcn.Released[vNovTtTa] then NmyyWsthBoH.RequestToolRelease(vNovTtTa) end end
local wRnuIltKJd,lMBKayiOczO=EwrHVgRcn.Tools[1],EwrHVgRcn.Tools[2]
local DjbBpQbbjhBD=NmyyWsthBoH.ToolReady(lMBKayiOczO) and lMBKayiOczO or (NmyyWsthBoH.ToolReady(wRnuIltKJd) and wRnuIltKJd or nil)
if DjbBpQbbjhBD then
for _,FJEkArYhkfK in vKWviNFx(EwrHVgRcn.Restore) do FJEkArYhkfK.Parent=(FJEkArYhkfK.Tool==DjbBpQbbjhBD) and EwrHVgRcn.Character or EwrHVgRcn.Backpack end
end
end
NmyyWsthBoH.RestoreEquipment(EwrHVgRcn)
if Message and not ouWxQaOY.Cleaned then
if EwrHVgRcn.Automatic then ouWxQaOY.RangeRetryAt=ouWxQaOY.Now+0.5 NmyyWsthBoH.RangeNotice(Message) else NmyyWsthBoH.Log(Message) end
end
end
function NmyyWsthBoH.BeginDualFire(Automatic)
if not NmyyWsthBoH.CanInteract() then return false end
if Automatic then if NmyyWsthBoH.RangeTarget()~=LjBKcYCwVBhY("Ulrc", 17) then return false end
elseif ouWxQaOY.SingleShotgunFallback or (ouWxQaOY.DualFire and ouWxQaOY.DualFire.Automatic) then NmyyWsthBoH.EndRangeFire() end
if Automatic and ouWxQaOY.DualFire then return false end
local function IBPotPxmaVQX(Message) if Automatic then NmyyWsthBoH.RangeNotice(Message) else NmyyWsthBoH.Log(Message) end end
if ouWxQaOY.DualFire then
if not ouWxQaOY.DualFire.RepeatQueued then ouWxQaOY.DualFire.RepeatQueued=true NmyyWsthBoH.Log(LjBKcYCwVBhY("CA + SZB: nmd qdodzs ptdtdc tmshk ansg ftmr zqd qdzcx", 25))
else NmyyWsthBoH.Log(LjBKcYCwVBhY("AY + QXZ: x obmbxq fp xiobxav nrbrba", 23)) end
return true
end
local qoZuKfrguXZa=ouWxQaOY.LocalCharacter
local TcGyyNTwfNxU=ouWxQaOY.LocalBackpack or GINLLIyHNBJr.Player:FindFirstChildOfClass(LjBKcYCwVBhY("Wvxfkvxf", 21))
if not NmyyWsthBoH.Alive(qoZuKfrguXZa) or not TcGyyNTwfNxU or not NmyyWsthBoH.KO(qoZuKfrguXZa) or not NmyyWsthBoH.Crouch(qoZuKfrguXZa) then IBPotPxmaVQX(LjBKcYCwVBhY("CA + SZB: bgzqzbsdq ltrs ad zkhud, rszmchmf zmc qdzcx", 25)) return false end
local wRnuIltKJd,lMBKayiOczO=NmyyWsthBoH.GetDualTools()
if not wRnuIltKJd or not lMBKayiOczO or wRnuIltKJd==lMBKayiOczO then IBPotPxmaVQX(LjBKcYCwVBhY("CA + SZB: ansg Snnkr zqd mddcdc / bgdbj ctzkEhqd snnk mzldr hm Bnmehf", 25)) return false end
if not NmyyWsthBoH.ToolReady(wRnuIltKJd) or not NmyyWsthBoH.ToolReady(lMBKayiOczO) then IBPotPxmaVQX(LjBKcYCwVBhY("CA + SZB: ansg ftmr mddc zlln zmc ltrs ad qdzcx", 25)) return false end
NmyyWsthBoH.ReleaseTool()
local NECZAgKqvLzw=ouWxQaOY.Now
local ZuePRzcECkY=Automatic and math.max(iZSmZIjrN.DualFireCooldown,iZSmZIjrN.ShotCooldown) or iZSmZIjrN.DualFireCooldown
local EwrHVgRcn={Character=qoZuKfrguXZa,Backpack=TcGyyNTwfNxU,Tools={wRnuIltKJd,lMBKayiOczO},Restore={},Phase=LjBKcYCwVBhY("Dptho", 25),Activated=false,Automatic=Automatic==true,Released={},ResetSent=false,RepeatQueued=false,ReadySince=nil,ReadyAfter=NECZAgKqvLzw+iZSmZIjrN.DualFireEquipDelay,Deadline=math.max(NECZAgKqvLzw,ouWxQaOY.LastDualFire+ZuePRzcECkY)+iZSmZIjrN.DualFireEquipTimeout}
for _,vNovTtTa in vKWviNFx(EwrHVgRcn.Tools) do table.insert(EwrHVgRcn.Restore,{Tool=vNovTtTa,Parent=vNovTtTa.Parent,ManualActivationOnly=vNovTtTa.ManualActivationOnly}) end
for _,vNovTtTa in vKWviNFx(qoZuKfrguXZa:GetChildren()) do if vNovTtTa:IsA(LjBKcYCwVBhY("Idda", 15)) and vNovTtTa~=wRnuIltKJd and vNovTtTa~=lMBKayiOczO then table.insert(EwrHVgRcn.Restore,{Tool=vNovTtTa,Parent=qoZuKfrguXZa}) end end
ouWxQaOY.DualFire=EwrHVgRcn
local oZYCskSKpAe,XMCrAUKpOMG=GgXzfybF(function()
for _,FJEkArYhkfK in vKWviNFx(EwrHVgRcn.Restore) do if FJEkArYhkfK.Tool~=wRnuIltKJd and FJEkArYhkfK.Tool~=lMBKayiOczO then FJEkArYhkfK.Tool.Parent=TcGyyNTwfNxU end end
for _,vNovTtTa in vKWviNFx(EwrHVgRcn.Tools) do ouWxQaOY.PendingToolReleases[vNovTtTa]=nil vNovTtTa.ManualActivationOnly=true vNovTtTa.Parent=qoZuKfrguXZa end
end)
if not oZYCskSKpAe then NmyyWsthBoH.EndDualFire(LjBKcYCwVBhY("AY + QXZ bnrfm cxfiba: ", 23)..apljvcUJ(XMCrAUKpOMG)) return false end
return true
end
function NmyyWsthBoH.UpdateDualFire()
local EwrHVgRcn=ouWxQaOY.DualFire
if not EwrHVgRcn then return end
if not NmyyWsthBoH.CanInteract() or ouWxQaOY.LocalCharacter~=EwrHVgRcn.Character or not NmyyWsthBoH.Alive(EwrHVgRcn.Character) or not NmyyWsthBoH.KO(EwrHVgRcn.Character) or not NmyyWsthBoH.Crouch(EwrHVgRcn.Character) then NmyyWsthBoH.EndDualFire() return end
local CKmPFroR
if EwrHVgRcn.Automatic then
local RGedaafZ,OtxqCUpAgq=NmyyWsthBoH.RangeTarget()
CKmPFroR=OtxqCUpAgq
if RGedaafZ~=LjBKcYCwVBhY("Bsyj", 24) or not OtxqCUpAgq then
if RGedaafZ==LjBKcYCwVBhY("Ovx", 21) or RGedaafZ==LjBKcYCwVBhY("CA", 25) then NmyyWsthBoH.BeginSingleShotgunFallback(RGedaafZ) else NmyyWsthBoH.EndRangeFire() ouWxQaOY.UniTarget,ouWxQaOY.LastUniTarget=nil,nil end
return
end
end
local NECZAgKqvLzw=ouWxQaOY.Now
local ZuePRzcECkY=EwrHVgRcn.Automatic and math.max(iZSmZIjrN.DualFireCooldown,iZSmZIjrN.ShotCooldown) or iZSmZIjrN.DualFireCooldown
local wRnuIltKJd,lMBKayiOczO=EwrHVgRcn.Tools[1],EwrHVgRcn.Tools[2]
if EwrHVgRcn.Automatic and (not NmyyWsthBoH.ToolReady(wRnuIltKJd) or not NmyyWsthBoH.ToolReady(lMBKayiOczO)) then NmyyWsthBoH.EndRangeFire() NmyyWsthBoH.RangeNotice(LjBKcYCwVBhY("Qzmfd sqhffdq: ansg rgnsftmr mddc zlln", 25)) return end
if wRnuIltKJd.Parent~=EwrHVgRcn.Character or lMBKayiOczO.Parent~=EwrHVgRcn.Character then NmyyWsthBoH.EndDualFire(LjBKcYCwVBhY("CA + SZB rsnoodc: vdzonm rxrsdl chc mns jddo ansg ftmr dpthoodc", 25)) return end
if EwrHVgRcn.Phase==LjBKcYCwVBhY("Pcjcyqc", 24) then
if NECZAgKqvLzw<EwrHVgRcn.ReleaseAt then return end
for _,vNovTtTa in vKWviNFx(EwrHVgRcn.Tools) do
if not EwrHVgRcn.Released[vNovTtTa] then
local oZYCskSKpAe,XMCrAUKpOMG=GgXzfybF(vNovTtTa.Deactivate,vNovTtTa)
if not oZYCskSKpAe then NmyyWsthBoH.EndDualFire(LjBKcYCwVBhY("BZ + RYA pcjcyqc dygjcb: ", 24)..apljvcUJ(XMCrAUKpOMG)) return end
if ouWxQaOY.DualFire~=EwrHVgRcn then return end
EwrHVgRcn.Released[vNovTtTa]=true
end
end
if NECZAgKqvLzw>=EwrHVgRcn.RestoreAt then
if EwrHVgRcn.RepeatQueued or EwrHVgRcn.Automatic then
EwrHVgRcn.RepeatQueued=false EwrHVgRcn.Phase=LjBKcYCwVBhY("Wimah", 18) EwrHVgRcn.Activated=false EwrHVgRcn.ResetSent=true EwrHVgRcn.ReadySince=NECZAgKqvLzw EwrHVgRcn.Released={} EwrHVgRcn.ReadyAfter=NECZAgKqvLzw EwrHVgRcn.Deadline=math.max(NECZAgKqvLzw,ouWxQaOY.LastDualFire+ZuePRzcECkY)+iZSmZIjrN.DualFireEquipTimeout
else NmyyWsthBoH.EndDualFire() end
elseif NECZAgKqvLzw>=EwrHVgRcn.ReleaseDeadline then NmyyWsthBoH.EndDualFire(LjBKcYCwVBhY("CA + SZB: ftm rszxdc atrx; ptdtdc qdodzs bzmbdkkdc", 25)) end
return
end
if not NmyyWsthBoH.ToolReady(wRnuIltKJd) or not NmyyWsthBoH.ToolReady(lMBKayiOczO) then
EwrHVgRcn.ReadySince=nil
if NECZAgKqvLzw>=EwrHVgRcn.Deadline then NmyyWsthBoH.EndDualFire(LjBKcYCwVBhY("CA + SZB: ansg ftmr chc mns adbnld qdzcx", 25)) end
return
end
if not EwrHVgRcn.ResetSent then
local oZYCskSKpAe,XMCrAUKpOMG=GgXzfybF(function() wRnuIltKJd:Deactivate() lMBKayiOczO:Deactivate() end)
if not oZYCskSKpAe then NmyyWsthBoH.EndDualFire(LjBKcYCwVBhY("XV + NUW lymyn zucfyx: ", 20)..apljvcUJ(XMCrAUKpOMG)) return end
if ouWxQaOY.DualFire~=EwrHVgRcn then return end
EwrHVgRcn.ResetSent=true
EwrHVgRcn.ReadySince=NECZAgKqvLzw
return
end
EwrHVgRcn.ReadySince=EwrHVgRcn.ReadySince or NECZAgKqvLzw
if NECZAgKqvLzw<EwrHVgRcn.ReadyAfter or NECZAgKqvLzw<ouWxQaOY.LastDualFire+ZuePRzcECkY or NECZAgKqvLzw-EwrHVgRcn.ReadySince<iZSmZIjrN.DualFireReadyStable then
if NECZAgKqvLzw>=EwrHVgRcn.Deadline then NmyyWsthBoH.EndDualFire(LjBKcYCwVBhY("CA + SZB: qdzchmdrr chc mns rdsskd", 25)) end
return
end
if EwrHVgRcn.Automatic and (not NmyyWsthBoH.TriggerShotAllowed(wRnuIltKJd,CKmPFroR) or not NmyyWsthBoH.TriggerShotAllowed(lMBKayiOczO,CKmPFroR)) then NmyyWsthBoH.StopTriggerTarget() return end
EwrHVgRcn.Phase=LjBKcYCwVBhY("Mzgzvnz", 21)
EwrHVgRcn.ReleaseAt=NECZAgKqvLzw+iZSmZIjrN.DualFirePulse
EwrHVgRcn.RestoreAt=NECZAgKqvLzw+iZSmZIjrN.DualFirePostShotHold
EwrHVgRcn.ReleaseDeadline=NECZAgKqvLzw+iZSmZIjrN.DualFireReleaseTimeout
EwrHVgRcn.Activated=true
EwrHVgRcn.Released={}
ouWxQaOY.LastDualFire=NECZAgKqvLzw
ouWxQaOY.ToolLastShots[wRnuIltKJd],ouWxQaOY.ToolLastShots[lMBKayiOczO]=NECZAgKqvLzw,NECZAgKqvLzw
local oZYCskSKpAe,XMCrAUKpOMG=GgXzfybF(function()
wRnuIltKJd:Activate()
if EwrHVgRcn.Automatic and (ouWxQaOY.DualFire~=EwrHVgRcn or not ouWxQaOY.Universal or not NmyyWsthBoH.CanInteract() or not NmyyWsthBoH.TriggerShotAllowed(lMBKayiOczO,CKmPFroR)) then
if ouWxQaOY.DualFire==EwrHVgRcn then NmyyWsthBoH.StopTriggerTarget() end
return
end
lMBKayiOczO:Activate()
end)
if not oZYCskSKpAe then NmyyWsthBoH.EndDualFire(LjBKcYCwVBhY("CA + SZB zbshuzshnm ezhkdc: ", 25)..apljvcUJ(XMCrAUKpOMG))
elseif not EwrHVgRcn.Automatic then NmyyWsthBoH.Log(LjBKcYCwVBhY("CA + SZB zbshuzshnm rdms / vzhshmf enq qdkdzrd", 25)) end
end
function NmyyWsthBoH.ToolForSlot(tAGGlUaRkbM)
local HLwOsJAlWZar=ouWxQaOY.LearnedSlots[tAGGlUaRkbM]
return HLwOsJAlWZar and NmyyWsthBoH.FindTool(HLwOsJAlWZar) or nil
end
function NmyyWsthBoH.ToolName(tAGGlUaRkbM) return ouWxQaOY.LearnedSlots[tAGGlUaRkbM] or LjBKcYCwVBhY("PIHVKKZY", 21) end
function NmyyWsthBoH.SeedTool(vNovTtTa)
if not vNovTtTa or not vNovTtTa:IsA(LjBKcYCwVBhY("Avvs", 7)) then return end
for _,HLwOsJAlWZar in vKWviNFx({LjBKcYCwVBhY("ElqyxoPilq", 23),LjBKcYCwVBhY("RknsMtladq", 25),LjBKcYCwVBhY("GltclrmpwQjmr", 24)}) do
local iQQWnQjhgVg=vNovTtTa:GetAttribute(HLwOsJAlWZar)
if typeof(iQQWnQjhgVg)==LjBKcYCwVBhY("hogvyl", 20) then
local tAGGlUaRkbM=math.floor(iQQWnQjhgVg)
if tAGGlUaRkbM>=1 and tAGGlUaRkbM<=9 then ouWxQaOY.LearnedSlots[tAGGlUaRkbM]=vNovTtTa.Name return end
end
local pUUfDVLYvzu=vNovTtTa:FindFirstChild(HLwOsJAlWZar)
if pUUfDVLYvzu and pUUfDVLYvzu:IsA(LjBKcYCwVBhY("ChnPufoy", 20)) and pUUfDVLYvzu.Value>=1 and pUUfDVLYvzu.Value<=9 then ouWxQaOY.LearnedSlots[pUUfDVLYvzu.Value]=vNovTtTa.Name return end
end
end
function NmyyWsthBoH.SeedSlots()
if ouWxQaOY.LocalCharacter then for _,ukSqRgbr in vKWviNFx(ouWxQaOY.LocalCharacter:GetChildren()) do NmyyWsthBoH.SeedTool(ukSqRgbr) end end
if ouWxQaOY.LocalBackpack then for _,ukSqRgbr in vKWviNFx(ouWxQaOY.LocalBackpack:GetChildren()) do NmyyWsthBoH.SeedTool(ukSqRgbr) end end
end
function NmyyWsthBoH.LearnSlot(tAGGlUaRkbM)
if ouWxQaOY.Cleaned or GINLLIyHNBJr.UIS:GetFocusedTextBox() then return end
ouWxQaOY.LearnSerial=ouWxQaOY.LearnSerial+1
local tGRWBKSNX=ouWxQaOY.LearnSerial
local qoZuKfrguXZa=ouWxQaOY.LocalCharacter
local omdWjpcwI=NmyyWsthBoH.EquippedTool()
task.spawn(function()
local xoDAhJEJzl=os.clock()+0.4
while os.clock()<xoDAhJEJzl do
GINLLIyHNBJr.RunService.RenderStepped:Wait()
if ouWxQaOY.Cleaned or ouWxQaOY.LearnSerial~=tGRWBKSNX or qoZuKfrguXZa~=ouWxQaOY.LocalCharacter then return end
local DUPpxMQZ=NmyyWsthBoH.EquippedTool()
local LmHXVAhrbf=nil
if DUPpxMQZ and DUPpxMQZ~=omdWjpcwI then LmHXVAhrbf=DUPpxMQZ
elseif not DUPpxMQZ and omdWjpcwI and omdWjpcwI.Parent and omdWjpcwI.Parent:IsA(LjBKcYCwVBhY("Zyainyai", 24)) then LmHXVAhrbf=omdWjpcwI end
if LmHXVAhrbf then ouWxQaOY.LearnedSlots[tAGGlUaRkbM]=LmHXVAhrbf.Name NmyyWsthBoH.RefreshSequence() return end
end
end)
end
function NmyyWsthBoH.Equip(tAGGlUaRkbM,RGedaafZ)
local IdPoDdDtFMPn=ouWxQaOY.LocalHumanoid
if not IdPoDdDtFMPn then return false end
local vNovTtTa=NmyyWsthBoH.ToolForSlot(tAGGlUaRkbM)
if not vNovTtTa then return false end
if NmyyWsthBoH.EquippedTool()~=vNovTtTa then IdPoDdDtFMPn:EquipTool(vNovTtTa) end
if RGedaafZ==LjBKcYCwVBhY("Kwimwflasd", 18) then ouWxQaOY.SequentialTool=vNovTtTa else ouWxQaOY.UniversalTool=vNovTtTa end
return true
end
function NmyyWsthBoH.Holster(vNovTtTa) if vNovTtTa and NmyyWsthBoH.EquippedTool()==vNovTtTa and ouWxQaOY.LocalHumanoid then ouWxQaOY.LocalHumanoid:UnequipTools() end end
function NmyyWsthBoH.HolsterSequential() NmyyWsthBoH.Holster(ouWxQaOY.SequentialTool) ouWxQaOY.SequentialTool=nil end
function NmyyWsthBoH.HolsterUniversal() NmyyWsthBoH.Holster(ouWxQaOY.UniversalTool) ouWxQaOY.UniversalTool=nil end
function NmyyWsthBoH.ResetSequence(Holster) ouWxQaOY.SequenceIndex=1 if Holster then NmyyWsthBoH.HolsterSequential() end end
function NmyyWsthBoH.CurrentSequenceSlot() return ouWxQaOY.Sequence[ouWxQaOY.SequenceIndex] end
function NmyyWsthBoH.SequenceText() local tAGGlUaRkbM=ouWxQaOY.Sequence[1] return tAGGlUaRkbM and (LjBKcYCwVBhY("Fmrzyp ", 24)..apljvcUJ(tAGGlUaRkbM)..LjBKcYCwVBhY(" / rhmfkd vdzonm", 25)) or LjBKcYCwVBhY("RKJXMMBA", 23) end
function NmyyWsthBoH.CharacterFromPart(bxQuxFKG)
local DUPpxMQZ=bxQuxFKG
while DUPpxMQZ and DUPpxMQZ~=workspace do
if DUPpxMQZ:IsA(LjBKcYCwVBhY("Egvwd", 18)) then
local KYRsaoXktt=GINLLIyHNBJr.Players:GetPlayerFromCharacter(DUPpxMQZ)
if KYRsaoXktt then return KYRsaoXktt,DUPpxMQZ end
end
DUPpxMQZ=DUPpxMQZ.Parent
end
return nil,nil
end
function NmyyWsthBoH.UpdateTriggerRayFilter()
local sGTXDrRO=ouWxQaOY.LocalCharacter
local VrpShEMOqw=GINLLIyHNBJr.Camera
local UbgtRfyCT=GINLLIyHNBJr.Mouse.TargetFilter
if UbgtRfyCT then ouWxQaOY.TriggerRayParams.FilterDescendantsInstances={sGTXDrRO,VrpShEMOqw,UbgtRfyCT}
else ouWxQaOY.TriggerRayParams.FilterDescendantsInstances={sGTXDrRO,VrpShEMOqw} end
end
function NmyyWsthBoH.CursorTarget(vNovTtTa,RangeOverride)
local VrpShEMOqw=GINLLIyHNBJr.Camera
local sGTXDrRO=ouWxQaOY.LocalCharacter
if not VrpShEMOqw or not sGTXDrRO then return nil end
local gILtqpKF=VrpShEMOqw:ViewportPointToRay(ouWxQaOY.MousePos.X,ouWxQaOY.MousePos.Y)
NmyyWsthBoH.UpdateTriggerRayFilter()
local WmWbJheOCdHO=ouWxQaOY.LocalRoot
local RBdVdjoCFZG=WmWbJheOCdHO and (VrpShEMOqw.CFrame.Position-WmWbJheOCdHO.Position).Magnitude or 0
local mABCbVdpei=math.min(15000,(RangeOverride or NmyyWsthBoH.RangeForTool(vNovTtTa))+RBdVdjoCFZG+8)
local YEOvkTKFpK=workspace:Raycast(gILtqpKF.Origin,gILtqpKF.Direction*mABCbVdpei,ouWxQaOY.TriggerRayParams)
local KYRsaoXktt,qoZuKfrguXZa=NmyyWsthBoH.CharacterFromPart(YEOvkTKFpK and YEOvkTKFpK.Instance)
if NmyyWsthBoH.BasicTarget(KYRsaoXktt,qoZuKfrguXZa) and NmyyWsthBoH.TargetSelected(KYRsaoXktt) then return qoZuKfrguXZa end
return nil
end
function NmyyWsthBoH.TriggerTarget(vNovTtTa,RangeOverride)
local EAJDKaCZEF=ouWxQaOY.TriggerCache
if EAJDKaCZEF.Frame==ouWxQaOY.TriggerFrame and EAJDKaCZEF.Tool==vNovTtTa and EAJDKaCZEF.Range==RangeOverride then return EAJDKaCZEF.Target end
ouWxQaOY.TriggerFOVTarget=nil
local GnZbJohXchmh=nil
if not iZSmZIjrN.TriggerFOVEnabled then
GnZbJohXchmh=NmyyWsthBoH.CursorTarget(vNovTtTa,RangeOverride)
else
local CwexZUfyLrC=NmyyWsthBoH.CursorTarget(vNovTtTa,RangeOverride)
local VrpShEMOqw=GINLLIyHNBJr.Camera
local WmWbJheOCdHO=ouWxQaOY.LocalRoot
if CwexZUfyLrC and VrpShEMOqw and WmWbJheOCdHO then
local KYRsaoXktt=GINLLIyHNBJr.Players:GetPlayerFromCharacter(CwexZUfyLrC)
if KYRsaoXktt and NmyyWsthBoH.TargetSelected(KYRsaoXktt) and NmyyWsthBoH.BasicTarget(KYRsaoXktt,CwexZUfyLrC) then
local bxQuxFKG=CwexZUfyLrC:FindFirstChild(LjBKcYCwVBhY("RmmboQlopl", 23)) or CwexZUfyLrC:FindFirstChild(LjBKcYCwVBhY("Qlopl", 23)) or CwexZUfyLrC:FindFirstChild(LjBKcYCwVBhY("GtlzmnhcQnnsOzqs", 25))
local rDjNKWvfib=CwexZUfyLrC:FindFirstChild(LjBKcYCwVBhY("GtlzmnhcQnnsOzqs", 25))
local kJZZCQLzeM=RangeOverride or NmyyWsthBoH.RangeForTool(vNovTtTa)
if bxQuxFKG and rDjNKWvfib and rDjNKWvfib:IsA(LjBKcYCwVBhY("ZyqcNypr", 24)) and (rDjNKWvfib.Position-WmWbJheOCdHO.Position).Magnitude<=kJZZCQLzeM then
local FubKubUujCED=iZSmZIjrN.TriggerFOVSize*0.5
local dWGeXrulfvR,FvAQCxffx=VrpShEMOqw:WorldToViewportPoint(bxQuxFKG.Position)
local laklYxSf,muIAfhVrx=dWGeXrulfvR.X-ouWxQaOY.MousePos.X,dWGeXrulfvR.Y-ouWxQaOY.MousePos.Y
if FvAQCxffx and dWGeXrulfvR.Z>0 and math.abs(laklYxSf)<=FubKubUujCED and math.abs(muIAfhVrx)<=FubKubUujCED then
NmyyWsthBoH.UpdateTriggerRayFilter()
local iKbHsfnhgB=bxQuxFKG.Position-VrpShEMOqw.CFrame.Position
local YEOvkTKFpK=workspace:Raycast(VrpShEMOqw.CFrame.Position,iKbHsfnhgB,ouWxQaOY.TriggerRayParams)
if not YEOvkTKFpK or YEOvkTKFpK.Instance:IsDescendantOf(CwexZUfyLrC) then ouWxQaOY.TriggerFOVTarget=CwexZUfyLrC GnZbJohXchmh=CwexZUfyLrC end
end
end
end
end
end
EAJDKaCZEF.Frame=ouWxQaOY.TriggerFrame
EAJDKaCZEF.Tool=vNovTtTa
EAJDKaCZEF.Range=RangeOverride
EAJDKaCZEF.Target=GnZbJohXchmh
return GnZbJohXchmh
end
function NmyyWsthBoH.SetTriggerFOV(Enabled) NmyyWsthBoH.StopTriggerTarget() iZSmZIjrN.TriggerFOVEnabled=Enabled==true end
function NmyyWsthBoH.SetTriggerFOVSize(pUUfDVLYvzu)
local BWCQkknqlal=NmyyWsthBoH.FiniteNumber(pUUfDVLYvzu)
if not BWCQkknqlal then return end
NmyyWsthBoH.StopTriggerTarget()
iZSmZIjrN.TriggerFOVSize=math.floor(math.clamp(BWCQkknqlal,20,1200)+0.5)
end
function NmyyWsthBoH.UpdateTriggerFOV() end
function NmyyWsthBoH.CameraLockBodyPart(qoZuKfrguXZa)
if not qoZuKfrguXZa then return nil end
local bxQuxFKG=qoZuKfrguXZa:FindFirstChild(LjBKcYCwVBhY("OjjylNilmi", 20)) or qoZuKfrguXZa:FindFirstChild(LjBKcYCwVBhY("Lgjkg", 18)) or qoZuKfrguXZa:FindFirstChild(LjBKcYCwVBhY("GtlzmnhcQnnsOzqs", 25))
return (bxQuxFKG and bxQuxFKG:IsA(LjBKcYCwVBhY("ZyqcNypr", 24))) and bxQuxFKG or nil
end
function NmyyWsthBoH.FindCameraLockTarget()
local VrpShEMOqw=GINLLIyHNBJr.Camera
local XSOpucbYJ=ouWxQaOY.LocalRoot
if not VrpShEMOqw or not XSOpucbYJ then return nil end
local MikWykbtusJe=ouWxQaOY.MousePos
local MsxsUyOwYz={}
local WLGyyHVFMXi=0
local GPLgbGtYz=0
for _,KYRsaoXktt in vKWviNFx(GINLLIyHNBJr.Players:GetPlayers()) do
if KYRsaoXktt~=GINLLIyHNBJr.Player and NmyyWsthBoH.TargetSelected(KYRsaoXktt) then
local qoZuKfrguXZa=KYRsaoXktt.Character
if NmyyWsthBoH.BasicTarget(KYRsaoXktt,qoZuKfrguXZa) then
local NSJcCOnnM=NmyyWsthBoH.CameraLockBodyPart(qoZuKfrguXZa)
local rDjNKWvfib=qoZuKfrguXZa:FindFirstChild(LjBKcYCwVBhY("GtlzmnhcQnnsOzqs", 25))
if NSJcCOnnM and rDjNKWvfib and rDjNKWvfib:IsA(LjBKcYCwVBhY("WvnzKvmo", 21)) then
local dWGeXrulfvR,FvAQCxffx=VrpShEMOqw:WorldToViewportPoint(NSJcCOnnM.Position)
if FvAQCxffx and dWGeXrulfvR.Z>0 then
local laklYxSf,muIAfhVrx=dWGeXrulfvR.X-MikWykbtusJe.X,dWGeXrulfvR.Y-MikWykbtusJe.Y
local BkcDvmTBuq=math.sqrt(laklYxSf*laklYxSf+muIAfhVrx*muIAfhVrx)
local jQSqhhhRyIs=(rDjNKWvfib.Position-XSOpucbYJ.Position).Magnitude
if BkcDvmTBuq>WLGyyHVFMXi then WLGyyHVFMXi=BkcDvmTBuq end
if jQSqhhhRyIs>GPLgbGtYz then GPLgbGtYz=jQSqhhhRyIs end
table.insert(MsxsUyOwYz,{Character=qoZuKfrguXZa,CursorDistance=BkcDvmTBuq,WorldDistance=jQSqhhhRyIs})
end
end
end
end
end
if #MsxsUyOwYz==0 then return nil end
local sPoKRbYh=nil
local HjxjZFLSq=math.huge
for _,LmHXVAhrbf in vKWviNFx(MsxsUyOwYz) do
local jrorAYgkp=WLGyyHVFMXi>0 and LmHXVAhrbf.CursorDistance/WLGyyHVFMXi or 0
local zIwNibpIQB=GPLgbGtYz>0 and LmHXVAhrbf.WorldDistance/GPLgbGtYz or 0
local sOxqSNOC=jrorAYgkp-iZSmZIjrN.TargetCursorWeight+zIwNibpIQB-iZSmZIjrN.TargetWorldDistanceWeight
if sOxqSNOC<HjxjZFLSq then HjxjZFLSq=sOxqSNOC sPoKRbYh=LmHXVAhrbf.Character end
end
return sPoKRbYh
end
function NmyyWsthBoH.EnableCameraLock()
if NmyyWsthBoH.SelectedTargetCount()<=0 then ouWxQaOY.CameraLock=false ouWxQaOY.CameraLockTarget=nil NmyyWsthBoH.Log(LjBKcYCwVBhY("BzldqzKnbj: rdkdbs z szqfds ehqrs", 25)) return false end
ouWxQaOY.CameraLock=true
ouWxQaOY.CameraLockTarget=nil
return true
end
function NmyyWsthBoH.DisableCameraLock() ouWxQaOY.CameraLock=false ouWxQaOY.CameraLockTarget=nil end
function NmyyWsthBoH.AimCameraAt(bxQuxFKG)
local VrpShEMOqw=GINLLIyHNBJr.Camera
if not VrpShEMOqw or not bxQuxFKG or not bxQuxFKG:IsA(LjBKcYCwVBhY("UtlxItkm", 19)) then return end
local NOnowvBKCpm=VrpShEMOqw.CFrame
local iKbHsfnhgB=bxQuxFKG.Position-NOnowvBKCpm.Position
if iKbHsfnhgB.Magnitude<0.001 then return end
local gILtqpKF=VrpShEMOqw:ViewportPointToRay(ouWxQaOY.MousePos.X,ouWxQaOY.MousePos.Y)
local TmvBjKYZi=gILtqpKF.Direction.Unit
local rFvoECaHCB=iKbHsfnhgB.Unit
local eBpebLnHXIPm=math.clamp(TmvBjKYZi:Dot(rFvoECaHCB),-1,1)
if eBpebLnHXIPm>=1-1e-12 then return end
local kNoVyQVKha=TmvBjKYZi:Cross(rFvoECaHCB)
if kNoVyQVKha.Magnitude<1e-8 then
kNoVyQVKha=TmvBjKYZi:Cross(NOnowvBKCpm.UpVector)
if kNoVyQVKha.Magnitude<1e-8 then kNoVyQVKha=TmvBjKYZi:Cross(NOnowvBKCpm.RightVector) end
end
local NodUhsONuap=CFrame.fromAxisAngle(kNoVyQVKha.Unit,math.acos(eBpebLnHXIPm))
VrpShEMOqw.CFrame=CFrame.new(NOnowvBKCpm.Position)*NodUhsONuap*NOnowvBKCpm.Rotation
end
function NmyyWsthBoH.UpdateCameraLock()
if not ouWxQaOY.CameraLock or not NmyyWsthBoH.CanInteract() or NmyyWsthBoH.PointerOverPanel() or not NmyyWsthBoH.Alive(ouWxQaOY.LocalCharacter) or not GINLLIyHNBJr.Camera then return end
local bBEecygQ=ouWxQaOY.CameraLockTarget and GINLLIyHNBJr.Players:GetPlayerFromCharacter(ouWxQaOY.CameraLockTarget) or nil
if not ouWxQaOY.CameraLockTarget or not ouWxQaOY.CameraLockTarget.Parent or not NmyyWsthBoH.BasicTarget(bBEecygQ,ouWxQaOY.CameraLockTarget) or not NmyyWsthBoH.TargetSelected(bBEecygQ) then
ouWxQaOY.CameraLockTarget=NmyyWsthBoH.FindCameraLockTarget()
end
local qoZuKfrguXZa=ouWxQaOY.CameraLockTarget
if not qoZuKfrguXZa then return end
local TNCaOaGn=NmyyWsthBoH.CameraLockBodyPart(qoZuKfrguXZa)
if not TNCaOaGn then ouWxQaOY.CameraLockTarget=nil return end
NmyyWsthBoH.AimCameraAt(TNCaOaGn)
end
function NmyyWsthBoH.RangeNotice(Message)
if ouWxQaOY.RangeLastNotice~=Message then ouWxQaOY.RangeLastNotice=Message NmyyWsthBoH.Log(Message) end
end
function NmyyWsthBoH.IsRangeRevolver(vNovTtTa)
if not vNovTtTa or not vNovTtTa:IsA(LjBKcYCwVBhY("Dyyv", 10)) then return false end
local HLwOsJAlWZar=string.lower(vNovTtTa.Name):gsub(LjBKcYCwVBhY("[^%x]", 1),LjBKcYCwVBhY("", 1))
local AYmjOebzxy=string.lower(iZSmZIjrN.RangeRevName):gsub(LjBKcYCwVBhY("[^%l]", 15),LjBKcYCwVBhY("", 1))
return HLwOsJAlWZar==AYmjOebzxy or HLwOsJAlWZar==LjBKcYCwVBhY("nar", 22) or HLwOsJAlWZar==LjBKcYCwVBhY("jwngdnwj", 18)
end
function NmyyWsthBoH.RangeTarget()
local sGTXDrRO=ouWxQaOY.LocalCharacter
local XSOpucbYJ=ouWxQaOY.LocalRoot
if not iZSmZIjrN.RangeAuto or not ouWxQaOY.Universal or not XSOpucbYJ or not NmyyWsthBoH.CanInteract() or NmyyWsthBoH.PointerOverPanel() or not NmyyWsthBoH.Alive(sGTXDrRO) or not NmyyWsthBoH.KO(sGTXDrRO) or not NmyyWsthBoH.Crouch(sGTXDrRO) then return nil end
local OtxqCUpAgq=NmyyWsthBoH.TriggerTarget(nil,iZSmZIjrN.RangeMaximum)
local rDjNKWvfib=OtxqCUpAgq and OtxqCUpAgq:FindFirstChild(LjBKcYCwVBhY("ZmesfgavJgglHsjl", 18))
if not rDjNKWvfib or not rDjNKWvfib:IsA(LjBKcYCwVBhY("ZyqcNypr", 24)) then return nil end
local WRqfzNaPDEN=(rDjNKWvfib.Position-XSOpucbYJ.Position).Magnitude
if WRqfzNaPDEN>iZSmZIjrN.RangeMaximum then return nil end
if WRqfzNaPDEN<iZSmZIjrN.RangeSwitch then
local wRnuIltKJd,lMBKayiOczO=NmyyWsthBoH.GetDualTools()
local yDDPmzCDog=NmyyWsthBoH.ToolReady(wRnuIltKJd)
local WFtJroqH=NmyyWsthBoH.ToolReady(lMBKayiOczO)
if not yDDPmzCDog and not WFtJroqH and NmyyWsthBoH.IsRangeRevolver(NmyyWsthBoH.EquippedTool()) then return LjBKcYCwVBhY("Xkb", 6),OtxqCUpAgq end
if WRqfzNaPDEN<iZSmZIjrN.RangeMinimum then return nil end
if not yDDPmzCDog and WFtJroqH then return LjBKcYCwVBhY("Mtv", 19),OtxqCUpAgq end
if not WFtJroqH and yDDPmzCDog then return LjBKcYCwVBhY("PN", 12),OtxqCUpAgq end
return LjBKcYCwVBhY("Ypvg", 21),OtxqCUpAgq
end
return LjBKcYCwVBhY("Wja", 5),OtxqCUpAgq
end
function NmyyWsthBoH.EndRangeFire()
if ouWxQaOY.DualFire and ouWxQaOY.DualFire.Automatic then NmyyWsthBoH.EndDualFire() end
NmyyWsthBoH.EndSingleShotgunFallback()
end
function NmyyWsthBoH.SetRangeAuto(Enabled) NmyyWsthBoH.StopTriggerTarget() iZSmZIjrN.RangeAuto=Enabled==true ouWxQaOY.RangeLastNotice=nil ouWxQaOY.RangeRetryAt=0 end
function NmyyWsthBoH.EndSingleShotgunFallback()
local EwrHVgRcn=ouWxQaOY.SingleShotgunFallback
if not EwrHVgRcn then return end
ouWxQaOY.SingleShotgunFallback=nil
NmyyWsthBoH.ReleaseTool()
NmyyWsthBoH.RequestToolRelease(EwrHVgRcn.Tool)
NmyyWsthBoH.RestoreEquipment(EwrHVgRcn)
end
function NmyyWsthBoH.BeginSingleShotgunFallback(RGedaafZ)
if ouWxQaOY.SingleShotgunFallback and ouWxQaOY.SingleShotgunFallback.Mode==RGedaafZ then return true end
local qoZuKfrguXZa=ouWxQaOY.LocalCharacter
local TcGyyNTwfNxU=ouWxQaOY.LocalBackpack or GINLLIyHNBJr.Player:FindFirstChildOfClass(LjBKcYCwVBhY("Utvditvd", 19))
local wRnuIltKJd,lMBKayiOczO=NmyyWsthBoH.GetDualTools()
local ZQLytXCIbVPY=(RGedaafZ==LjBKcYCwVBhY("Hoq", 14)) and lMBKayiOczO or wRnuIltKJd
if not TcGyyNTwfNxU or not NmyyWsthBoH.ToolReady(ZQLytXCIbVPY) then NmyyWsthBoH.EndRangeFire() NmyyWsthBoH.RangeNotice(LjBKcYCwVBhY("Rgnsftm ezkkazbj mddcr zlln sn bnmshmtd", 25)) return false end
local sYFPmDshG=ouWxQaOY.DualFire
if sYFPmDshG and not sYFPmDshG.Automatic then return false end
NmyyWsthBoH.ReleaseTool()
local EwrHVgRcn={Mode=RGedaafZ,Character=qoZuKfrguXZa,Backpack=TcGyyNTwfNxU,Tool=ZQLytXCIbVPY,Restore={},ReadyAfter=ouWxQaOY.Now+(ZQLytXCIbVPY.Parent==qoZuKfrguXZa and 0 or iZSmZIjrN.DualFireEquipDelay)}
if sYFPmDshG then EwrHVgRcn.Restore=sYFPmDshG.Restore ouWxQaOY.DualFire=nil
else
table.insert(EwrHVgRcn.Restore,{Tool=ZQLytXCIbVPY,Parent=ZQLytXCIbVPY.Parent,ManualActivationOnly=ZQLytXCIbVPY.ManualActivationOnly})
for _,Equipped in vKWviNFx(qoZuKfrguXZa:GetChildren()) do if Equipped:IsA(LjBKcYCwVBhY("Niif", 20)) and Equipped~=ZQLytXCIbVPY then table.insert(EwrHVgRcn.Restore,{Tool=Equipped,Parent=qoZuKfrguXZa}) end end
end
ouWxQaOY.SingleShotgunFallback=EwrHVgRcn
local oZYCskSKpAe,XMCrAUKpOMG=GgXzfybF(function()
for _,vNovTtTa in vKWviNFx(qoZuKfrguXZa:GetChildren()) do if vNovTtTa:IsA(LjBKcYCwVBhY("Rmmj", 24)) and vNovTtTa~=ZQLytXCIbVPY then NmyyWsthBoH.RequestToolRelease(vNovTtTa) vNovTtTa.Parent=TcGyyNTwfNxU end end
ZQLytXCIbVPY.ManualActivationOnly=true
ZQLytXCIbVPY.Parent=qoZuKfrguXZa
NmyyWsthBoH.RequestToolRelease(ZQLytXCIbVPY)
end)
if not oZYCskSKpAe or ouWxQaOY.SingleShotgunFallback~=EwrHVgRcn or ZQLytXCIbVPY.Parent~=qoZuKfrguXZa then
if ouWxQaOY.SingleShotgunFallback==EwrHVgRcn then NmyyWsthBoH.EndSingleShotgunFallback() end
ouWxQaOY.RangeRetryAt=ouWxQaOY.Now+0.5
NmyyWsthBoH.RangeNotice(RGedaafZ..LjBKcYCwVBhY(" dyjjzyai cosgn dygjcb", 24)..(oZYCskSKpAe and LjBKcYCwVBhY("", 1) or LjBKcYCwVBhY(": ", 1)..apljvcUJ(XMCrAUKpOMG)))
return false
end
NmyyWsthBoH.RangeNotice(LjBKcYCwVBhY("Ezkkazbj sqhffdq zbshud enq ", 25)..RGedaafZ)
return true
end
function NmyyWsthBoH.RangeMain()
local RGedaafZ,OtxqCUpAgq=NmyyWsthBoH.RangeTarget()
if not RGedaafZ then NmyyWsthBoH.StopTriggerTarget() return end
ouWxQaOY.UniTarget,ouWxQaOY.LastUniTarget=OtxqCUpAgq,OtxqCUpAgq
if RGedaafZ==LjBKcYCwVBhY("Wnte", 19) then
ouWxQaOY.ManualRevTool=nil
NmyyWsthBoH.EndSingleShotgunFallback()
NmyyWsthBoH.ReleaseTool()
if not ouWxQaOY.DualFire and ouWxQaOY.Now>=ouWxQaOY.RangeRetryAt then if NmyyWsthBoH.BeginDualFire(true) then ouWxQaOY.RangeLastNotice=nil end end
return
end
if RGedaafZ==LjBKcYCwVBhY("Szb", 25) or RGedaafZ==LjBKcYCwVBhY("YW", 21) then
ouWxQaOY.ManualRevTool=nil
if not ouWxQaOY.SingleShotgunFallback or ouWxQaOY.SingleShotgunFallback.Mode~=RGedaafZ then
if ouWxQaOY.Now<ouWxQaOY.RangeRetryAt or not NmyyWsthBoH.BeginSingleShotgunFallback(RGedaafZ) then return end
end
local EwrHVgRcn=ouWxQaOY.SingleShotgunFallback
local ZQLytXCIbVPY=EwrHVgRcn.Tool
if EwrHVgRcn.Character~=ouWxQaOY.LocalCharacter or ZQLytXCIbVPY.Parent~=EwrHVgRcn.Character or not NmyyWsthBoH.ToolReady(ZQLytXCIbVPY) then NmyyWsthBoH.EndSingleShotgunFallback() return end
if ouWxQaOY.Now>=EwrHVgRcn.ReadyAfter and ouWxQaOY.Now-(ouWxQaOY.ToolLastShots[ZQLytXCIbVPY] or -math.huge)>=iZSmZIjrN.ShotCooldown and NmyyWsthBoH.FireTool(ZQLytXCIbVPY,OtxqCUpAgq) then ouWxQaOY.LastUniShot,ouWxQaOY.ToolLastShots[ZQLytXCIbVPY]=ouWxQaOY.Now,ouWxQaOY.Now end
return
end
NmyyWsthBoH.EndSingleShotgunFallback()
if ouWxQaOY.DualFire and ouWxQaOY.DualFire.Automatic then NmyyWsthBoH.EndDualFire() end
local vNovTtTa=NmyyWsthBoH.EquippedTool()
if not NmyyWsthBoH.IsRangeRevolver(vNovTtTa) or not NmyyWsthBoH.ToolReady(vNovTtTa) then NmyyWsthBoH.StopTriggerTarget() return end
if ouWxQaOY.ActiveTool and ouWxQaOY.ActiveTool~=vNovTtTa then NmyyWsthBoH.ReleaseTool() end
if ouWxQaOY.ManualRevTool~=vNovTtTa then ouWxQaOY.ManualRevTool=vNovTtTa NmyyWsthBoH.RequestToolRelease(vNovTtTa) return end
local BFasHbiwqZ=ouWxQaOY.ToolLastShots[vNovTtTa] or -math.huge
if ouWxQaOY.Now-BFasHbiwqZ>=iZSmZIjrN.ShotCooldown and NmyyWsthBoH.FireTool(vNovTtTa,OtxqCUpAgq) then ouWxQaOY.LastUniShot,ouWxQaOY.ToolLastShots[vNovTtTa]=ouWxQaOY.Now,ouWxQaOY.Now end
end
function NmyyWsthBoH.StopTriggerTarget()
NmyyWsthBoH.EndRangeFire()
ouWxQaOY.ManualRevTool=nil
ouWxQaOY.TriggerFOVTarget=nil
ouWxQaOY.UniTarget=nil
ouWxQaOY.LastUniTarget=nil
NmyyWsthBoH.ReleaseTool()
end
function NmyyWsthBoH.TriggerShotAllowed(vNovTtTa,OtxqCUpAgq)
if OtxqCUpAgq==nil or not NmyyWsthBoH.InRange(OtxqCUpAgq,vNovTtTa) then return false end
if iZSmZIjrN.RangeAuto and ouWxQaOY.TriggerCache.Frame==ouWxQaOY.TriggerFrame and ouWxQaOY.TriggerCache.Range==iZSmZIjrN.RangeMaximum and ouWxQaOY.TriggerCache.Target==OtxqCUpAgq then return true end
return NmyyWsthBoH.TriggerTarget(vNovTtTa)==OtxqCUpAgq
end
function NmyyWsthBoH.FireTool(vNovTtTa,OtxqCUpAgq)
if not NmyyWsthBoH.CanInteract() or not NmyyWsthBoH.ToolReady(vNovTtTa) or vNovTtTa.Parent~=ouWxQaOY.LocalCharacter then NmyyWsthBoH.ReleaseTool() return false end
if ouWxQaOY.ActiveTool then if ouWxQaOY.ActiveTool~=vNovTtTa then NmyyWsthBoH.ReleaseTool() end return false end
if ouWxQaOY.PendingToolReleases[vNovTtTa] or ouWxQaOY.ToolReleasedFrame[vNovTtTa]==ouWxQaOY.TriggerFrame then return false end
if not NmyyWsthBoH.TriggerShotAllowed(vNovTtTa,OtxqCUpAgq) then NmyyWsthBoH.ReleaseTool() return false end
ouWxQaOY.ActiveTool=vNovTtTa
local oZYCskSKpAe,XMCrAUKpOMG=GgXzfybF(vNovTtTa.Activate,vNovTtTa)
if not oZYCskSKpAe then NmyyWsthBoH.ReleaseTool() NmyyWsthBoH.Log(LjBKcYCwVBhY("Qofddbo xzqfsxqflk cxfiba: ", 23)..apljvcUJ(XMCrAUKpOMG)) end
return true
end
function NmyyWsthBoH.DisableSequential(Holster) ouWxQaOY.Sequential=false ouWxQaOY.SeqTarget=nil ouWxQaOY.LastSeqTarget=nil ouWxQaOY.SeqLostSince=nil NmyyWsthBoH.ResetSequence(Holster==true) end
function NmyyWsthBoH.EnableSequential() ouWxQaOY.Sequential=false return false end
function NmyyWsthBoH.DisableUniversal() ouWxQaOY.Universal=false NmyyWsthBoH.StopTriggerTarget() return true end
function NmyyWsthBoH.EnableUniversal() NmyyWsthBoH.DisableSequential(false) ouWxQaOY.Universal=true ouWxQaOY.RangeRetryAt=0 ouWxQaOY.RangeLastNotice=nil return true end
function NmyyWsthBoH.SetUniversal(Enabled) if Enabled then NmyyWsthBoH.EnableUniversal() else NmyyWsthBoH.DisableUniversal() end NmyyWsthBoH.Refresh() end
function NmyyWsthBoH.UniversalMain()
ouWxQaOY.TriggerFrame=ouWxQaOY.TriggerFrame+1
NmyyWsthBoH.FlushToolReleases()
if (ouWxQaOY.DualFire and not ouWxQaOY.DualFire.Automatic) or not ouWxQaOY.Universal or not NmyyWsthBoH.CanInteract() or NmyyWsthBoH.PointerOverPanel() then NmyyWsthBoH.StopTriggerTarget() return end
if iZSmZIjrN.RangeAuto then NmyyWsthBoH.RangeMain() return end
NmyyWsthBoH.EndRangeFire()
local DUPpxMQZ=NmyyWsthBoH.EquippedTool()
if ouWxQaOY.ActiveTool and ouWxQaOY.ActiveTool~=DUPpxMQZ then NmyyWsthBoH.ReleaseTool() end
if not NmyyWsthBoH.ToolReady(DUPpxMQZ) then NmyyWsthBoH.StopTriggerTarget() return end
local OtxqCUpAgq=NmyyWsthBoH.TriggerTarget(DUPpxMQZ)
if not OtxqCUpAgq or not NmyyWsthBoH.InRange(OtxqCUpAgq,DUPpxMQZ) then NmyyWsthBoH.StopTriggerTarget() return end
ouWxQaOY.UniTarget=OtxqCUpAgq
local VUPNQTaFlwk=ouWxQaOY.LastUniTarget~=OtxqCUpAgq
ouWxQaOY.LastUniTarget=OtxqCUpAgq
local BFasHbiwqZ=ouWxQaOY.ToolLastShots[DUPpxMQZ] or -math.huge
if ouWxQaOY.Now-BFasHbiwqZ>=iZSmZIjrN.ShotCooldown and NmyyWsthBoH.FireTool(DUPpxMQZ,OtxqCUpAgq) then ouWxQaOY.LastUniShot=ouWxQaOY.Now ouWxQaOY.ToolLastShots[DUPpxMQZ]=ouWxQaOY.Now end
if VUPNQTaFlwk then NmyyWsthBoH.Log(LjBKcYCwVBhY("Tmhudqrzk szqfds → ", 25)..OtxqCUpAgq.Name) end
end
function NmyyWsthBoH.NameESPIsAlly(KYRsaoXktt)
if not KYRsaoXktt or KYRsaoXktt==GINLLIyHNBJr.Player then return false end
if GINLLIyHNBJr.Player.Team and KYRsaoXktt.Team and GINLLIyHNBJr.Player.Team==KYRsaoXktt.Team and not GINLLIyHNBJr.Player.Neutral and not KYRsaoXktt.Neutral then return true end
return not NmyyWsthBoH.Crew(KYRsaoXktt)
end
function NmyyWsthBoH.NameESPColor(KYRsaoXktt)
if NmyyWsthBoH.TargetSelected(KYRsaoXktt) then return eASxgpnm.RedBright end
if KYRsaoXktt and KYRsaoXktt~=GINLLIyHNBJr.Player and not NmyyWsthBoH.Crew(KYRsaoXktt) then return eASxgpnm.Green end
return eASxgpnm.White
end
function NmyyWsthBoH.NameESPVisible(KYRsaoXktt)
return ouWxQaOY.NameESPEnabled and not ouWxQaOY.StreamerMode and KYRsaoXktt~=nil and KYRsaoXktt~=GINLLIyHNBJr.Player and KYRsaoXktt.Parent==GINLLIyHNBJr.Players and (NmyyWsthBoH.TargetSelected(KYRsaoXktt) or not NmyyWsthBoH.Crew(KYRsaoXktt))
end
function NmyyWsthBoH.RemoveNameESP(KYRsaoXktt)
if not KYRsaoXktt then return end
local FJEkArYhkfK=ouWxQaOY.NameESPTags[KYRsaoXktt]
if FJEkArYhkfK and FJEkArYhkfK.Tag then FJEkArYhkfK.Tag:Destroy() end
ouWxQaOY.NameESPTags[KYRsaoXktt]=nil
end
function NmyyWsthBoH.UpdateNameESPTag(KYRsaoXktt)
if not KYRsaoXktt then return false end
local FJEkArYhkfK=ouWxQaOY.NameESPTags[KYRsaoXktt]
if not FJEkArYhkfK or not KYRsaoXktt.Parent or not FJEkArYhkfK.Tag or not FJEkArYhkfK.Tag.Parent then NmyyWsthBoH.RemoveNameESP(KYRsaoXktt) return false end
local qoZuKfrguXZa=KYRsaoXktt.Character
local alDxugfncss=qoZuKfrguXZa and qoZuKfrguXZa:FindFirstChild(LjBKcYCwVBhY("Zwsv", 18))
if not alDxugfncss or FJEkArYhkfK.Tag.Adornee~=alDxugfncss then NmyyWsthBoH.RemoveNameESP(KYRsaoXktt) return false end
local pkpMSmdre=KYRsaoXktt.DisplayName
if FJEkArYhkfK.LastText~=pkpMSmdre then FJEkArYhkfK.LastText=pkpMSmdre FJEkArYhkfK.Label.Text=pkpMSmdre end
local dWKjZOpaI=NmyyWsthBoH.NameESPColor(KYRsaoXktt)
if FJEkArYhkfK.LastColor~=dWKjZOpaI then FJEkArYhkfK.LastColor=dWKjZOpaI FJEkArYhkfK.Label.TextColor3=dWKjZOpaI end
local FvAQCxffx=NmyyWsthBoH.NameESPVisible(KYRsaoXktt)
if FJEkArYhkfK.LastEnabled~=FvAQCxffx then FJEkArYhkfK.LastEnabled=FvAQCxffx FJEkArYhkfK.Tag.Enabled=FvAQCxffx end
return true
end
function NmyyWsthBoH.ApplyNameESPVisibility() for KYRsaoXktt in YbXiWHNtf(ouWxQaOY.NameESPTags) do NmyyWsthBoH.UpdateNameESPTag(KYRsaoXktt) end end
function NmyyWsthBoH.CreateNameESPTag(KYRsaoXktt,qoZuKfrguXZa,alDxugfncss)
if ouWxQaOY.Cleaned or not KYRsaoXktt or KYRsaoXktt==GINLLIyHNBJr.Player or not KYRsaoXktt.Parent or not qoZuKfrguXZa or qoZuKfrguXZa~=KYRsaoXktt.Character or not qoZuKfrguXZa.Parent then return false end
alDxugfncss=alDxugfncss or qoZuKfrguXZa:FindFirstChild(LjBKcYCwVBhY("Czvy", 21))
if not alDxugfncss or not alDxugfncss:IsA(LjBKcYCwVBhY("AzrdOzqs", 25)) or not alDxugfncss:IsDescendantOf(qoZuKfrguXZa) then return false end
NmyyWsthBoH.RemoveNameESP(KYRsaoXktt)
local FvAQCxffx=NmyyWsthBoH.NameESPVisible(KYRsaoXktt)
local dWKjZOpaI=NmyyWsthBoH.NameESPColor(KYRsaoXktt)
local pkpMSmdre=KYRsaoXktt.DisplayName
local TBKSTMguGVo=Instance.new(LjBKcYCwVBhY("YfiiylxoaDrf", 23))
TBKSTMguGVo.Name=LjBKcYCwVBhY("enq sgd bgnrdmOkzxdqMzldSzf", 25)
TBKSTMguGVo.Adornee=alDxugfncss
TBKSTMguGVo.Size=UDim2.fromOffset(120,20)
TBKSTMguGVo.StudsOffset=Vector3.new(0,2.3,0)
TBKSTMguGVo.AlwaysOnTop=true
TBKSTMguGVo.ResetOnSpawn=false
TBKSTMguGVo.Enabled=FvAQCxffx
TBKSTMguGVo.Parent=lhDatiprwN
local GAKikvSqAa=Instance.new(LjBKcYCwVBhY("PatpHwxah", 22))
GAKikvSqAa.Name=LjBKcYCwVBhY("KxjbIxybi", 23)
GAKikvSqAa.Size=UDim2.fromScale(1,1)
GAKikvSqAa.BackgroundTransparency=1
GAKikvSqAa.Text=pkpMSmdre
GAKikvSqAa.TextColor3=dWKjZOpaI
GAKikvSqAa.TextStrokeTransparency=0.4
GAKikvSqAa.TextSize=11
GAKikvSqAa.TextScaled=false
GAKikvSqAa.Font=Enum.Font.GothamMedium
GAKikvSqAa.Parent=TBKSTMguGVo
ouWxQaOY.NameESPTags[KYRsaoXktt]={Tag=TBKSTMguGVo,Label=GAKikvSqAa,LastText=pkpMSmdre,LastColor=dWKjZOpaI,LastEnabled=FvAQCxffx}
return true
end
function NmyyWsthBoH.EnsureNameESP(KYRsaoXktt,qoZuKfrguXZa)
if ouWxQaOY.Cleaned or not KYRsaoXktt or KYRsaoXktt==GINLLIyHNBJr.Player or not KYRsaoXktt.Parent then return end
qoZuKfrguXZa=qoZuKfrguXZa or KYRsaoXktt.Character
if not qoZuKfrguXZa or qoZuKfrguXZa~=KYRsaoXktt.Character then return end
if NmyyWsthBoH.UpdateNameESPTag(KYRsaoXktt) then return end
if ouWxQaOY.NameESPPending[KYRsaoXktt]==qoZuKfrguXZa then return end
ouWxQaOY.NameESPPending[KYRsaoXktt]=qoZuKfrguXZa
task.spawn(function()
local alDxugfncss=qoZuKfrguXZa:FindFirstChild(LjBKcYCwVBhY("Vsor", 14)) or qoZuKfrguXZa:WaitForChild(LjBKcYCwVBhY("Axtw", 19),10)
if ouWxQaOY.Cleaned or ouWxQaOY.NameESPPending[KYRsaoXktt]~=qoZuKfrguXZa then return end
ouWxQaOY.NameESPPending[KYRsaoXktt]=nil
if not alDxugfncss or not KYRsaoXktt.Parent or KYRsaoXktt.Character~=qoZuKfrguXZa or not qoZuKfrguXZa.Parent then return end
NmyyWsthBoH.CreateNameESPTag(KYRsaoXktt,qoZuKfrguXZa,alDxugfncss)
end)
end
function NmyyWsthBoH.BindNameESPPlayer(KYRsaoXktt)
if not KYRsaoXktt or KYRsaoXktt==GINLLIyHNBJr.Player then return end
if not ouWxQaOY.NameESPConnections[KYRsaoXktt] then
ouWxQaOY.NameESPConnections[KYRsaoXktt]=KYRsaoXktt.CharacterAdded:Connect(function(qoZuKfrguXZa)
ouWxQaOY.NameESPPending[KYRsaoXktt]=nil
NmyyWsthBoH.RemoveNameESP(KYRsaoXktt)
NmyyWsthBoH.EnsureNameESP(KYRsaoXktt,qoZuKfrguXZa)
end)
end
NmyyWsthBoH.EnsureNameESP(KYRsaoXktt)
end
function NmyyWsthBoH.StartNameESP()
ouWxQaOY.NameESPPlayerAddedConnection=NmyyWsthBoH.Connect(GINLLIyHNBJr.Players.PlayerAdded,NmyyWsthBoH.BindNameESPPlayer)
ouWxQaOY.NameESPPlayerRemovingConnection=NmyyWsthBoH.Connect(GINLLIyHNBJr.Players.PlayerRemoving,function(KYRsaoXktt)
local ArWPrmHk=ouWxQaOY.NameESPConnections[KYRsaoXktt]
if ArWPrmHk then ArWPrmHk:Disconnect() end
ouWxQaOY.NameESPConnections[KYRsaoXktt]=nil
ouWxQaOY.NameESPPending[KYRsaoXktt]=nil
ouWxQaOY.CrewCache[KYRsaoXktt]=nil
NmyyWsthBoH.RemoveNameESP(KYRsaoXktt)
end)
for _,KYRsaoXktt in vKWviNFx(GINLLIyHNBJr.Players:GetPlayers()) do NmyyWsthBoH.BindNameESPPlayer(KYRsaoXktt) end
local jrfaCqwFb=0
ouWxQaOY.NameESPHeartbeatConnection=NmyyWsthBoH.Connect(GINLLIyHNBJr.RunService.Heartbeat,function()
if ouWxQaOY.Now-jrfaCqwFb<1.0 then return end
jrfaCqwFb=ouWxQaOY.Now
for _,KYRsaoXktt in vKWviNFx(GINLLIyHNBJr.Players:GetPlayers()) do NmyyWsthBoH.BindNameESPPlayer(KYRsaoXktt) end
end)
end
function NmyyWsthBoH.ToggleMenu()
ouWxQaOY.MenuOpen=not ouWxQaOY.MenuOpen
if iPZcHMsHwJee.Gui then
if ouWxQaOY.MenuOpen then
iPZcHMsHwJee.Gui.Enabled=true
iPZcHMsHwJee.Main.Size=UDim2.fromOffset(0,0)
iPZcHMsHwJee.Main.Visible=true
if iPZcHMsHwJee.Log then iPZcHMsHwJee.Log.Text=table.concat(ouWxQaOY.Logs,LjBKcYCwVBhY("\n", 7)) end
NmyyWsthBoH.Refresh()
GINLLIyHNBJr.TweenService:Create(iPZcHMsHwJee.Main,DvULsPfJM,{Size=iPZcHMsHwJee.Minimized and UDim2.fromOffset(218,42) or UDim2.fromOffset(720,600)}):Play()
else
local goIqYJMnMc=GINLLIyHNBJr.TweenService:Create(iPZcHMsHwJee.Main,RPmMpXKSNo,{Size=UDim2.fromOffset(0,0)})
goIqYJMnMc:Play()
goIqYJMnMc.Completed:Once(function() if not ouWxQaOY.MenuOpen then iPZcHMsHwJee.Main.Visible=false end end)
end
end
NmyyWsthBoH.Log(ouWxQaOY.MenuOpen and LjBKcYCwVBhY("Ldmt nodmdc", 25) or LjBKcYCwVBhY("Kcls ajmqcb", 24))
end
function NmyyWsthBoH.ToggleStreamerMode()
ouWxQaOY.StreamerMode=not ouWxQaOY.StreamerMode
NmyyWsthBoH.ApplyNameESPVisibility()
NmyyWsthBoH.Log(ouWxQaOY.StreamerMode and LjBKcYCwVBhY("Rsqdzldq lncd NM (DRO ghccdm)", 25) or LjBKcYCwVBhY("Rsqdzldq lncd NEE (DRO rgnvm)", 25))
end
function NmyyWsthBoH.Round(ukSqRgbr,Radius)
local CnATDHAtftU=Instance.new(LjBKcYCwVBhY("NBVhkgxk", 19))
CnATDHAtftU.CornerRadius=UDim.new(0,Radius or 8)
CnATDHAtftU.Parent=ukSqRgbr
return CnATDHAtftU
end
function NmyyWsthBoH.Stroke(ukSqRgbr,dWKjZOpaI,Transparency)
local kdKctTDr=Instance.new(LjBKcYCwVBhY("QEOpnkga", 22))
kdKctTDr.Color=dWKjZOpaI or eASxgpnm.Border
kdKctTDr.Thickness=1
kdKctTDr.Transparency=Transparency or 0
kdKctTDr.Parent=ukSqRgbr
return kdKctTDr
end
function NmyyWsthBoH.Label(yGabUOEGIvy,cXzaxfAJ,BWCQkknqlal,AtCgvbGBs,TextSize,dWKjZOpaI)
local ukSqRgbr=Instance.new(LjBKcYCwVBhY("OzsoGvwzg", 21))
ukSqRgbr.Size=BWCQkknqlal
ukSqRgbr.Position=AtCgvbGBs
ukSqRgbr.BackgroundTransparency=1
ukSqRgbr.Text=cXzaxfAJ
ukSqRgbr.TextColor3=dWKjZOpaI or eASxgpnm.Text
ukSqRgbr.TextSize=TextSize or 12
ukSqRgbr.Font=Enum.Font.Gotham
ukSqRgbr.TextXAlignment=Enum.TextXAlignment.Left
ukSqRgbr.Parent=yGabUOEGIvy
return ukSqRgbr
end
function NmyyWsthBoH.Button(yGabUOEGIvy,cXzaxfAJ,BWCQkknqlal,AtCgvbGBs)
local ukSqRgbr=Instance.new(LjBKcYCwVBhY("PatpXqppkj", 22))
ukSqRgbr.Size=BWCQkknqlal
ukSqRgbr.Position=AtCgvbGBs
ukSqRgbr.BackgroundColor3=eASxgpnm.Panel2
ukSqRgbr.BorderSizePixel=0
ukSqRgbr.Text=cXzaxfAJ
ukSqRgbr.TextColor3=eASxgpnm.Text
ukSqRgbr.TextSize=10
ukSqRgbr.Font=Enum.Font.GothamBold
ukSqRgbr.AutoButtonColor=false
ukSqRgbr.Parent=yGabUOEGIvy
NmyyWsthBoH.Round(ukSqRgbr,7)
NmyyWsthBoH.Stroke(ukSqRgbr)
ukSqRgbr.MouseEnter:Connect(function() GINLLIyHNBJr.TweenService:Create(ukSqRgbr,KBnkSpJE,{BackgroundColor3=eASxgpnm.CardHover}):Play() end)
ukSqRgbr.MouseLeave:Connect(function() GINLLIyHNBJr.TweenService:Create(ukSqRgbr,KBnkSpJE,{BackgroundColor3=eASxgpnm.Panel2}):Play() end)
return ukSqRgbr
end
function NmyyWsthBoH.Card(yGabUOEGIvy,Height)
local ukSqRgbr=Instance.new(LjBKcYCwVBhY("Zlugy", 20))
ukSqRgbr.Size=UDim2.new(1,0,0,Height)
ukSqRgbr.BackgroundColor3=eASxgpnm.Card
ukSqRgbr.BorderSizePixel=0
ukSqRgbr.Parent=yGabUOEGIvy
NmyyWsthBoH.Round(ukSqRgbr,9)
NmyyWsthBoH.Stroke(ukSqRgbr)
return ukSqRgbr
end
function NmyyWsthBoH.Scroll(GmZfoxeWm)
local AvdkAvftk=Instance.new(LjBKcYCwVBhY("RbqnkkhmfEqzld", 25))
AvdkAvftk.Size=UDim2.fromScale(1,1)
AvdkAvftk.BackgroundTransparency=1
AvdkAvftk.BorderSizePixel=0
AvdkAvftk.ScrollBarThickness=3
AvdkAvftk.ScrollBarImageColor3=eASxgpnm.Red
AvdkAvftk.AutomaticCanvasSize=Enum.AutomaticSize.Y
AvdkAvftk.CanvasSize=UDim2.new()
AvdkAvftk.Parent=GmZfoxeWm
local klgjqoLsRn=Instance.new(LjBKcYCwVBhY("THKhrsKzxnts", 25))
klgjqoLsRn.Padding=UDim.new(0,8)
klgjqoLsRn.SortOrder=Enum.SortOrder.LayoutOrder
klgjqoLsRn.Parent=AvdkAvftk
local nAfTQAZBAM=Instance.new(LjBKcYCwVBhY("THOzcchmf", 25))
nAfTQAZBAM.PaddingRight=UDim.new(0,7)
nAfTQAZBAM.PaddingBottom=UDim.new(0,16)
nAfTQAZBAM.Parent=AvdkAvftk
return AvdkAvftk
end
function NmyyWsthBoH.BuildBaseUI()
local CFApHlGhAx=GINLLIyHNBJr.PlayerGui or GINLLIyHNBJr.Player:FindFirstChildOfClass(LjBKcYCwVBhY("JfusylAoc", 20)) or GINLLIyHNBJr.Player:WaitForChild(LjBKcYCwVBhY("JfusylAoc", 20),10)
if not CFApHlGhAx then ykIYDEgvrY(LjBKcYCwVBhY("OkzxdqFth chc mns knzc vhsghm 65 rdbnmcr", 25)) end
local cQiSQpwUY=lhDatiprwN:FindFirstChild(LjBKcYCwVBhY("dmp rfc afmqclqESG", 24))
if cQiSQpwUY then cQiSQpwUY:Destroy() end
iPZcHMsHwJee.Gui=Instance.new(LjBKcYCwVBhY("PzobbkDrf", 23))
iPZcHMsHwJee.Gui.Name=LjBKcYCwVBhY("enq sgd bgnrdmrFTH", 25)
iPZcHMsHwJee.Gui.ResetOnSpawn=false
iPZcHMsHwJee.Gui.IgnoreGuiInset=true
iPZcHMsHwJee.Gui.DisplayOrder=50
iPZcHMsHwJee.Gui.AutoLocalize=false
iPZcHMsHwJee.Gui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
iPZcHMsHwJee.Gui.Parent=lhDatiprwN
NmyyWsthBoH.Connect(iPZcHMsHwJee.Gui.Destroying,NmyyWsthBoH.Cleanup)
iPZcHMsHwJee.Main=Instance.new(LjBKcYCwVBhY("Amvhz", 21))
iPZcHMsHwJee.Main.Size=UDim2.fromOffset(720,600)
iPZcHMsHwJee.Main.Position=UDim2.new(0.5,-360,0.5,-300)
iPZcHMsHwJee.Main.BackgroundColor3=eASxgpnm.BG
iPZcHMsHwJee.Main.BorderSizePixel=0
iPZcHMsHwJee.Main.ClipsDescendants=true
iPZcHMsHwJee.Main.Parent=iPZcHMsHwJee.Gui
NmyyWsthBoH.Round(iPZcHMsHwJee.Main,16)
iPZcHMsHwJee.Top=Instance.new(LjBKcYCwVBhY("Coxjb", 23))
iPZcHMsHwJee.Top.Position=UDim2.fromOffset(0,0)
iPZcHMsHwJee.Top.Size=UDim2.new(1,0,0,58)
iPZcHMsHwJee.Top.BackgroundColor3=eASxgpnm.Topbar
iPZcHMsHwJee.Top.BorderSizePixel=0
iPZcHMsHwJee.Top.Parent=iPZcHMsHwJee.Main
NmyyWsthBoH.Round(iPZcHMsHwJee.Top,16)
iPZcHMsHwJee.Title=NmyyWsthBoH.Label(iPZcHMsHwJee.Top,LjBKcYCwVBhY("dmp rfc afmqcl", 24),UDim2.fromOffset(270,28),UDim2.fromOffset(20,15),16,eASxgpnm.RedBright)
iPZcHMsHwJee.Title.Font=Enum.Font.GothamBold
NmyyWsthBoH.ApplyAnimatedGradient(iPZcHMsHwJee.Title)
iPZcHMsHwJee.Minimize=NmyyWsthBoH.Button(iPZcHMsHwJee.Top,LjBKcYCwVBhY("—", 1),UDim2.fromOffset(30,28),UDim2.new(1,-72,0,17))
iPZcHMsHwJee.Close=NmyyWsthBoH.Button(iPZcHMsHwJee.Top,LjBKcYCwVBhY("×", 1),UDim2.fromOffset(30,28),UDim2.new(1,-37,0,17))
iPZcHMsHwJee.Close.TextColor3=eASxgpnm.RedBright
iPZcHMsHwJee.Sidebar=Instance.new(LjBKcYCwVBhY("Yktfx", 19))
iPZcHMsHwJee.Sidebar.Position=UDim2.fromOffset(0,58)
iPZcHMsHwJee.Sidebar.Size=UDim2.new(0,150,1,-58)
iPZcHMsHwJee.Sidebar.BackgroundColor3=eASxgpnm.Sidebar
iPZcHMsHwJee.Sidebar.BorderSizePixel=0
iPZcHMsHwJee.Sidebar.Parent=iPZcHMsHwJee.Main
NmyyWsthBoH.Round(iPZcHMsHwJee.Sidebar,16)
iPZcHMsHwJee.Content=Instance.new(LjBKcYCwVBhY("Eqzld", 25))
iPZcHMsHwJee.Content.Position=UDim2.fromOffset(162,78)
iPZcHMsHwJee.Content.Size=UDim2.new(1,-174,1,-90)
iPZcHMsHwJee.Content.BackgroundTransparency=1
iPZcHMsHwJee.Content.ClipsDescendants=true
iPZcHMsHwJee.Content.Parent=iPZcHMsHwJee.Main
iPZcHMsHwJee.Pages={}
iPZcHMsHwJee.Nav={}
iPZcHMsHwJee.Mode=Instance.new(LjBKcYCwVBhY("QbuqIxybi", 23))
iPZcHMsHwJee.Mode.Size=UDim2.fromOffset(126,34)
iPZcHMsHwJee.Mode.Position=UDim2.new(0,12,1,-52)
iPZcHMsHwJee.Mode.BackgroundColor3=eASxgpnm.Panel
iPZcHMsHwJee.Mode.BorderSizePixel=0
iPZcHMsHwJee.Mode.Text=LjBKcYCwVBhY("JLAB / FAIB", 23)
iPZcHMsHwJee.Mode.TextColor3=eASxgpnm.Muted
iPZcHMsHwJee.Mode.TextSize=9
iPZcHMsHwJee.Mode.Font=Enum.Font.GothamBold
iPZcHMsHwJee.Mode.Parent=iPZcHMsHwJee.Sidebar
NmyyWsthBoH.Round(iPZcHMsHwJee.Mode,7)
NmyyWsthBoH.Stroke(iPZcHMsHwJee.Mode)
end
function NmyyWsthBoH.MakePage(HLwOsJAlWZar)
local GmZfoxeWm=Instance.new(LjBKcYCwVBhY("Coxjb", 23))
GmZfoxeWm.Size=UDim2.fromScale(1,1)
GmZfoxeWm.BackgroundTransparency=1
GmZfoxeWm.Visible=false
GmZfoxeWm.Parent=iPZcHMsHwJee.Content
iPZcHMsHwJee.Pages[HLwOsJAlWZar]=GmZfoxeWm
return GmZfoxeWm
end
function NmyyWsthBoH.ShowPage(HLwOsJAlWZar)
for PageName,GmZfoxeWm in YbXiWHNtf(iPZcHMsHwJee.Pages) do GmZfoxeWm.Visible=(PageName==HLwOsJAlWZar) end
for ButtonName,Data in YbXiWHNtf(iPZcHMsHwJee.Nav) do
local pdwvDeKVfFA=(ButtonName==HLwOsJAlWZar)
Data.Button.BackgroundColor3=pdwvDeKVfFA and eASxgpnm.RedDeep or eASxgpnm.Sidebar
Data.Button.TextColor3=pdwvDeKVfFA and eASxgpnm.RedBright or eASxgpnm.Muted
Data.Bar.Visible=pdwvDeKVfFA
end
end
function NmyyWsthBoH.MakeNav(HLwOsJAlWZar,cXzaxfAJ,Y)
local sQdklPKIt=Instance.new(LjBKcYCwVBhY("SdwsAtssnm", 25))
sQdklPKIt.Size=UDim2.fromOffset(126,38)
sQdklPKIt.Position=UDim2.fromOffset(12,Y)
sQdklPKIt.BackgroundColor3=eASxgpnm.Sidebar
sQdklPKIt.BorderSizePixel=0
sQdklPKIt.Text=LjBKcYCwVBhY("   ", 1)..cXzaxfAJ
sQdklPKIt.TextColor3=eASxgpnm.Muted
sQdklPKIt.TextSize=10
sQdklPKIt.TextXAlignment=Enum.TextXAlignment.Left
sQdklPKIt.Font=Enum.Font.GothamBold
sQdklPKIt.AutoButtonColor=false
sQdklPKIt.Parent=iPZcHMsHwJee.Sidebar
NmyyWsthBoH.Round(sQdklPKIt,7)
local zPtRdtEkTwM=Instance.new(LjBKcYCwVBhY("Coxjb", 23))
zPtRdtEkTwM.Size=UDim2.fromOffset(3,22)
zPtRdtEkTwM.Position=UDim2.fromOffset(0,8)
zPtRdtEkTwM.BackgroundColor3=eASxgpnm.Red
zPtRdtEkTwM.BorderSizePixel=0
zPtRdtEkTwM.Visible=false
zPtRdtEkTwM.Parent=sQdklPKIt
NmyyWsthBoH.Round(zPtRdtEkTwM,2)
sQdklPKIt.MouseButton1Click:Connect(function() NmyyWsthBoH.ShowPage(HLwOsJAlWZar) end)
iPZcHMsHwJee.Nav[HLwOsJAlWZar]={Button=sQdklPKIt,Bar=zPtRdtEkTwM}
end
function NmyyWsthBoH.BuildWelcomePage()
iPZcHMsHwJee.WelcomePage=NmyyWsthBoH.MakePage(LjBKcYCwVBhY("Ucjamkc", 24))
local iJRNnCBMtUF=NmyyWsthBoH.Label(iPZcHMsHwJee.WelcomePage,LjBKcYCwVBhY("Pxevhfx", 19),UDim2.fromOffset(350,26),UDim2.fromOffset(0,0),18)
iJRNnCBMtUF.Font=Enum.Font.GothamBold
NmyyWsthBoH.ApplyAnimatedGradient(iJRNnCBMtUF)
NmyyWsthBoH.Label(iPZcHMsHwJee.WelcomePage,LjBKcYCwVBhY("Xntq knbzk hcdmshsx nudquhdv zmc khud odqenqlzmbd ldsqhbr.", 25),UDim2.fromOffset(450,18),UDim2.fromOffset(0,28),9,eASxgpnm.Muted)
local EDiMzjvtZwfO=Instance.new(LjBKcYCwVBhY("Bnwia", 22))
EDiMzjvtZwfO.Position=UDim2.fromOffset(0,62)
EDiMzjvtZwfO.Size=UDim2.new(1,0,1,-63)
EDiMzjvtZwfO.BackgroundColor3=eASxgpnm.Card
EDiMzjvtZwfO.BorderSizePixel=0
EDiMzjvtZwfO.Parent=iPZcHMsHwJee.WelcomePage
NmyyWsthBoH.Round(EDiMzjvtZwfO,9)
NmyyWsthBoH.Stroke(EDiMzjvtZwfO)
local ELFGwgVEfX=Instance.new(LjBKcYCwVBhY("HlzfdKzadk", 25))
ELFGwgVEfX.Size=UDim2.fromOffset(100,100)
ELFGwgVEfX.Position=UDim2.fromOffset(24,24)
ELFGwgVEfX.BackgroundColor3=eASxgpnm.Panel2
ELFGwgVEfX.BorderSizePixel=0
ELFGwgVEfX.Parent=EDiMzjvtZwfO
NmyyWsthBoH.Round(ELFGwgVEfX,50)
NmyyWsthBoH.Stroke(ELFGwgVEfX)
task.spawn(function()
local GskBGpKR,mOPSrsDAV=GgXzfybF(GINLLIyHNBJr.Players.GetUserThumbnailAsync,GINLLIyHNBJr.Players,GINLLIyHNBJr.Player.UserId,Enum.ThumbnailType.AvatarThumbnail,Enum.ThumbnailSize.Size150x150)
if GskBGpKR and mOPSrsDAV then ELFGwgVEfX.Image=mOPSrsDAV end
end)
local dxWysaYhmn=NmyyWsthBoH.Label(EDiMzjvtZwfO,GINLLIyHNBJr.Player.DisplayName,UDim2.fromOffset(300,30),UDim2.fromOffset(144,34),24,eASxgpnm.RedBright)
dxWysaYhmn.Font=Enum.Font.GothamBold
NmyyWsthBoH.ApplyAnimatedGradient(dxWysaYhmn)
NmyyWsthBoH.Label(EDiMzjvtZwfO,LjBKcYCwVBhY("@", 1)..GINLLIyHNBJr.Player.Name,UDim2.fromOffset(300,20),UDim2.fromOffset(144,68),14,eASxgpnm.Muted)
local qVoURLYDK=Instance.new(LjBKcYCwVBhY("Amvhz", 21))
qVoURLYDK.Size=UDim2.new(1,-48,0,54)
qVoURLYDK.Position=UDim2.fromOffset(24,140)
qVoURLYDK.BackgroundColor3=eASxgpnm.Panel2
qVoURLYDK.BorderSizePixel=0
qVoURLYDK.Parent=EDiMzjvtZwfO
NmyyWsthBoH.Round(qVoURLYDK,9)
NmyyWsthBoH.Stroke(qVoURLYDK)
local rkkKamhJ=NmyyWsthBoH.Label(qVoURLYDK,LjBKcYCwVBhY("Xnt zqd sgd bgnrdm nmd, ", 25)..GINLLIyHNBJr.Player.DisplayName,UDim2.new(1,0,1,0),UDim2.new(),16,eASxgpnm.White)
rkkKamhJ.Font=Enum.Font.GothamBold
rkkKamhJ.TextXAlignment=Enum.TextXAlignment.Center
NmyyWsthBoH.ApplyAnimatedGradient(rkkKamhJ)
local JMedVhhaAXa=Instance.new(LjBKcYCwVBhY("Dpykc", 24))
JMedVhhaAXa.Size=UDim2.new(1,-48,0,120)
JMedVhhaAXa.Position=UDim2.fromOffset(24,208)
JMedVhhaAXa.BackgroundTransparency=1
JMedVhhaAXa.Parent=EDiMzjvtZwfO
local klgjqoLsRn=Instance.new(LjBKcYCwVBhY("SGJgqrJywmsr", 24))
klgjqoLsRn.FillDirection=Enum.FillDirection.Horizontal
klgjqoLsRn.HorizontalAlignment=Enum.HorizontalAlignment.Center
klgjqoLsRn.Padding=UDim.new(0,12)
klgjqoLsRn.SortOrder=Enum.SortOrder.LayoutOrder
klgjqoLsRn.Parent=JMedVhhaAXa
local function EgkKBHNf(TitleText)
local wMJmhZeKdzvp=Instance.new(LjBKcYCwVBhY("Zlugy", 20))
wMJmhZeKdzvp.Size=UDim2.new(0.31,0,1,0)
wMJmhZeKdzvp.BackgroundColor3=eASxgpnm.Panel2
wMJmhZeKdzvp.BorderSizePixel=0
wMJmhZeKdzvp.Parent=JMedVhhaAXa
NmyyWsthBoH.Round(wMJmhZeKdzvp,9)
NmyyWsthBoH.Stroke(wMJmhZeKdzvp)
local ozwFgKeWx=NmyyWsthBoH.Label(wMJmhZeKdzvp,TitleText,UDim2.new(1,-16,0,20),UDim2.fromOffset(12,12),10,eASxgpnm.Muted)
ozwFgKeWx.Font=Enum.Font.GothamBold
local pUUfDVLYvzu=NmyyWsthBoH.Label(wMJmhZeKdzvp,LjBKcYCwVBhY("--", 1),UDim2.new(1,-16,0,32),UDim2.fromOffset(12,36),20,eASxgpnm.RedBright)
pUUfDVLYvzu.Font=Enum.Font.GothamBold
NmyyWsthBoH.ApplyAnimatedGradient(pUUfDVLYvzu)
local OaMTYGlLZc=NmyyWsthBoH.Label(wMJmhZeKdzvp,LjBKcYCwVBhY("Toczshmf...", 25),UDim2.new(1,-16,0,18),UDim2.fromOffset(12,74),9,eASxgpnm.Muted)
OaMTYGlLZc.Font=Enum.Font.GothamMedium
return pUUfDVLYvzu,OaMTYGlLZc
end
iPZcHMsHwJee.WelcomePingValue,iPZcHMsHwJee.WelcomePingSub=EgkKBHNf(LjBKcYCwVBhY("LCRUMPI NGLE", 24))
iPZcHMsHwJee.WelcomeFpsValue,iPZcHMsHwJee.WelcomeFpsSub=EgkKBHNf(LjBKcYCwVBhY("BKHDMS EOR", 25))
iPZcHMsHwJee.WelcomeServerValue,iPZcHMsHwJee.WelcomeServerSub=EgkKBHNf(LjBKcYCwVBhY("PBOSBO PQXQRP", 23))
end
function NmyyWsthBoH.BuildStatusPage()
iPZcHMsHwJee.StatusPage=NmyyWsthBoH.MakePage(LjBKcYCwVBhY("Novopn", 21))
local iJRNnCBMtUF=NmyyWsthBoH.Label(iPZcHMsHwJee.StatusPage,LjBKcYCwVBhY("Pslrgkc mtcptgcu", 24),UDim2.fromOffset(360,26),UDim2.fromOffset(0,0),18)
iJRNnCBMtUF.Font=Enum.Font.GothamBold
NmyyWsthBoH.ApplyAnimatedGradient(iJRNnCBMtUF)
NmyyWsthBoH.Label(iPZcHMsHwJee.StatusPage,LjBKcYCwVBhY("Jgtc qryrc dmp rypecrgle, ucynmlq ylb glnsr.", 24),UDim2.fromOffset(450,18),UDim2.fromOffset(0,28),9,eASxgpnm.Muted)
local function MhBuvOmU(X,Y,W,H)
local bgZlZeCP=Instance.new(LjBKcYCwVBhY("Amvhz", 21))
bgZlZeCP.Position=UDim2.fromOffset(X,Y)
bgZlZeCP.Size=UDim2.fromOffset(W,H)
bgZlZeCP.BackgroundColor3=eASxgpnm.Card
bgZlZeCP.BackgroundTransparency=0.05
bgZlZeCP.BorderSizePixel=0
bgZlZeCP.Parent=iPZcHMsHwJee.StatusPage
NmyyWsthBoH.Round(bgZlZeCP,9)
NmyyWsthBoH.Stroke(bgZlZeCP)
local cXzaxfAJ=NmyyWsthBoH.Label(bgZlZeCP,LjBKcYCwVBhY("", 1),UDim2.new(1,-20,1,-20),UDim2.fromOffset(10,10),11)
cXzaxfAJ.TextWrapped=true
return cXzaxfAJ
end
iPZcHMsHwJee.CameraLockStatus=MhBuvOmU(0,62,264,74)
iPZcHMsHwJee.TriggerStatus=MhBuvOmU(274,62,264,74)
iPZcHMsHwJee.TargetStatus=MhBuvOmU(0,146,264,74)
iPZcHMsHwJee.ToolStatus=MhBuvOmU(274,146,264,74)
iPZcHMsHwJee.SequenceStatus=MhBuvOmU(0,230,538,74)
local moeYgiFd=Instance.new(LjBKcYCwVBhY("Bnwia", 22))
moeYgiFd.Position=UDim2.fromOffset(0,314)
moeYgiFd.Size=UDim2.fromOffset(538,130)
moeYgiFd.BackgroundColor3=eASxgpnm.Card
moeYgiFd.BackgroundTransparency=0.05
moeYgiFd.BorderSizePixel=0
moeYgiFd.Parent=iPZcHMsHwJee.StatusPage
NmyyWsthBoH.Round(moeYgiFd,9)
NmyyWsthBoH.Stroke(moeYgiFd)
NmyyWsthBoH.Label(moeYgiFd,LjBKcYCwVBhY("MZXZIO ZQZION", 21),UDim2.fromOffset(180,18),UDim2.fromOffset(11,8),9,eASxgpnm.Muted)
iPZcHMsHwJee.Log=NmyyWsthBoH.Label(moeYgiFd,LjBKcYCwVBhY("", 1),UDim2.new(1,-22,0,92),UDim2.fromOffset(11,29),10)
iPZcHMsHwJee.Log.Font=Enum.Font.Code
iPZcHMsHwJee.Log.TextYAlignment=Enum.TextYAlignment.Top
end
function NmyyWsthBoH.BuildSequencePage()
iPZcHMsHwJee.SequencePage=NmyyWsthBoH.MakePage(LjBKcYCwVBhY("Lxjnxgvx", 19))
iPZcHMsHwJee.SequenceScroll=NmyyWsthBoH.Scroll(iPZcHMsHwJee.SequencePage)
iPZcHMsHwJee.SettingRefreshers=iPZcHMsHwJee.SettingRefreshers or {}
local cIxWMKCV=0
local function RvwCohznU() cIxWMKCV=cIxWMKCV+1 return cIxWMKCV end
local iJRNnCBMtUF=Instance.new(LjBKcYCwVBhY("Coxjb", 23))
iJRNnCBMtUF.LayoutOrder=RvwCohznU()
iJRNnCBMtUF.Size=UDim2.new(1,0,0,52)
iJRNnCBMtUF.BackgroundTransparency=1
iJRNnCBMtUF.Parent=iPZcHMsHwJee.SequenceScroll
local gmOaqBLPJIwy=NmyyWsthBoH.Label(iJRNnCBMtUF,LjBKcYCwVBhY("Qofddbo zlkqoli", 23),UDim2.fromOffset(350,24),UDim2.fromOffset(0,0),18)
gmOaqBLPJIwy.Font=Enum.Font.GothamBold
NmyyWsthBoH.ApplyAnimatedGradient(gmOaqBLPJIwy)
NmyyWsthBoH.Label(iJRNnCBMtUF,LjBKcYCwVBhY("Zhl zs z rdkdbsdc szqfds hmrhcd sgd rptzqd sn sqhffdq. Dptho QDU xntqrdke; P zhlr.", 25),UDim2.new(1,0,0,18),UDim2.fromOffset(0,29),9,eASxgpnm.Muted)
local function bpWavuLef(cXzaxfAJ)
local bgZlZeCP=Instance.new(LjBKcYCwVBhY("Vhqcu", 16))
bgZlZeCP.LayoutOrder=RvwCohznU()
bgZlZeCP.Size=UDim2.new(1,0,0,32)
bgZlZeCP.BackgroundTransparency=1
bgZlZeCP.Parent=iPZcHMsHwJee.SequenceScroll
local GAKikvSqAa=NmyyWsthBoH.Label(bgZlZeCP,cXzaxfAJ,UDim2.new(1,0,1,0),UDim2.new(),10,eASxgpnm.RedBright)
GAKikvSqAa.Font=Enum.Font.GothamBold
NmyyWsthBoH.ApplyAnimatedGradient(GAKikvSqAa)
return bgZlZeCP
end
local function PpOgjJdiTxS(ozwFgKeWx,Description)
local bgZlZeCP=NmyyWsthBoH.Card(iPZcHMsHwJee.SequenceScroll,94)
bgZlZeCP.LayoutOrder=RvwCohznU()
bgZlZeCP.BackgroundTransparency=0.04
local dmEorSCSwM=NmyyWsthBoH.Label(bgZlZeCP,ozwFgKeWx,UDim2.new(1,-250,0,22),UDim2.fromOffset(16,13),12)
dmEorSCSwM.Font=Enum.Font.GothamBold
local SYcIDBeKee=NmyyWsthBoH.Label(bgZlZeCP,Description,UDim2.new(1,-245,0,42),UDim2.fromOffset(16,40),9,eASxgpnm.Muted)
SYcIDBeKee.TextWrapped=true
local dfJDrPdfg=NmyyWsthBoH.Button(bgZlZeCP,LjBKcYCwVBhY("IZZ", 20),UDim2.fromOffset(74,26),UDim2.new(1,-90,0,34))
return {State=dfJDrPdfg}
end
bpWavuLef(LjBKcYCwVBhY("SQHFFDQ LNCDR", 25))
iPZcHMsHwJee.SequentialMode=PpOgjJdiTxS(LjBKcYCwVBhY("Rdptdmshzk sqhffdq", 25),LjBKcYCwVBhY("Ztsnlzshbzkkx dpthor zmc ehqdr nmd bnmehftqdc vdzonm. Ltksh-ftm rvhsbghmf hr chrzakdc.", 25))
iPZcHMsHwJee.UniversalMode=PpOgjJdiTxS(LjBKcYCwVBhY("Tmhudqrzk sqhffdq", 25),LjBKcYCwVBhY("Dmzakdr ztsnlzshb sqhffdqhmf. Ztsn CA + SZB adknv 05; lzmtzkkx dptho QDU enq 05–790.", 25))
iPZcHMsHwJee.SequentialMode.State.Parent.Visible=false
local vwvYnwPU=NmyyWsthBoH.Card(iPZcHMsHwJee.SequenceScroll,72)
vwvYnwPU.LayoutOrder=RvwCohznU()
vwvYnwPU.Visible=false
iPZcHMsHwJee.UniversalMapping=NmyyWsthBoH.Label(vwvYnwPU,LjBKcYCwVBhY("", 1),UDim2.fromOffset(330,22),UDim2.fromOffset(14,25),10,eASxgpnm.Muted)
iPZcHMsHwJee.UniversalBind=NmyyWsthBoH.Button(vwvYnwPU,LjBKcYCwVBhY("", 1),UDim2.fromOffset(130,34),UDim2.new(1,-145,0,19))
iPZcHMsHwJee.SequenceRows={}
for Index=1,3 do
local bgZlZeCP=NmyyWsthBoH.Card(iPZcHMsHwJee.SequenceScroll,70)
bgZlZeCP.LayoutOrder=RvwCohznU()
bgZlZeCP.Visible=false
iPZcHMsHwJee.SequenceRows[Index]={Frame=bgZlZeCP,Mapping=NmyyWsthBoH.Label(bgZlZeCP,LjBKcYCwVBhY("", 1),UDim2.fromOffset(340,20),UDim2.fromOffset(62,26),10,eASxgpnm.Muted),Bind=NmyyWsthBoH.Button(bgZlZeCP,LjBKcYCwVBhY("", 1),UDim2.fromOffset(130,34),UDim2.new(1,-145,0,18))}
end
local cQAzqFOBY=Instance.new(LjBKcYCwVBhY("Yktfx", 19))
cQAzqFOBY.LayoutOrder=RvwCohznU()
cQAzqFOBY.Size=UDim2.new(1,0,0,42)
cQAzqFOBY.BackgroundTransparency=1
cQAzqFOBY.Parent=iPZcHMsHwJee.SequenceScroll
cQAzqFOBY.Visible=false
iPZcHMsHwJee.AddWeapon=NmyyWsthBoH.Button(cQAzqFOBY,LjBKcYCwVBhY("", 1),UDim2.fromOffset(155,34),UDim2.fromOffset(0,4))
iPZcHMsHwJee.RemoveWeapon=NmyyWsthBoH.Button(cQAzqFOBY,LjBKcYCwVBhY("", 1),UDim2.fromOffset(155,34),UDim2.new(1,-155,0,4))
local ldwXZGJz=NmyyWsthBoH.Card(iPZcHMsHwJee.SequenceScroll,68)
ldwXZGJz.LayoutOrder=RvwCohznU()
ldwXZGJz.BackgroundColor3=eASxgpnm.RedDeep
ldwXZGJz.Visible=false
iPZcHMsHwJee.SequenceInfo=NmyyWsthBoH.Label(ldwXZGJz,LjBKcYCwVBhY("", 1),UDim2.new(1,-24,1,-20),UDim2.fromOffset(12,10),9,eASxgpnm.Muted)
iPZcHMsHwJee.SequenceInfo.TextWrapped=true
end
function NmyyWsthBoH.RefreshTargetsPage()
if ouWxQaOY.Cleaned or not iPZcHMsHwJee.TargetsScroll then return end
for _,ukSqRgbr in vKWviNFx(iPZcHMsHwJee.TargetsScroll:GetChildren()) do if ukSqRgbr.Name==LjBKcYCwVBhY("PwncapLhwuanNks", 22) then ukSqRgbr:Destroy() end end
if iPZcHMsHwJee.TargetSelectionStatus then iPZcHMsHwJee.TargetSelectionStatus.Text=LjBKcYCwVBhY("PBIBZQBA / ", 23)..apljvcUJ(NmyyWsthBoH.SelectedTargetCount()) end
local UCqbxwhp={}
for _,KYRsaoXktt in vKWviNFx(GINLLIyHNBJr.Players:GetPlayers()) do if KYRsaoXktt~=GINLLIyHNBJr.Player then table.insert(UCqbxwhp,KYRsaoXktt) end end
table.sort(UCqbxwhp,function(A,B) return string.lower(A.DisplayName)<string.lower(B.DisplayName) end)
for Index,KYRsaoXktt in vKWviNFx(UCqbxwhp) do
local XggWygSzHW=NmyyWsthBoH.Card(iPZcHMsHwJee.TargetsScroll,64)
XggWygSzHW.Name=LjBKcYCwVBhY("QxodbqMixvboOlt", 23)
XggWygSzHW.LayoutOrder=10+Index
local AGOAeKelb=NmyyWsthBoH.Label(XggWygSzHW,KYRsaoXktt.DisplayName,UDim2.new(1,-150,0,20),UDim2.fromOffset(14,10),11)
AGOAeKelb.Font=Enum.Font.GothamSemibold
NmyyWsthBoH.Label(XggWygSzHW,LjBKcYCwVBhY("@", 1)..KYRsaoXktt.Name,UDim2.new(1,-150,0,18),UDim2.fromOffset(14,34),9,eASxgpnm.Muted)
local OcyAxTLw=NmyyWsthBoH.TargetSelected(KYRsaoXktt)
local npsbJmhKz=NmyyWsthBoH.Button(XggWygSzHW,OcyAxTLw and LjBKcYCwVBhY("PBIBZQBA", 23) or LjBKcYCwVBhY("QCJCAR", 24),UDim2.fromOffset(112,32),UDim2.new(1,-126,0,16))
npsbJmhKz.TextColor3=OcyAxTLw and eASxgpnm.Green or eASxgpnm.Text
XggWygSzHW.BackgroundColor3=OcyAxTLw and eASxgpnm.RedDeep or eASxgpnm.Card
npsbJmhKz.MouseButton1Click:Connect(function() NmyyWsthBoH.SetTargetSelected(KYRsaoXktt,not NmyyWsthBoH.TargetSelected(KYRsaoXktt)) end)
end
end
function NmyyWsthBoH.BuildTargetsPage()
iPZcHMsHwJee.TargetsPage=NmyyWsthBoH.MakePage(LjBKcYCwVBhY("Rypecrq", 24))
iPZcHMsHwJee.TargetsScroll=NmyyWsthBoH.Scroll(iPZcHMsHwJee.TargetsPage)
local iJRNnCBMtUF=Instance.new(LjBKcYCwVBhY("Bnwia", 22))
iJRNnCBMtUF.LayoutOrder=1
iJRNnCBMtUF.Size=UDim2.new(1,0,0,58)
iJRNnCBMtUF.BackgroundTransparency=1
iJRNnCBMtUF.Parent=iPZcHMsHwJee.TargetsScroll
local gmOaqBLPJIwy=NmyyWsthBoH.Label(iJRNnCBMtUF,LjBKcYCwVBhY("Rypecr qcjcargml & qfypc", 24),UDim2.fromOffset(350,24),UDim2.fromOffset(0,0),18)
gmOaqBLPJIwy.Font=Enum.Font.GothamBold
NmyyWsthBoH.ApplyAnimatedGradient(gmOaqBLPJIwy)
NmyyWsthBoH.Label(iJRNnCBMtUF,LjBKcYCwVBhY("Dwonqs xntq szqfds khrs bncd nq ozrsd z eqhdmc'r szqfds khrs adknv sn ldqfd lhrrhmf szqfdsr.", 25),UDim2.new(1,0,0,18),UDim2.fromOffset(0,30),9,eASxgpnm.Muted)
local rVZOCWpNcvhN=NmyyWsthBoH.Card(iPZcHMsHwJee.TargetsScroll,110)
rVZOCWpNcvhN.LayoutOrder=2
NmyyWsthBoH.Label(rVZOCWpNcvhN,LjBKcYCwVBhY("SZQFDS KHRS RGZQHMF", 25),UDim2.fromOffset(180,18),UDim2.fromOffset(14,10),9,eASxgpnm.Muted)
iPZcHMsHwJee.TargetShareBox=Instance.new(LjBKcYCwVBhY("RcvrZmv", 24))
iPZcHMsHwJee.TargetShareBox.Position=UDim2.fromOffset(14,32)
iPZcHMsHwJee.TargetShareBox.Size=UDim2.new(1,-28,0,32)
iPZcHMsHwJee.TargetShareBox.BackgroundColor3=eASxgpnm.BG
iPZcHMsHwJee.TargetShareBox.BorderSizePixel=0
iPZcHMsHwJee.TargetShareBox.PlaceholderText=LjBKcYCwVBhY("Dwonqs nq ozrsd szqfds IRNM bncd gdqd...", 25)
iPZcHMsHwJee.TargetShareBox.PlaceholderColor3=eASxgpnm.Muted
iPZcHMsHwJee.TargetShareBox.TextColor3=eASxgpnm.Text
iPZcHMsHwJee.TargetShareBox.TextSize=10
iPZcHMsHwJee.TargetShareBox.Font=Enum.Font.Code
iPZcHMsHwJee.TargetShareBox.ClearTextOnFocus=false
iPZcHMsHwJee.TargetShareBox.Parent=rVZOCWpNcvhN
NmyyWsthBoH.Round(iPZcHMsHwJee.TargetShareBox,7)
NmyyWsthBoH.Stroke(iPZcHMsHwJee.TargetShareBox)
local llXUcpjxERo=NmyyWsthBoH.Button(rVZOCWpNcvhN,LjBKcYCwVBhY("BUMLOQ", 23),UDim2.fromOffset(110,28),UDim2.fromOffset(14,72))
llXUcpjxERo.TextColor3=eASxgpnm.RedBright
local KoFCEicq=NmyyWsthBoH.Button(rVZOCWpNcvhN,LjBKcYCwVBhY("FJMLOQ (JBODB)", 23),UDim2.fromOffset(130,28),UDim2.fromOffset(130,72))
iPZcHMsHwJee.TargetShareStatus=NmyyWsthBoH.Label(rVZOCWpNcvhN,LjBKcYCwVBhY("Obxav", 23),UDim2.fromOffset(200,28),UDim2.new(1,-215,0,72),9,eASxgpnm.Muted)
iPZcHMsHwJee.TargetShareStatus.TextXAlignment=Enum.TextXAlignment.Right
llXUcpjxERo.MouseButton1Click:Connect(function() iPZcHMsHwJee.TargetShareBox.Text=NmyyWsthBoH.ExportTargetsJson() iPZcHMsHwJee.TargetShareStatus.Text=LjBKcYCwVBhY("Cvnmprcb rm zmv", 24) iPZcHMsHwJee.TargetShareStatus.TextColor3=eASxgpnm.Green end)
KoFCEicq.MouseButton1Click:Connect(function() local GskBGpKR,vmtyrOMc=NmyyWsthBoH.ImportTargetsJson(iPZcHMsHwJee.TargetShareBox.Text) iPZcHMsHwJee.TargetShareStatus.Text=vmtyrOMc iPZcHMsHwJee.TargetShareStatus.TextColor3=GskBGpKR and eASxgpnm.Green or eASxgpnm.RedBright end)
local GwMiGVYrG=NmyyWsthBoH.Card(iPZcHMsHwJee.TargetsScroll,60)
GwMiGVYrG.Name=LjBKcYCwVBhY("RypecrAmlrpmjq", 24)
GwMiGVYrG.LayoutOrder=3
iPZcHMsHwJee.TargetSelectionStatus=NmyyWsthBoH.Label(GwMiGVYrG,LjBKcYCwVBhY("NZGZXOZY / 1", 21),UDim2.fromOffset(150,22),UDim2.fromOffset(14,19),10,eASxgpnm.Muted)
iPZcHMsHwJee.TargetSelectionStatus.Font=Enum.Font.GothamBold
local qOIzfjxx=NmyyWsthBoH.Button(GwMiGVYrG,LjBKcYCwVBhY("JUU", 9),UDim2.fromOffset(72,32),UDim2.new(1,-170,0,14))
local zEfHbamYmu=NmyyWsthBoH.Button(GwMiGVYrG,LjBKcYCwVBhY("RATPG", 15),UDim2.fromOffset(72,32),UDim2.new(1,-90,0,14))
qOIzfjxx.MouseButton1Click:Connect(NmyyWsthBoH.SelectAllTargets)
zEfHbamYmu.MouseButton1Click:Connect(NmyyWsthBoH.ClearSelectedTargets)
if ouWxQaOY.TargetPlayerAddedConnection then ouWxQaOY.TargetPlayerAddedConnection:Disconnect() end
if ouWxQaOY.TargetPlayerRemovingConnection then ouWxQaOY.TargetPlayerRemovingConnection:Disconnect() end
ouWxQaOY.TargetPlayerAddedConnection=NmyyWsthBoH.Connect(GINLLIyHNBJr.Players.PlayerAdded,function(KYRsaoXktt)
task.defer(function()
if ouWxQaOY.Cleaned then return end
NmyyWsthBoH.RefreshTargetsPage()
if NmyyWsthBoH.TargetSelected(KYRsaoXktt) then NmyyWsthBoH.Log(KYRsaoXktt.Name..LjBKcYCwVBhY(" qdinhmdc / szqfds qdrsnqdc", 25)) end
if NmyyWsthBoH.Refresh then NmyyWsthBoH.Refresh() end
end)
end)
ouWxQaOY.TargetPlayerRemovingConnection=NmyyWsthBoH.Connect(GINLLIyHNBJr.Players.PlayerRemoving,function(KYRsaoXktt)
if ouWxQaOY.CameraLockTarget==KYRsaoXktt.Character then ouWxQaOY.CameraLockTarget=nil end
task.defer(function() if ouWxQaOY.Cleaned then return end NmyyWsthBoH.RefreshTargetsPage() if NmyyWsthBoH.Refresh then NmyyWsthBoH.Refresh() end end)
end)
NmyyWsthBoH.RefreshTargetsPage()
end
function NmyyWsthBoH.BuildSettingsPage()
iPZcHMsHwJee.SettingsPage=NmyyWsthBoH.MakePage(LjBKcYCwVBhY("Oappejco", 22))
iPZcHMsHwJee.SettingsScroll=NmyyWsthBoH.Scroll(iPZcHMsHwJee.SettingsPage)
iPZcHMsHwJee.SettingRefreshers=iPZcHMsHwJee.SettingRefreshers or {}
local cIxWMKCV=0
local function RvwCohznU() cIxWMKCV=cIxWMKCV+1 return cIxWMKCV end
local function bpWavuLef(cXzaxfAJ)
local bgZlZeCP=Instance.new(LjBKcYCwVBhY("Vhqcu", 16))
bgZlZeCP.LayoutOrder=RvwCohznU()
bgZlZeCP.Size=UDim2.new(1,0,0,32)
bgZlZeCP.BackgroundTransparency=1
bgZlZeCP.Parent=iPZcHMsHwJee.SettingsScroll
local GAKikvSqAa=NmyyWsthBoH.Label(bgZlZeCP,cXzaxfAJ,UDim2.new(1,0,1,0),UDim2.new(),10,eASxgpnm.RedBright)
GAKikvSqAa.Font=Enum.Font.GothamBold
NmyyWsthBoH.ApplyAnimatedGradient(GAKikvSqAa)
end
local function qLtPHvJtom(HLwOsJAlWZar,Description)
local bgZlZeCP=NmyyWsthBoH.Card(iPZcHMsHwJee.SettingsScroll,66)
bgZlZeCP.LayoutOrder=RvwCohznU()
local WnBGzNVQU=NmyyWsthBoH.Label(bgZlZeCP,HLwOsJAlWZar,UDim2.fromOffset(320,20),UDim2.fromOffset(13,10),11)
WnBGzNVQU.Font=Enum.Font.GothamSemibold
local SYcIDBeKee=NmyyWsthBoH.Label(bgZlZeCP,Description,UDim2.new(1,-180,0,24),UDim2.fromOffset(13,35),9,eASxgpnm.Muted)
SYcIDBeKee.TextWrapped=true
SYcIDBeKee.TextYAlignment=Enum.TextYAlignment.Top
return bgZlZeCP
end
local function oSEwlfTDk(HLwOsJAlWZar,Description,Get,Set,Min,Max,Suffix)
local bgZlZeCP=qLtPHvJtom(HLwOsJAlWZar,Description)
local wMJmhZeKdzvp=Instance.new(LjBKcYCwVBhY("PatpXkt", 22))
wMJmhZeKdzvp.Size=UDim2.fromOffset(130,34)
wMJmhZeKdzvp.Position=UDim2.new(1,-145,0,16)
wMJmhZeKdzvp.BackgroundColor3=eASxgpnm.Panel2
wMJmhZeKdzvp.BorderSizePixel=0
wMJmhZeKdzvp.TextColor3=eASxgpnm.Text
wMJmhZeKdzvp.TextSize=11
wMJmhZeKdzvp.Font=Enum.Font.GothamSemibold
wMJmhZeKdzvp.ClearTextOnFocus=true
wMJmhZeKdzvp.Parent=bgZlZeCP
NmyyWsthBoH.Round(wMJmhZeKdzvp,7)
NmyyWsthBoH.Stroke(wMJmhZeKdzvp)
local function aDADwHKYAQGr() if not wMJmhZeKdzvp:IsFocused() then wMJmhZeKdzvp.Text=apljvcUJ(Get())..(Suffix or LjBKcYCwVBhY("", 1)) end end
table.insert(iPZcHMsHwJee.SettingRefreshers,aDADwHKYAQGr)
wMJmhZeKdzvp.FocusLost:Connect(function()
local KHdDvYyyXV=string.gsub(wMJmhZeKdzvp.Text,LjBKcYCwVBhY("[^%h%.%-]", 4),LjBKcYCwVBhY("", 1))
local pUUfDVLYvzu=NmyyWsthBoH.FiniteNumber(KHdDvYyyXV)
if pUUfDVLYvzu then Set(math.clamp(pUUfDVLYvzu,Min,Max)) end
aDADwHKYAQGr()
NmyyWsthBoH.RefreshSequence()
end)
aDADwHKYAQGr()
return wMJmhZeKdzvp
end
local function gzVPGcAlHyMi(HLwOsJAlWZar,Description,Get,Set)
local bgZlZeCP=qLtPHvJtom(HLwOsJAlWZar,Description)
local tOkEGTNszvVi=NmyyWsthBoH.Button(bgZlZeCP,LjBKcYCwVBhY("", 1),UDim2.fromOffset(92,34),UDim2.new(1,-107,0,16))
local function aDADwHKYAQGr()
if Get() then tOkEGTNszvVi.Text=LjBKcYCwVBhY("AJWXHAZ", 22) tOkEGTNszvVi.TextColor3=eASxgpnm.RedBright tOkEGTNszvVi.BackgroundColor3=eASxgpnm.RedDark
else tOkEGTNszvVi.Text=LjBKcYCwVBhY("EVV", 16) tOkEGTNszvVi.TextColor3=eASxgpnm.Muted tOkEGTNszvVi.BackgroundColor3=eASxgpnm.Panel2 end
end
table.insert(iPZcHMsHwJee.SettingRefreshers,aDADwHKYAQGr)
tOkEGTNszvVi.MouseButton1Click:Connect(function() Set(not Get()) aDADwHKYAQGr() end)
aDADwHKYAQGr()
return bgZlZeCP
end
local function nulBLwpoaP(HLwOsJAlWZar,Description,Get,Set)
local bgZlZeCP=qLtPHvJtom(HLwOsJAlWZar,Description)
local zcAnRQFSSDna=NmyyWsthBoH.Button(bgZlZeCP,LjBKcYCwVBhY("", 1),UDim2.fromOffset(130,34),UDim2.new(1,-145,0,16))
local function aDADwHKYAQGr()
if not (ouWxQaOY.KeyCapture and ouWxQaOY.KeyCapture.Button==zcAnRQFSSDna) then zcAnRQFSSDna.Text=Get().Name zcAnRQFSSDna.TextColor3=eASxgpnm.Text end
end
table.insert(iPZcHMsHwJee.SettingRefreshers,aDADwHKYAQGr)
zcAnRQFSSDna.MouseButton1Click:Connect(function()
if ouWxQaOY.SlotCapture then return end
ouWxQaOY.KeyCapture={Button=zcAnRQFSSDna,Set=Set}
zcAnRQFSSDna.Text=LjBKcYCwVBhY("OQDRR JDX", 25)
zcAnRQFSSDna.TextColor3=eASxgpnm.Yellow
end)
end
bpWavuLef(LjBKcYCwVBhY("JDXAHMCR", 25))
nulBLwpoaP(LjBKcYCwVBhY("AY + QXZ hbv", 23),LjBKcYCwVBhY("Zbshuzsdr ansg ftmr nmbd odq oqdrr; qdpthqdr ctzk-dptho rtoonqs.", 25),function() return iZSmZIjrN.DualFireKey end,function(NEKKeDNIVpya) NmyyWsthBoH.SetKey(LjBKcYCwVBhY("BsyjDgpcIcw", 24),NEKKeDNIVpya) end)
nulBLwpoaP(LjBKcYCwVBhY("WugyluFiwe eys", 20),LjBKcYCwVBhY("Snffkdr BzldqzKnbj. Sgd bzldqz enkknvr sgd rdkdbsdc szqfds'r ancx.", 25),function() return iZSmZIjrN.CameraLockKey end,function(NEKKeDNIVpya) NmyyWsthBoH.SetKey(LjBKcYCwVBhY("YwianwHkygGau", 22),NEKKeDNIVpya) end)
nulBLwpoaP(LjBKcYCwVBhY("Iajq gau", 22),LjBKcYCwVBhY("Nodmr zmc bknrdr sgd ldmt.", 25),function() return iZSmZIjrN.MenuKey end,function(NEKKeDNIVpya) NmyyWsthBoH.SetKey(LjBKcYCwVBhY("JbkrHbv", 23),NEKKeDNIVpya) end)
nulBLwpoaP(LjBKcYCwVBhY("Qrpcykcp kmbc", 24),LjBKcYCwVBhY("Niaafym mnlyugyl gixy.", 20),function() return iZSmZIjrN.StreamerKey end,function(NEKKeDNIVpya) NmyyWsthBoH.SetKey(LjBKcYCwVBhY("QrpcykcpIcw", 24),NEKKeDNIVpya) end)
bpWavuLef(LjBKcYCwVBhY("BZ + RYA RGKGLE", 24))
oSEwlfTDk(LjBKcYCwVBhY("Mxfo obmbxq abixv", 23),LjBKcYCwVBhY("Noshnmzk dwsqz cdkzx adsvddm ozhqr. Zs 5, sgd ftmr bnmsqnk qdbnudqx.", 25),function() return math.floor(iZSmZIjrN.DualFireCooldown*1000+0.5) end,function(pUUfDVLYvzu) iZSmZIjrN.DualFireCooldown=pUUfDVLYvzu/1000 end,0,3000,LjBKcYCwVBhY(" zf", 13))
oSEwlfTDk(LjBKcYCwVBhY("Mxfo bnrfm abixv", 23),LjBKcYCwVBhY("Zkknvr ansg vdzonm rbqhosr sn ehmhrg dpthoohmf.", 25),function() return math.floor(iZSmZIjrN.DualFireEquipDelay*1000+0.5) end,function(pUUfDVLYvzu) iZSmZIjrN.DualFireEquipDelay=pUUfDVLYvzu/1000 end,0,1000,LjBKcYCwVBhY(" gm", 20))
bpWavuLef(LjBKcYCwVBhY("HMOTS ADGZUHNQ", 25))
gzVPGcAlHyMi(LjBKcYCwVBhY("Elia ZxjboxIlzh", 23),LjBKcYCwVBhY("BzldqzKnbj rszxr zbshud nmkx vghkd hsr jdx hr gdkc.", 25),function() return iZSmZIjrN.HoldCameraLock end,function(pUUfDVLYvzu) iZSmZIjrN.HoldCameraLock=pUUfDVLYvzu end)
bpWavuLef(LjBKcYCwVBhY("LNUDLDMS & BNLAZS TSHKR", 25))
gzVPGcAlHyMi(LjBKcYCwVBhY("Uyjj Hskn", 24),LjBKcYCwVBhY("Zkknvr itlohmf nmbd nee zmx vzkk vgdm dmzakdc.", 25),function() return iZSmZIjrN.WallJumpEnabled end,function(pUUfDVLYvzu) iZSmZIjrN.WallJumpEnabled=pUUfDVLYvzu end)
bpWavuLef(LjBKcYCwVBhY("OKZXDQ DRO", 25))
gzVPGcAlHyMi(LjBKcYCwVBhY("Kgvtzm ivhzn", 21),LjBKcYCwVBhY("Rdkdbsdc szqfdsr zqd qdc; nsgdq bqdvlzsdr zqd fqddm. Dudqxnmd dkrd hr ghccdm.", 25),function() return ouWxQaOY.NameESPEnabled end,function(pUUfDVLYvzu) ouWxQaOY.NameESPEnabled=pUUfDVLYvzu NmyyWsthBoH.ApplyNameESPVisibility() end)
bpWavuLef(LjBKcYCwVBhY("QOFDDBOYLQ", 23))
gzVPGcAlHyMi(LjBKcYCwVBhY("Qofddbo bkxyiba", 23),LjBKcYCwVBhY("Fknazkkx stqmr sgd sqhffdqans rxrsdl nm nq nee vhsgnts z rgnqsbts jdx.", 25),function() return ouWxQaOY.Universal end,NmyyWsthBoH.SetUniversal)
gzVPGcAlHyMi(LjBKcYCwVBhY("Rpgeecp DMT", 24),LjBKcYCwVBhY("Dmzakd sqhffdq cdsdbshnm vhsghm sgd bnmehftqdc btqrnq zqdz.", 25),function() return iZSmZIjrN.TriggerFOVEnabled end,NmyyWsthBoH.SetTriggerFOV)
oSEwlfTDk(LjBKcYCwVBhY("Sqhffdq ENU rhyd", 25),LjBKcYCwVBhY("Cdsdbshnm zqdz vhcsg zmc gdhfgs hm ohwdkr. Ansg rhcdr bgzmfd snfdsgdq.", 25),function() return iZSmZIjrN.TriggerFOVSize end,NmyyWsthBoH.SetTriggerFOVSize,20,1200,LjBKcYCwVBhY(" ks", 21))
gzVPGcAlHyMi(LjBKcYCwVBhY("Ysrm BZ + RYA", 24),LjBKcYCwVBhY("Dlosx CA trdr SZB. Dptho QDU: 05–790, nq 5–790 he dhsgdq rgnsftm hr dlosx.", 25),function() return iZSmZIjrN.RangeAuto end,NmyyWsthBoH.SetRangeAuto)
gzVPGcAlHyMi(LjBKcYCwVBhY("Gjeba ydayg", 22),LjBKcYCwVBhY("Oqdudmsr ztsnlzshb sqhffdq zbshuzshnm vghkd sgd rdkdbsdc/dpthoodc snnk hr z jmhed.", 25),function() return iZSmZIjrN.TriggerKnifeCheck end,function(pUUfDVLYvzu) iZSmZIjrN.TriggerKnifeCheck=pUUfDVLYvzu end)
bpWavuLef(LjBKcYCwVBhY("PEIEJC", 22))
oSEwlfTDk(LjBKcYCwVBhY("Rgns bnnkcnvm", 25),LjBKcYCwVBhY("Lhmhltl cdkzx; eqzld qzsd zmc xntq snnk lzx khlhs ehqhmf etqsgdq.", 25),function() return math.floor(iZSmZIjrN.ShotCooldown*1000+0.5) end,function(pUUfDVLYvzu) iZSmZIjrN.ShotCooldown=pUUfDVLYvzu/1000 end,0,1000,LjBKcYCwVBhY(" jp", 23))
oSEwlfTDk(LjBKcYCwVBhY("ESG pcdpcqf", 24),LjBKcYCwVBhY("Gnv nesdm khud FTH sdws qdeqdrgdr.", 25),function() return math.floor(iZSmZIjrN.UIRefresh*1000+0.5) end,function(pUUfDVLYvzu) iZSmZIjrN.UIRefresh=pUUfDVLYvzu/1000 end,50,1000,LjBKcYCwVBhY(" ek", 18))
bpWavuLef(LjBKcYCwVBhY("LZMTZK SNNK QZMFD / ZTSN LNCD TRDR 6–<05 ZMC 05–790", 25))
for _,HLwOsJAlWZar in vKWviNFx({LjBKcYCwVBhY("Avggwvxf", 21),LjBKcYCwVBhY("Alryib", 23),LjBKcYCwVBhY("Qdu", 25),LjBKcYCwVBhY("Nuw", 20)}) do
oSEwlfTDk(HLwOsJAlWZar..LjBKcYCwVBhY(" jsfyw", 18),LjBKcYCwVBhY("Lzwhltl szqfds chrszmbd enq sghr vdzonm bzsdfnqx.", 25),function() return iZSmZIjrN.Distance[HLwOsJAlWZar] end,function(pUUfDVLYvzu) iZSmZIjrN.Distance[HLwOsJAlWZar]=pUUfDVLYvzu table.clear(ouWxQaOY.ToolRangeCache) end,1,5000,LjBKcYCwVBhY("", 1))
end
end
function NmyyWsthBoH.RefreshConfigList()
if not iPZcHMsHwJee.ConfigListScroll then return end
for _,child in vKWviNFx(iPZcHMsHwJee.ConfigListScroll:GetChildren()) do if child.Name==LjBKcYCwVBhY("XjiadbMjr", 21) then child:Destroy() end end
if not isfolder or not listfiles then return end
local GskBGpKR,mydvTbkw=GgXzfybF(listfiles,ouWxQaOY.ConfigFolder)
if not GskBGpKR or type(mydvTbkw)~=LjBKcYCwVBhY("pwxha", 22) then return end
local zGRnPtiMLwqH=1
for _,ERItydUPRB in vKWviNFx(mydvTbkw) do
local bPVAdcDM=ERItydUPRB:match(LjBKcYCwVBhY("([^/\\]+)%.gplk$", 23))
if bPVAdcDM then
local XggWygSzHW=NmyyWsthBoH.Card(iPZcHMsHwJee.ConfigListScroll,50)
XggWygSzHW.Name=LjBKcYCwVBhY("AmldgePmu", 24)
XggWygSzHW.LayoutOrder=zGRnPtiMLwqH
zGRnPtiMLwqH=zGRnPtiMLwqH+1
local WnBGzNVQU=NmyyWsthBoH.Label(XggWygSzHW,bPVAdcDM,UDim2.new(1,-150,0,20),UDim2.fromOffset(14,15),11)
WnBGzNVQU.Font=Enum.Font.GothamSemibold
local apftSvGPcnyQ=NmyyWsthBoH.Button(XggWygSzHW,LjBKcYCwVBhY("CFRU", 17),UDim2.fromOffset(70,28),UDim2.new(1,-165,0,11))
apftSvGPcnyQ.TextColor3=eASxgpnm.Green
apftSvGPcnyQ.MouseButton1Click:Connect(function()
local ZdWLCoDlfC,vmtyrOMc=NmyyWsthBoH.LoadConfigFromFile(bPVAdcDM)
iPZcHMsHwJee.ConfigStatus.Text=vmtyrOMc
iPZcHMsHwJee.ConfigStatus.TextColor3=ZdWLCoDlfC and eASxgpnm.Green or eASxgpnm.RedBright
if ZdWLCoDlfC then for _,aDADwHKYAQGr in vKWviNFx(iPZcHMsHwJee.SettingRefreshers or {}) do aDADwHKYAQGr() end NmyyWsthBoH.Log(LjBKcYCwVBhY("Jmybcb jmayj amldge: ", 24)..bPVAdcDM) NmyyWsthBoH.Refresh() end
end)
local nxmlnPJgdpp=NmyyWsthBoH.Button(XggWygSzHW,LjBKcYCwVBhY("CDKDSD", 25),UDim2.fromOffset(70,28),UDim2.new(1,-85,0,11))
nxmlnPJgdpp.TextColor3=eASxgpnm.RedBright
nxmlnPJgdpp.MouseButton1Click:Connect(function()
if delfile then GgXzfybF(delfile,ouWxQaOY.ConfigFolder..LjBKcYCwVBhY("/", 1)..bPVAdcDM..LjBKcYCwVBhY(".ajfe", 17)) end
iPZcHMsHwJee.ConfigStatus.Text=LjBKcYCwVBhY("Xyfynyx ", 20)..bPVAdcDM
iPZcHMsHwJee.ConfigStatus.TextColor3=eASxgpnm.Muted
NmyyWsthBoH.RefreshConfigList()
end)
end
end
end
function NmyyWsthBoH.BuildConfigPage()
iPZcHMsHwJee.ConfigPage=NmyyWsthBoH.MakePage(LjBKcYCwVBhY("Xjiadb", 21))
local ozwFgKeWx=NmyyWsthBoH.Label(iPZcHMsHwJee.ConfigPage,LjBKcYCwVBhY("Bnmehftqzshnm lzmzfdq", 25),UDim2.fromOffset(350,25),UDim2.fromOffset(0,0),18)
ozwFgKeWx.Font=Enum.Font.GothamBold
NmyyWsthBoH.ApplyAnimatedGradient(ozwFgKeWx)
NmyyWsthBoH.Label(iPZcHMsHwJee.ConfigPage,LjBKcYCwVBhY("Rzud, knzc, zmc lzmzfd bnmehf ehkdr nm xntq knbzk OB (dwdbtsnq vnqjrozbd).", 25),UDim2.fromOffset(520,18),UDim2.fromOffset(0,28),9,eASxgpnm.Muted)
local WOHNHGLJO=NmyyWsthBoH.Card(iPZcHMsHwJee.ConfigPage,80)
WOHNHGLJO.Position=UDim2.fromOffset(0,62)
NmyyWsthBoH.Label(WOHNHGLJO,LjBKcYCwVBhY("OWRA YQNNAJP YKJBEC", 22),UDim2.fromOffset(180,18),UDim2.fromOffset(14,10),9,eASxgpnm.Muted)
iPZcHMsHwJee.ConfigNameBox=Instance.new(LjBKcYCwVBhY("PatpXkt", 22))
iPZcHMsHwJee.ConfigNameBox.Position=UDim2.fromOffset(14,32)
iPZcHMsHwJee.ConfigNameBox.Size=UDim2.new(1,-150,0,32)
iPZcHMsHwJee.ConfigNameBox.BackgroundColor3=eASxgpnm.BG
iPZcHMsHwJee.ConfigNameBox.BorderSizePixel=0
iPZcHMsHwJee.ConfigNameBox.PlaceholderText=LjBKcYCwVBhY("Dmsdq bnmehf mzld (d.f. lzhm_kdfhs)", 25)
iPZcHMsHwJee.ConfigNameBox.PlaceholderColor3=eASxgpnm.Muted
iPZcHMsHwJee.ConfigNameBox.TextColor3=eASxgpnm.Text
iPZcHMsHwJee.ConfigNameBox.TextSize=11
iPZcHMsHwJee.ConfigNameBox.Font=Enum.Font.GothamSemibold
iPZcHMsHwJee.ConfigNameBox.ClearTextOnFocus=false
iPZcHMsHwJee.ConfigNameBox.Parent=WOHNHGLJO
NmyyWsthBoH.Round(iPZcHMsHwJee.ConfigNameBox,7)
NmyyWsthBoH.Stroke(iPZcHMsHwJee.ConfigNameBox)
local HINQTGyJx=NmyyWsthBoH.Button(WOHNHGLJO,LjBKcYCwVBhY("RZUD SN OB", 25),UDim2.fromOffset(120,32),UDim2.new(1,-125,0,32))
HINQTGyJx.TextColor3=eASxgpnm.RedBright
iPZcHMsHwJee.ConfigStatus=NmyyWsthBoH.Label(iPZcHMsHwJee.ConfigPage,LjBKcYCwVBhY("Obxav", 23),UDim2.fromOffset(200,20),UDim2.new(1,-200,0,40),9,eASxgpnm.Muted)
iPZcHMsHwJee.ConfigStatus.TextXAlignment=Enum.TextXAlignment.Right
iPZcHMsHwJee.ConfigListScroll=NmyyWsthBoH.Scroll(iPZcHMsHwJee.ConfigPage)
iPZcHMsHwJee.ConfigListScroll.Position=UDim2.fromOffset(0,155)
iPZcHMsHwJee.ConfigListScroll.Size=UDim2.new(1,0,1,-155)
NmyyWsthBoH.Label(iPZcHMsHwJee.ConfigPage,LjBKcYCwVBhY("JMAYJ QYTCB AMLDGEQ", 24),UDim2.fromOffset(180,18),UDim2.fromOffset(14,142),9,eASxgpnm.Muted)
HINQTGyJx.MouseButton1Click:Connect(function()
local ZdWLCoDlfC,vmtyrOMc=NmyyWsthBoH.SaveConfigToFile(iPZcHMsHwJee.ConfigNameBox.Text)
iPZcHMsHwJee.ConfigStatus.Text=vmtyrOMc
iPZcHMsHwJee.ConfigStatus.TextColor3=ZdWLCoDlfC and eASxgpnm.Green or eASxgpnm.RedBright
if ZdWLCoDlfC then NmyyWsthBoH.RefreshConfigList() end
end)
NmyyWsthBoH.RefreshConfigList()
end
function NmyyWsthBoH.BuildUI()
NmyyWsthBoH.BuildBaseUI()
NmyyWsthBoH.MakeNav(LjBKcYCwVBhY("Ucjamkc", 24),LjBKcYCwVBhY("UCJAMKC", 24),52)
NmyyWsthBoH.MakeNav(LjBKcYCwVBhY("Lmtmnl", 19),LjBKcYCwVBhY("JKRKLJ", 17),96)
NmyyWsthBoH.MakeNav(LjBKcYCwVBhY("Rdptdmbd", 25),LjBKcYCwVBhY("SQHFFDQ", 25),140)
NmyyWsthBoH.MakeNav(LjBKcYCwVBhY("Qcrrgleq", 24),LjBKcYCwVBhY("RDSSHMFR", 25),184)
NmyyWsthBoH.MakeNav(LjBKcYCwVBhY("Rypecrq", 24),LjBKcYCwVBhY("RYPECRQ", 24),228)
NmyyWsthBoH.MakeNav(LjBKcYCwVBhY("Vhgybz", 19),LjBKcYCwVBhY("WIHZCA", 20),272)
NmyyWsthBoH.BuildWelcomePage()
NmyyWsthBoH.BuildStatusPage()
NmyyWsthBoH.BuildSequencePage()
NmyyWsthBoH.BuildSettingsPage()
NmyyWsthBoH.BuildTargetsPage()
NmyyWsthBoH.BuildConfigPage()
NmyyWsthBoH.ShowPage(LjBKcYCwVBhY("Qyfwigy", 20))
end
function NmyyWsthBoH.RefreshSequence()
if ouWxQaOY.Cleaned or not ouWxQaOY.Ready or not iPZcHMsHwJee.SequenceRows then return end
iPZcHMsHwJee.UniversalMode.State.Text=ouWxQaOY.Universal and LjBKcYCwVBhY("XZQFSB", 23) or LjBKcYCwVBhY("HYY", 19)
iPZcHMsHwJee.UniversalMode.State.TextColor3=ouWxQaOY.Universal and eASxgpnm.RedBright or eASxgpnm.Muted
iPZcHMsHwJee.UniversalMode.State.BackgroundColor3=ouWxQaOY.Universal and eASxgpnm.RedDark or eASxgpnm.Panel2
iPZcHMsHwJee.UniversalMapping.Text=LjBKcYCwVBhY("CJOWVM ", 21)..apljvcUJ(iZSmZIjrN.UniversalSlot)..LjBKcYCwVBhY(" / ", 1)..NmyyWsthBoH.ToolName(iZSmZIjrN.UniversalSlot)
iPZcHMsHwJee.UniversalBind.Text=LjBKcYCwVBhY("OIC ", 4)..apljvcUJ(iZSmZIjrN.UniversalSlot)
iPZcHMsHwJee.UniversalBind.TextColor3=ouWxQaOY.LearnedSlots[iZSmZIjrN.UniversalSlot] and eASxgpnm.Green or eASxgpnm.Text
for Index=1,3 do iPZcHMsHwJee.SequenceRows[Index].Frame.Visible=false end
iPZcHMsHwJee.AddWeapon.Visible=false
iPZcHMsHwJee.RemoveWeapon.Visible=false
iPZcHMsHwJee.SequenceInfo.Text=LjBKcYCwVBhY("RDPTDMSHZK / ", 25)..NmyyWsthBoH.SequenceText()..LjBKcYCwVBhY("    •    HAVIREFNY / ", 13)..apljvcUJ(iZSmZIjrN.UniversalSlot)..LjBKcYCwVBhY(" / ", 1)..NmyyWsthBoH.ToolName(iZSmZIjrN.UniversalSlot)
end
function NmyyWsthBoH.Refresh()
if ouWxQaOY.Cleaned or not ouWxQaOY.Ready or not iPZcHMsHwJee.Gui or not ouWxQaOY.MenuOpen then return end
iPZcHMsHwJee.CameraLockStatus.Text=LjBKcYCwVBhY("ZXJBOXILZH\n", 23)..(ouWxQaOY.CameraLock and LjBKcYCwVBhY("● SULANW", 18) or LjBKcYCwVBhY("○ GXX", 18))..LjBKcYCwVBhY("\n", 19)..iZSmZIjrN.CameraLockKey.Name
local RGedaafZ=LjBKcYCwVBhY("HCKD", 25)
if ouWxQaOY.Sequential then RGedaafZ=LjBKcYCwVBhY("QCOSCLRGYJ", 24)
elseif ouWxQaOY.Universal then RGedaafZ=ouWxQaOY.SingleShotgunFallback and (string.upper(ouWxQaOY.SingleShotgunFallback.Mode)..LjBKcYCwVBhY(" CXIIYXZH", 23)) or (iZSmZIjrN.RangeAuto and LjBKcYCwVBhY("NWJCA PNECCAN", 22) or LjBKcYCwVBhY("PIDQZMNVG", 21)) end
iPZcHMsHwJee.Mode.Text=LjBKcYCwVBhY("HJYZ / ", 21)..RGedaafZ
iPZcHMsHwJee.Mode.TextColor3=RGedaafZ==LjBKcYCwVBhY("GBJC", 24) and eASxgpnm.Muted or eASxgpnm.RedBright
iPZcHMsHwJee.TriggerStatus.Text=LjBKcYCwVBhY("QOFDDBO\n", 23)..(ouWxQaOY.Universal and LjBKcYCwVBhY("● LK", 23) or LjBKcYCwVBhY("○ HYY", 19))..(iZSmZIjrN.RangeAuto and LjBKcYCwVBhY("\nYSRM BZ + RYA", 24) or LjBKcYCwVBhY("\nPBIBZQBA QXODBQP", 23))
local OtxqCUpAgq=ouWxQaOY.Sequential and ouWxQaOY.SeqTarget or ouWxQaOY.UniTarget
iPZcHMsHwJee.TargetStatus.Text=LjBKcYCwVBhY("ZBSHUD SZQFDS\n", 25)..(OtxqCUpAgq and OtxqCUpAgq.Name or LjBKcYCwVBhY("mnmd", 25))..LjBKcYCwVBhY("\nNZGZXOZY ", 21)..apljvcUJ(NmyyWsthBoH.SelectedTargetCount())
local vNovTtTa=NmyyWsthBoH.EquippedTool()
iPZcHMsHwJee.ToolStatus.Text=LjBKcYCwVBhY("WOLLYHN NIIF\n", 20)..(vNovTtTa and vNovTtTa.Name or LjBKcYCwVBhY("mnmd", 25))..LjBKcYCwVBhY("\n", 1)..(NmyyWsthBoH.FirstPerson() and LjBKcYCwVBhY("ehqrs odqrnm", 25) or LjBKcYCwVBhY("pdenz lanokj", 22))
iPZcHMsHwJee.SequenceStatus.Text=(iZSmZIjrN.RangeAuto and LjBKcYCwVBhY("ZTSN CA + SZB 6–<05  •  LZMTZK DPTHO QDU 05–790", 25) or (iZSmZIjrN.DualFireKey.Name..LjBKcYCwVBhY(" / CA + SZB nmbd  •  SQHFFDQ / dpthoodc snnk", 25)))..LjBKcYCwVBhY("\n", 24)..iZSmZIjrN.MenuKey.Name..LjBKcYCwVBhY(" ajmqc kcls", 24)
if iPZcHMsHwJee.WelcomePingValue then
local EyGJneZJn=0
GgXzfybF(function() EyGJneZJn=math.floor(GINLLIyHNBJr.Player:GetNetworkPing()*1000+0.5) end)
if EyGJneZJn==0 then GgXzfybF(function() EyGJneZJn=math.floor(GINLLIyHNBJr.Stats.Network.ServerStatsItem[LjBKcYCwVBhY("Wtmt Ibgz", 19)]:GetValue()+0.5) end) end
iPZcHMsHwJee.WelcomePingValue.Text=apljvcUJ(EyGJneZJn)..LjBKcYCwVBhY(" gm", 20)
if EyGJneZJn<80 then iPZcHMsHwJee.WelcomePingSub.Text=LjBKcYCwVBhY("Noshlzk Bnmmdbshnm", 25) iPZcHMsHwJee.WelcomePingSub.TextColor3=eASxgpnm.Green
elseif EyGJneZJn<160 then iPZcHMsHwJee.WelcomePingSub.Text=LjBKcYCwVBhY("Kmbcpyrc Jyrclaw", 24) iPZcHMsHwJee.WelcomePingSub.TextColor3=eASxgpnm.Yellow
else iPZcHMsHwJee.WelcomePingSub.Text=LjBKcYCwVBhY("Efde Ixqbkzv", 23) iPZcHMsHwJee.WelcomePingSub.TextColor3=eASxgpnm.RedBright end
iPZcHMsHwJee.WelcomeFpsValue.Text=apljvcUJ(ouWxQaOY.CurrentFps)..LjBKcYCwVBhY(" DNQ", 24)
if ouWxQaOY.CurrentFps>=50 then iPZcHMsHwJee.WelcomeFpsSub.Text=LjBKcYCwVBhY("Pjllqe Mboclojxkzb", 23) iPZcHMsHwJee.WelcomeFpsSub.TextColor3=eASxgpnm.Green
elseif ouWxQaOY.CurrentFps>=30 then iPZcHMsHwJee.WelcomeFpsSub.Text=LjBKcYCwVBhY("Zbbdoszakd Eqzld Qzsd", 25) iPZcHMsHwJee.WelcomeFpsSub.TextColor3=eASxgpnm.Yellow
else iPZcHMsHwJee.WelcomeFpsSub.Text=LjBKcYCwVBhY("Dpykc Pyrc Jye", 24) iPZcHMsHwJee.WelcomeFpsSub.TextColor3=eASxgpnm.RedBright end
local xRZBCiypm=60
GgXzfybF(function() xRZBCiypm=math.floor(workspace:GetRealPhysicsFPS()+0.5) end)
if xRZBCiypm>=55 then iPZcHMsHwJee.WelcomeServerValue.Text=LjBKcYCwVBhY("KLSTDW", 18) iPZcHMsHwJee.WelcomeServerValue.TextColor3=eASxgpnm.Green iPZcHMsHwJee.WelcomeServerSub.Text=LjBKcYCwVBhY("Ogxrhbr: ", 25)..apljvcUJ(xRZBCiypm)..LjBKcYCwVBhY(" UEH", 15) iPZcHMsHwJee.WelcomeServerSub.TextColor3=eASxgpnm.Green
else iPZcHMsHwJee.WelcomeServerValue.Text=LjBKcYCwVBhY("ZACNWZAZ", 22) iPZcHMsHwJee.WelcomeServerValue.TextColor3=eASxgpnm.Yellow iPZcHMsHwJee.WelcomeServerSub.Text=LjBKcYCwVBhY("Ogxrhbr: ", 25)..apljvcUJ(xRZBCiypm)..LjBKcYCwVBhY(" CMP", 23) iPZcHMsHwJee.WelcomeServerSub.TextColor3=eASxgpnm.Yellow end
end
for _,aDADwHKYAQGr in vKWviNFx(iPZcHMsHwJee.SettingRefreshers or {}) do aDADwHKYAQGr() end
NmyyWsthBoH.RefreshSequence()
end
function NmyyWsthBoH.ConnectSequenceUI()
iPZcHMsHwJee.UniversalMode.State.MouseButton1Click:Connect(function() NmyyWsthBoH.SetUniversal(not ouWxQaOY.Universal) NmyyWsthBoH.Refresh() end)
end
function NmyyWsthBoH.ConnectWindow()
local icvxQlHGerk,TqRolOprdO=nil,nil
iPZcHMsHwJee.Top.InputBegan:Connect(function(Input)
if Input.UserInputType==Enum.UserInputType.MouseButton1 then
icvxQlHGerk=Input.Position
TqRolOprdO=iPZcHMsHwJee.Main.Position
if ouWxQaOY.DragMoveConnection then ouWxQaOY.DragMoveConnection:Disconnect() end
ouWxQaOY.DragMoveConnection=GINLLIyHNBJr.UIS.InputChanged:Connect(function(MoveInput)
if ouWxQaOY.Cleaned or not ouWxQaOY.Focused or not ouWxQaOY.MenuOpen then
if ouWxQaOY.DragMoveConnection then ouWxQaOY.DragMoveConnection:Disconnect() ouWxQaOY.DragMoveConnection=nil end
return
end
if MoveInput.UserInputType==Enum.UserInputType.MouseMovement then
local MywPfpMhKd=MoveInput.Position-icvxQlHGerk
iPZcHMsHwJee.Main.Position=UDim2.new(TqRolOprdO.X.Scale,TqRolOprdO.X.Offset+MywPfpMhKd.X,TqRolOprdO.Y.Scale,TqRolOprdO.Y.Offset+MywPfpMhKd.Y)
end
end)
end
end)
NmyyWsthBoH.Connect(GINLLIyHNBJr.UIS.InputEnded,function(Input)
if Input.UserInputType==Enum.UserInputType.MouseButton1 and ouWxQaOY.DragMoveConnection then ouWxQaOY.DragMoveConnection:Disconnect() ouWxQaOY.DragMoveConnection=nil end
end)
iPZcHMsHwJee.Minimized=false
iPZcHMsHwJee.Minimize.MouseButton1Click:Connect(function()
iPZcHMsHwJee.Minimized=not iPZcHMsHwJee.Minimized
if iPZcHMsHwJee.Minimized then
iPZcHMsHwJee.Sidebar.Visible=false
iPZcHMsHwJee.Content.Visible=false
GINLLIyHNBJr.TweenService:Create(iPZcHMsHwJee.Main,wFTGBzXDpAhr,{Size=UDim2.fromOffset(218,42)}):Play()
GINLLIyHNBJr.TweenService:Create(iPZcHMsHwJee.Top,wFTGBzXDpAhr,{Size=UDim2.new(1,0,0,39)}):Play()
iPZcHMsHwJee.Title.Position=UDim2.fromOffset(12,9)
iPZcHMsHwJee.Title.Size=UDim2.fromOffset(150,20)
iPZcHMsHwJee.Title.TextSize=11
iPZcHMsHwJee.Minimize.Size=UDim2.fromOffset(23,23)
iPZcHMsHwJee.Minimize.Position=UDim2.new(1,-55,0,7)
iPZcHMsHwJee.Close.Size=UDim2.fromOffset(23,23)
iPZcHMsHwJee.Close.Position=UDim2.new(1,-27,0,7)
else
iPZcHMsHwJee.Sidebar.Visible=true
iPZcHMsHwJee.Content.Visible=true
GINLLIyHNBJr.TweenService:Create(iPZcHMsHwJee.Main,wFTGBzXDpAhr,{Size=UDim2.fromOffset(720,600)}):Play()
GINLLIyHNBJr.TweenService:Create(iPZcHMsHwJee.Top,wFTGBzXDpAhr,{Size=UDim2.new(1,0,0,58)}):Play()
iPZcHMsHwJee.Title.Position=UDim2.fromOffset(20,15)
iPZcHMsHwJee.Title.Size=UDim2.fromOffset(270,28)
iPZcHMsHwJee.Title.TextSize=16
iPZcHMsHwJee.Minimize.Size=UDim2.fromOffset(30,28)
iPZcHMsHwJee.Minimize.Position=UDim2.new(1,-72,0,17)
iPZcHMsHwJee.Close.Size=UDim2.fromOffset(30,28)
iPZcHMsHwJee.Close.Position=UDim2.new(1,-37,0,17)
end
end)
iPZcHMsHwJee.Close.MouseButton1Click:Connect(NmyyWsthBoH.ToggleMenu)
end
function NmyyWsthBoH.BindBackpack(TcGyyNTwfNxU)
if ouWxQaOY.BackpackConnection then ouWxQaOY.BackpackConnection:Disconnect() end
ouWxQaOY.BackpackConnection=nil
ouWxQaOY.LocalBackpack=TcGyyNTwfNxU
ouWxQaOY.CachedDB=nil
ouWxQaOY.CachedTac=nil
if not TcGyyNTwfNxU or not TcGyyNTwfNxU:IsA(LjBKcYCwVBhY("Qprzeprz", 15)) then return end
ouWxQaOY.BackpackConnection=TcGyyNTwfNxU.ChildAdded:Connect(function(ukSqRgbr)
if ouWxQaOY.Cleaned then return end
if ukSqRgbr:IsA(LjBKcYCwVBhY("Snnk", 25)) then ouWxQaOY.CachedDB=nil ouWxQaOY.CachedTac=nil NmyyWsthBoH.SeedTool(ukSqRgbr) NmyyWsthBoH.RefreshSequence() end
end)
for _,ukSqRgbr in vKWviNFx(TcGyyNTwfNxU:GetChildren()) do NmyyWsthBoH.SeedTool(ukSqRgbr) end
end
function NmyyWsthBoH.SetupCharacter(qoZuKfrguXZa)
if ouWxQaOY.Cleaned or qoZuKfrguXZa~=GINLLIyHNBJr.Player.Character then return end
ouWxQaOY.CharacterGeneration=ouWxQaOY.CharacterGeneration+1
local lGjPOkKHTc=ouWxQaOY.CharacterGeneration
NmyyWsthBoH.DisconnectAll(ouWxQaOY.CharacterConnections)
NmyyWsthBoH.EndDualFire()
NmyyWsthBoH.ReleaseTool()
ouWxQaOY.LocalCharacter=qoZuKfrguXZa
ouWxQaOY.LocalHumanoid=qoZuKfrguXZa:FindFirstChildOfClass(LjBKcYCwVBhY("Gtlzmnhc", 25))
ouWxQaOY.LocalRoot=qoZuKfrguXZa:FindFirstChild(LjBKcYCwVBhY("GtlzmnhcQnnsOzqs", 25))
ouWxQaOY.LocalAnimator=ouWxQaOY.LocalHumanoid and ouWxQaOY.LocalHumanoid:FindFirstChildOfClass(LjBKcYCwVBhY("Uhcgunil", 20)) or nil
ouWxQaOY.CachedDB=nil
ouWxQaOY.CachedTac=nil
ouWxQaOY.WallRayParams.FilterDescendantsInstances={qoZuKfrguXZa}
ouWxQaOY.CameraLockTarget=nil
ouWxQaOY.SeqTarget,ouWxQaOY.UniTarget=nil,nil
ouWxQaOY.LastSeqTarget,ouWxQaOY.LastUniTarget=nil,nil
ouWxQaOY.LastUniShot=0
ouWxQaOY.StateCache[qoZuKfrguXZa]=nil
NmyyWsthBoH.Connect(qoZuKfrguXZa.ChildAdded,function(Child)
if Child:IsA(LjBKcYCwVBhY("Qlli", 23)) then ouWxQaOY.CachedDB=nil ouWxQaOY.CachedTac=nil NmyyWsthBoH.SeedTool(Child)
elseif Child.Name==LjBKcYCwVBhY("GtlzmnhcQnnsOzqs", 25) and Child:IsA(LjBKcYCwVBhY("WvnzKvmo", 21)) then ouWxQaOY.LocalRoot=Child
elseif Child:IsA(LjBKcYCwVBhY("Gtlzmnhc", 25)) then ouWxQaOY.LocalHumanoid=Child ouWxQaOY.LocalAnimator=Child:FindFirstChildOfClass(LjBKcYCwVBhY("Sfaeslgj", 18)) end
end,ouWxQaOY.CharacterConnections)
NmyyWsthBoH.Connect(qoZuKfrguXZa.ChildRemoved,function(Child)
if Child==ouWxQaOY.LocalRoot then ouWxQaOY.LocalRoot=nil
elseif Child==ouWxQaOY.LocalHumanoid then ouWxQaOY.LocalHumanoid=nil ouWxQaOY.LocalAnimator=nil end
end,ouWxQaOY.CharacterConnections)
NmyyWsthBoH.Connect(qoZuKfrguXZa.DescendantAdded,function() ouWxQaOY.StateCache[qoZuKfrguXZa]=nil end,ouWxQaOY.CharacterConnections)
NmyyWsthBoH.Connect(qoZuKfrguXZa.DescendantRemoving,function() ouWxQaOY.StateCache[qoZuKfrguXZa]=nil end,ouWxQaOY.CharacterConnections)
task.spawn(function()
local IdPoDdDtFMPn=ouWxQaOY.LocalHumanoid or qoZuKfrguXZa:WaitForChild(LjBKcYCwVBhY("Gtlzmnhc", 25),10)
if ouWxQaOY.Cleaned or lGjPOkKHTc~=ouWxQaOY.CharacterGeneration or qoZuKfrguXZa~=GINLLIyHNBJr.Player.Character or not IdPoDdDtFMPn or not IdPoDdDtFMPn:IsA(LjBKcYCwVBhY("Yldrefzu", 17)) then return end
ouWxQaOY.LocalHumanoid=IdPoDdDtFMPn
ouWxQaOY.LocalRoot=ouWxQaOY.LocalRoot or qoZuKfrguXZa:FindFirstChild(LjBKcYCwVBhY("FskylmgbPmmrNypr", 24))
ouWxQaOY.LocalAnimator=IdPoDdDtFMPn:FindFirstChildOfClass(LjBKcYCwVBhY("Tgbftmhk", 19))
NmyyWsthBoH.Connect(IdPoDdDtFMPn.Died,function() NmyyWsthBoH.PauseInput() ouWxQaOY.CameraLockTarget=nil NmyyWsthBoH.StopTriggerTarget() end,ouWxQaOY.CharacterConnections)
NmyyWsthBoH.SeedSlots()
NmyyWsthBoH.Log(LjBKcYCwVBhY("Afypyarcp pcybw", 24))
end)
end
function NmyyWsthBoH.HandleInput(Input,Processed)
if not ouWxQaOY.Ready or not ouWxQaOY.Focused then return end
if Input.UserInputType~=Enum.UserInputType.Keyboard then return end
local NEKKeDNIVpya=Input.KeyCode
if ouWxQaOY.KeyCapture then
local HazucrEMhXvU=ouWxQaOY.KeyCapture
ouWxQaOY.KeyCapture=nil
if NEKKeDNIVpya~=Enum.KeyCode.Escape and NEKKeDNIVpya~=Enum.KeyCode.Unknown then HazucrEMhXvU.Set(NEKKeDNIVpya) end
NmyyWsthBoH.Refresh()
return
end
if NEKKeDNIVpya==iZSmZIjrN.StreamerKey then NmyyWsthBoH.ToggleStreamerMode() return end
if NEKKeDNIVpya==iZSmZIjrN.MenuKey then NmyyWsthBoH.ToggleMenu() return end
if GINLLIyHNBJr.UIS:GetFocusedTextBox() or GINLLIyHNBJr.GuiService.MenuIsOpen then return end
local tAGGlUaRkbM=iZSmZIjrN.NumberKeys[NEKKeDNIVpya]
if tAGGlUaRkbM then NmyyWsthBoH.LearnSlot(tAGGlUaRkbM) end
if NEKKeDNIVpya==iZSmZIjrN.CameraLockKey then
if ouWxQaOY.CameraLock and not iZSmZIjrN.HoldCameraLock then NmyyWsthBoH.DisableCameraLock() GINLLIyHNBJr.OffSound:Play()
elseif NmyyWsthBoH.EnableCameraLock() then if iZSmZIjrN.HoldCameraLock then ouWxQaOY.HeldCameraKey=NEKKeDNIVpya end GINLLIyHNBJr.OnSound:Play() end
elseif NEKKeDNIVpya==iZSmZIjrN.DualFireKey then
if Processed or ouWxQaOY.HeldDualKey then return end
ouWxQaOY.HeldDualKey=NEKKeDNIVpya
NmyyWsthBoH.BeginDualFire()
end
NmyyWsthBoH.Refresh()
end
function NmyyWsthBoH.StartRuntime()
NmyyWsthBoH.Connect(workspace:GetPropertyChangedSignal(LjBKcYCwVBhY("AsppclrAykcpy", 24)),function() GINLLIyHNBJr.Camera=workspace.CurrentCamera end)
NmyyWsthBoH.Connect(GINLLIyHNBJr.UIS.InputBegan,NmyyWsthBoH.HandleInput)
NmyyWsthBoH.Connect(GINLLIyHNBJr.UIS.InputEnded,function(Input)
if Input.KeyCode==ouWxQaOY.HeldDualKey then ouWxQaOY.HeldDualKey=nil end
if Input.KeyCode==ouWxQaOY.HeldCameraKey then ouWxQaOY.HeldCameraKey=nil NmyyWsthBoH.DisableCameraLock() end
NmyyWsthBoH.Refresh()
end)
NmyyWsthBoH.Connect(GINLLIyHNBJr.RunService.Heartbeat,function()
NmyyWsthBoH.ReleaseTool()
NmyyWsthBoH.FlushToolReleases()
NmyyWsthBoH.UpdateDualFire()
if ouWxQaOY.MenuOpen and ouWxQaOY.Now-ouWxQaOY.LastUI>=iZSmZIjrN.UIRefresh then ouWxQaOY.LastUI=ouWxQaOY.Now NmyyWsthBoH.Refresh() end
end)
NmyyWsthBoH.Connect(GINLLIyHNBJr.UIS.WindowFocused,function() ouWxQaOY.Focused=true end)
NmyyWsthBoH.Connect(GINLLIyHNBJr.UIS.WindowFocusReleased,function() ouWxQaOY.Focused=false NmyyWsthBoH.PauseInput() end)
NmyyWsthBoH.Connect(GINLLIyHNBJr.UIS.TextBoxFocused,NmyyWsthBoH.PauseInput)
NmyyWsthBoH.Connect(GINLLIyHNBJr.GuiService.MenuOpened,NmyyWsthBoH.PauseInput)
NmyyWsthBoH.Connect(GINLLIyHNBJr.Player.CharacterAdded,NmyyWsthBoH.SetupCharacter)
NmyyWsthBoH.Connect(GINLLIyHNBJr.Player.CharacterRemoving,function()
ouWxQaOY.CharacterGeneration=ouWxQaOY.CharacterGeneration+1
NmyyWsthBoH.DisconnectAll(ouWxQaOY.CharacterConnections)
ouWxQaOY.LocalCharacter=nil
ouWxQaOY.LocalHumanoid=nil
ouWxQaOY.LocalRoot=nil
ouWxQaOY.LocalAnimator=nil
NmyyWsthBoH.PauseInput()
ouWxQaOY.CameraLockTarget=nil
NmyyWsthBoH.StopTriggerTarget()
end)
NmyyWsthBoH.Connect(GINLLIyHNBJr.Player.ChildAdded,function(ukSqRgbr) if ukSqRgbr:IsA(LjBKcYCwVBhY("Azbjozbj", 25)) then NmyyWsthBoH.BindBackpack(ukSqRgbr) end end)
NmyyWsthBoH.BindBackpack(GINLLIyHNBJr.Player:FindFirstChildOfClass(LjBKcYCwVBhY("Zyainyai", 24)))
if GINLLIyHNBJr.Player.Character then NmyyWsthBoH.SetupCharacter(GINLLIyHNBJr.Player.Character) end
GINLLIyHNBJr.RunService:BindToRenderStep(ouWxQaOY.RenderBinding,Enum.RenderPriority.Camera.Value+1,function()
if ouWxQaOY.Cleaned or not ouWxQaOY.Ready then return end
local NECZAgKqvLzw=os.clock()
ouWxQaOY.Now=NECZAgKqvLzw
ouWxQaOY.MousePos=GINLLIyHNBJr.UIS:GetMouseLocation()
GINLLIyHNBJr.Camera=GINLLIyHNBJr.Camera or workspace.CurrentCamera
ouWxQaOY.FpsCount=ouWxQaOY.FpsCount+1
if NECZAgKqvLzw-ouWxQaOY.LastFpsTime>=0.5 then ouWxQaOY.CurrentFps=math.floor(ouWxQaOY.FpsCount/(NECZAgKqvLzw-ouWxQaOY.LastFpsTime)+0.5) ouWxQaOY.FpsCount=0 ouWxQaOY.LastFpsTime=NECZAgKqvLzw end
if ouWxQaOY.MenuOpen and not iPZcHMsHwJee.Minimized then
local iKbHsfnhgB=Vector2.new((NECZAgKqvLzw*0.7)%2-1,0)
for _,CipbqLryKXgs in vKWviNFx(ouWxQaOY.AnimatedGradients) do if CipbqLryKXgs and CipbqLryKXgs.Parent then CipbqLryKXgs.Offset=iKbHsfnhgB end end
end
local qoZuKfrguXZa=ouWxQaOY.LocalCharacter
local IdPoDdDtFMPn=ouWxQaOY.LocalHumanoid
local WmWbJheOCdHO=ouWxQaOY.LocalRoot
if iZSmZIjrN.WallJumpEnabled and IdPoDdDtFMPn and WmWbJheOCdHO and IdPoDdDtFMPn.Health>0 then
local DmgDsoRTdKo=IdPoDdDtFMPn:GetState()
local QiLNRmGmh=(DmgDsoRTdKo==Enum.HumanoidStateType.Freefall or DmgDsoRTdKo==Enum.HumanoidStateType.Jumping)
if not QiLNRmGmh then ouWxQaOY.HasWallJumped=false
elseif not ouWxQaOY.HasWallJumped and GINLLIyHNBJr.UIS:IsKeyDown(Enum.KeyCode.Space) then
local tiDMMWjTDAOv=WmWbJheOCdHO.CFrame
local fPWOJjzq=tiDMMWjTDAOv.Position
for i=1,4 do
local CdwOMqEh=tiDMMWjTDAOv:VectorToWorldSpace(ZryBqDfl[i])
local BCmkMIMuidm=workspace:Raycast(fPWOJjzq,CdwOMqEh*3.5,ouWxQaOY.WallRayParams)
if BCmkMIMuidm and BCmkMIMuidm.Instance and BCmkMIMuidm.Instance.CanCollide then
local DdtbNhMv=WmWbJheOCdHO.AssemblyLinearVelocity
WmWbJheOCdHO.AssemblyLinearVelocity=Vector3.new(DdtbNhMv.X,50,DdtbNhMv.Z)
ouWxQaOY.HasWallJumped=true
break
end
end
end
end
NmyyWsthBoH.UpdateCameraLock()
if not NmyyWsthBoH.CanInteract() or not NmyyWsthBoH.Alive(qoZuKfrguXZa) then NmyyWsthBoH.PauseInput() NmyyWsthBoH.StopTriggerTarget() return end
if not ouWxQaOY.Universal or not NmyyWsthBoH.KO(qoZuKfrguXZa) or not NmyyWsthBoH.Crouch(qoZuKfrguXZa) then NmyyWsthBoH.StopTriggerTarget() return end
NmyyWsthBoH.UniversalMain()
end)
end
local oZYCskSKpAe,XMCrAUKpOMG=HGNEdJCLyetb(function()
NmyyWsthBoH.BuildUI()
NmyyWsthBoH.ConnectSequenceUI()
NmyyWsthBoH.ConnectWindow()
ouWxQaOY.Ready=true
NmyyWsthBoH.StartNameESP()
NmyyWsthBoH.StartRuntime()
if typeof(script)==LjBKcYCwVBhY("Hmrszmbd", 25) then NmyyWsthBoH.Connect(script.Destroying,NmyyWsthBoH.Cleanup) end
NmyyWsthBoH.RefreshTargetsPage()
NmyyWsthBoH.Refresh()
NmyyWsthBoH.Log(LjBKcYCwVBhY("dmp rfc afmqcl jmybcb / mnrgkgxcb pctgqgml 95+", 24))
end,debug.traceback)
if not oZYCskSKpAe then NmyyWsthBoH.Cleanup() warn(LjBKcYCwVBhY("[dmp rfc afmqcl] Qryprsn cppmp:\n", 24)..apljvcUJ(XMCrAUKpOMG)) end
