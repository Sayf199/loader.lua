local mt = getrawmetatable(game)
local namecall = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if method == "FireServer" then
        print("[💬 FireServer]:", self:GetFullName(), ...)
    end
    return namecall(self, ...)
end)

setreadonly(mt, true)
