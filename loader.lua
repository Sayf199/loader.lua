local old
old = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if method == "FireServer" then
        print("[ESPION] Remote détectée :", self:GetFullName(), "avec arguments :", ...)
    end
    return old(self, ...)
end)
