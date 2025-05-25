local remoteList = {}

for _, v in ipairs(game:GetDescendants()) do
    if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
        table.insert(remoteList, v:GetFullName())
    end
end

print("[📡] Liste des RemoteEvents et RemoteFunctions détectés :")
for _, remote in ipairs(remoteList) do
    print("→ " .. remote)
end
