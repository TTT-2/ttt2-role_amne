-- Convar to toggle the amnesiac popup when the amnesiac takes over a role

CreateConVar("ttt2_amnesiac_showpopup", 1, {FCVAR_NOTIFY, FCVAR_ARCHIVE})

hook.Add("TTTUlxDynamicRCVars", "ttt2_ulx_dynamic_amnesiac_convars", function(tbl)
	tbl[ROLE_AMNESIAC] = tbl[ROLE_AMNESIAC] or {}

	table.insert(tbl[ROLE_AMNESIAC], {cvar = "ttt2_amnesiac_showpopup", checkbox = true, desc = "ttt2_amnesiac_showpopup (def. 1)"})
end)
