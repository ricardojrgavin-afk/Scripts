local _StartDeflecting; _StartDeflecting = hookfunction(Cheat.Modules.Katana._StartDeflecting, function(Self, ...)
    local Player = Self.ClientFighter.Player
    if Player and Player.Name then
        Cheat.Cache.Katana[Player.Name] = true
        task.delay(Self.Info.DeflectDuration + 0.1, function()
            Cheat.Cache.Katana[Player.Name] = nil
        end)
    end
    return _StartDeflecting(Self, ...)
end)



-- katana check
-- example:

--in your get target function
        if Rivals.CombatTab.Katana_Check and Cheat.Cache.Katana[Player.Name] then
            continue
        end;
 
------ ends here 



local _StartShooting1; _StartShooting1 = hookfunction(Cheat.Modules.Melee.StartShooting, function(...)
    local Args = {...}
    if Rivals.CombatTab.Fast_Melee then
        Args[1].Info.AttackCooldown = 0
    end
    local Values = {_StartShooting1(unpack(Args))}
    if Rivals.CombatTab.No_Melee_Animation then
        Args[1].ViewModel:StopAnimation(Args[1]._last_attack_animation_name, 0)
    end
    return unpack(Values)
end)

--- no melee animation



---- ends here 


local _GetName; _GetName = hookfunction(Cheat.Modules.Compliance_Controller.GetName, function(...)
    local Args = {...}
    local Values = {_GetName(...)}
    if Args[2].Name == Cheat.Services.MyPlayer.Name then
        local Suffix = ""
        if Rivals.MiscTab.Change_Verified then
            Suffix = " " .. utf8.char(57344)
        elseif Rivals.MiscTab.Change_Premium then
            Suffix = " " .. utf8.char(57347)
        end
        local Name = Rivals.MiscTab.Change_Name and Rivals.MiscTab.Name or Values[1]
        Values[1] = Name .. Suffix
    end
    return unpack(Values)
end)
local _Fetch; _Fetch = hookfunction(Cheat.Modules.ViewProfile.Fetch, function(...)
    local Args = {...}
    local Values = {_Fetch(...)}
    if Args[2].Name == Cheat.Services.MyPlayer.Name then
        local Info = Args[1]
        local Suffix = Rivals.MiscTab.Change_Verified and " " .. utf8.char(57344) or Rivals.MiscTab.Change_Premium and " " .. utf8.char(57347) or ""
        if Rivals.MiscTab.Change_Name then
            Info.UsernameText.Text = "@" .. Rivals.MiscTab.Name
            Info.DisplayNameText.Text = Rivals.MiscTab.Name .. Suffix
        end
    end
    return unpack(Values)
end)

--- thingies for nametag (verified, premium, name spoof)
--- ends here 
--- 
local _VerifyPOV; _VerifyPOV = hookfunction(Cheat.Modules.Camera_Controller.CameraState.VerifyPOV, function(...)
    if Rivals.MiscTab.Third_Person then
        return
    end
    return _VerifyPOV(...)
end)

-- loop it please
    if Rivals.MiscTab.Third_Person then
        Cheat.Modules.Camera_Controller.CameraState:_SetPOVState(
        Cheat.Modules.Camera_Controller.CameraState.States.ThirdPerson
    )
    end

--- third person
 ---end here

local _PlayAnimation; _PlayAnimation = hookfunction(Cheat.Modules.ViewModelAnimator.PlayAnimation, function(...)
    local Traceback = debug.traceback()
    if Rivals.CombatTab.No_Shoot_Animation and Traceback:find("StartShooting") and Traceback:find("Gun") and not Traceback:find("ReplicatedController") then
        return
    end
    return _PlayAnimation(...)
end)
--- ends here



local _StopAnimation; _StopAnimation = hookfunction(Cheat.Modules.ViewModelAnimator.StopAnimation, function(...)
    local Traceback = debug.traceback()
    if Rivals.CombatTab.No_Shoot_Animation and Traceback:find("StartShooting") and Traceback:find("Gun") and not Traceback:find("ReplicatedController") then
        return
    end
    return _StopAnimation(...)
end)

--- no shoot animation ends here



---- no spread 
 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ItemLibrary = require(ReplicatedStorage.Modules.ItemLibrary)

local function setPerfect(tbl)
    for _, v in pairs(tbl) do
        if typeof(v) == "table" then
            if v.ShootSpread   then v.ShootSpread   = 0 end
            if v.ShootAccuracy then v.ShootAccuracy = 0 end
            if v.ShootRecoil   then v.ShootRecoil   = 0 end
            setPerfect(v)
        end
    end
end

setPerfect(ItemLibrary) 

--- ends here 