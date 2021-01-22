_G.bells = true
for i,v in pairs(game:GetService("Workspace").ChristmasMap.ChristmasTree:GetDescendants()) do
    if v.ClassName == "MeshPart" or v.ClassName == "Part" then
        v.CanCollide = false
        for a,b in pairs(game:GetService("Workspace").PresentRainSign:GetChildren()) do
            if b.ClassName == "Part" or b.ClassName == "MeshPart" then
                b.CanCollide = false
            end
            end
    end
end
while _G.bells == true do
    wait()
for i,v in pairs(game:GetService("Workspace").ChristmasMap.Houses:GetChildren()) do
    if v.Name == "House" and  v.Activation.Root.Decal.Transparency <= 0.1 then
if game.Players.LocalPlayer:DistanceFromCharacter(v.Activation.Tag.Position) < 150 then
wait()
        local hum = game.Players.LocalPlayer.Character.Humanoid
        hum:MoveTo(v.Activation.Tag.Position)
        hum.MoveToFinished:wait()
        wait(3)
        hum.WalkSpeed = 100
        end
end
end
end
