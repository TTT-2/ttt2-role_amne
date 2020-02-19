-- Icon Materials

if SERVER then
	AddCSLuaFile()
	
	resource.AddFile('materials/vgui/ttt/dynamic/roles/icon_amne.vmt')
	resource.AddFile('materials/vgui/ttt/icon_amnic.vmt')
end

-- General settings

function ROLE:PreInitialize()
	self.color = Color(132, 112, 255, 255) -- rolecolour
	
	self.abbr = 'amne' -- Abbreviation
	self.unknownTeam = true -- No teamchat
	self.defaultTeam = TEAM_NONE -- no team, own team
	self.preventFindCredits = true
	self.preventKillCredits = true
	self.preventTraitorAloneCredits = true
	self.preventWin = true -- cannot win unless he switches roles
	self.scoreKillsMultiplier       = -12
    self.scoreTeamKillsMultiplier   = -16
	
	-- ULX convars

	self.conVarData = {
		pct = 0.17, -- necessary: percentage of getting this role selected (per player)
		maximum = 1, -- maximum amount of roles in a round
		minPlayers = 7, -- minimum amount of players until this role is able to get selected
		credits = 0, -- the starting credits of a specific role
		shopFallback = SHOP_DISABLED,
		togglable = true, -- option to toggle a role for a client if possible (F1 menu)
		random = 50
	}
end

-- Role specific code

if SERVER then

	util.AddNetworkString("ttt2_role_amne_conversionpopup")



	hook.Add("TTTBodyFound", "TTT2AmneFoundCorpse", function(ply, deadply, rag)
		if not IsValid(ply) or not IsValid(deadply) then return end                 -- In case of disconect shinanigans     
  
		if ply:GetSubRole() ~= ROLE_AMNESIAC then return end                        -- If role is not Amnesiac nothing happens
  
		ply:SetRole(deadply:GetSubRole(), deadply:GetTeam())                        -- Get role and team from dead players body
		SendFullStateUpdate()                                                       -- Send update to teammembers
	  
		-- serverside popup event integration

		if not GetConVar("ttt2_amnesiac_showpopup"):GetBool() then return end

		net.Start("ttt2_role_amne_conversionpopup")
		net.WriteUInt(ply:GetSubRole(), ROLE_BITS)
		net.Broadcast()

	end)
end

-- Adding custom Radar

if SERVER then
	ROLE.CustomRadar = function(ply)
		local targets = {}
		local scan_ents = ents.FindByClass("prop_ragdoll")
		local mathRound = math.Round

		for _, t in ipairs(scan_ents) do
			if not t.player_ragdoll then continue end

			local pos = t:LocalToWorld(t:OBBCenter())

			pos.x = mathRound(pos.x)
			pos.y = mathRound(pos.y)
			pos.z = mathRound(pos.z)

			targets[#targets + 1] = {
				subrole = -1,
				pos = pos
			}
		end

		return targets
	end

	-- Give amnesiac dead body radar

	function ROLE:GiveRoleLoadout(ply, isRoleChange)
		ply:GiveEquipmentItem("item_ttt_radar")
	end

	-- Remove dead body radar upon rolechange

	function ROLE:RemoveRoleLoadout(ply, isRoleChange)
		ply:RemoveEquipmentItem("item_ttt_radar")
	end
end

-- Adding a popup event clientside

if CLIENT then

	net.Receive("ttt2_role_amne_conversionpopup", function()
		local roleid = net.ReadUInt(ROLE_BITS)
		local roledata = roles.GetByIndex(roleid)
		
		EPOP:AddMessage({text = LANG.GetParamTranslation("ttt2_role_amnesiac_popuptitle", {role = LANG.TryTranslation(roledata.name)}), color = AMNESIAC.color}, "", 6)
	end)

end

