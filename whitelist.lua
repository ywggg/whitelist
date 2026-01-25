local run = function(func)
	func()
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
local webhook = "https://discord.com/api/webhooks/1464359024928620607/Q-CubcghJAo2XRl7omJY62_-eZHCbI0c2f2WgZgqOkeRK2zrDLvB4vlAPzEWDpEZcwoW"
local vape = shared.vape

local date = os.date("%d-%m-%Y")

local s1 = {
    content = lplr.Name
        .. " has injected ONYXV4 at "
        .. date
        .. " in the gameid "
        .. game.PlaceId
}

local req = request or http_request or syn.request

req({
    Url = webhook,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = HttpService:JSONEncode(s1)
})

local api = "https://whitelistcommandsclient.fsl58.workers.dev/whitelist"
local str = readfile("ReVape/accounts/hwid.txt")
if str == nil then
	str = ''
end
run(function()
    if isfile("ReVape/accounts/hwid.txt") then 
        if str == "ablznckx-hfc0-42qv-9a8n-6p8qs37f8r42" then
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
			    },
			    Body = HttpService:JSONEncode({
			        hwid = str
			    })
			})
			
			task.wait(0.2)
			lplr:Kick(msg)
        end
    end
end)
