AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:SpawnFunction(ply, tr)
    local SpawnPos = tr.HitPos + tr.HitNormal * 25
	local ent = ents.Create(self.ClassName)
	ent:SetAngles(Angle(-90,0,0))
	ent:SetPos(SpawnPos - Vector(0,0,23))
	ent:Spawn()
	ent:Activate()
	return ent
end

function ENT:Initialize()
    self:SetModel("models/combine_helicopter/bomb_debris_1.mdl")
	self:SetMaterial("models/XQM/LightLinesRed_tool")
	self:SetSolid(SOLID_NONE)
end

function ENT:OnRemove()

end