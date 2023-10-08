-- Convar to toggle the amnesiac popup when the amnesiac takes over a role

CreateConVar("ttt2_amnesiac_showpopup", 1, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar("ttt2_amnesiac_confirm_player", 0, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar("ttt2_amnesiac_limit_to_unconfirmed", 1, {FCVAR_NOTIFY, FCVAR_ARCHIVE})

hook.Add("TTT2SyncGlobals", "ttt2_amni_sync_convars", function()
	SetGlobalBool("ttt2_amnesiac_limit_to_unconfirmed", GetConVar("ttt2_amnesiac_limit_to_unconfirmed"):GetBool())
	SetGlobalBool("ttt2_amnesiac_confirm_player", GetConVar("ttt2_amnesiac_confirm_player"):GetBool())
end)

-- sync convars on change
cvars.AddChangeCallback("ttt2_amnesiac_limit_to_unconfirmed", function(cv, old, new)
	SetGlobalBool("ttt2_amnesiac_limit_to_unconfirmed", tobool(tonumber(new)))
end)

cvars.AddChangeCallback("ttt2_amnesiac_confirm_player", function(cv, old, new)
	SetGlobalBool("ttt2_amnesiac_confirm_player", tobool(tonumber(new)))
end)
