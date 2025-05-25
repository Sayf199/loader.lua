-- Espion de RemoteEvents
local replicated = game:GetService("ReplicatedStorage")

for _, v in pairs(replicated:GetDescendants()) do
    if v:IsA("RemoteEvent") then
        local name = v:GetFullName()
        v.OnClientEvent:Connect(function(...)
            print("[ClientEvent reçu] :", name, ...)
        end)
        hookfunction(v.FireServer, function(self, ...)
            print("[FireServer] :", name, ...)
            return hookfunction(self, ...)
        end)
    end
end
