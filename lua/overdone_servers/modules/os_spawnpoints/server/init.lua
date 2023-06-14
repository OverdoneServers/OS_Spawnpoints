local module = OverdoneServers:GetModule("os_spawnpoints")
local SP = module.Data

module:HookAdd("PlayerSelectSpawn", "OverdoneServers:Spawnpoint", function(ply)
    local spawns = ents.FindByClass("os_spawnpoint")

    local spawn = nil
    local furthestSpawnDist = 0

    for _,point in ipairs(spawns) do
        local plyerDist = 0

        for _,p in ipairs(player.GetHumans()) do
            if p == ply then continue end
            local dist = point:GetPos():DistToSqr(p:GetPos())
            if dist > plyerDist then
                plyerDist = dist
            end
        end

        if plyerDist > furthestSpawnDist then
            furthestSpawnDist = plyerDist
            spawn = point
        end
    end

    return spawn or spawns[math.random(#spawns)]
end)