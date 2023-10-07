local L = LANG.GetLanguageTableReference("en")

-- GENERAL ROLE LANGUAGE STRINGS
L[AMNESIAC.name] = "Amnesiac"
L["info_popup_" .. AMNESIAC.name] = [[You are an Amnesiac – try to remember what you were by confirming others!]]
L["body_found_" .. AMNESIAC.abbr] = "They were an Amnesiac."
L["search_role_" .. AMNESIAC.abbr] = "This person was an Amnesiac!"
L["target_" .. AMNESIAC.name] = "Amnesiac"
L["ttt2_desc_" .. AMNESIAC.name] = [[The Amnesiac is on a quest to find purpose for themselves. To do this, they have to confirm other terrorists' bodies.
You will receive the role of the first player you confirm during this round.]]

-- OTHER ROLE LANGUAGE STRINGS
L["ttt2_role_amnesiac_popuptitle"] = "An Amnesiac has remembered that they were {role}"
L["ttt2_role_amnesiac_targetid"] = "Search to receive their role"
L["ttt2_role_amnesiac_targetid_subtitle"] = "Press [{usekey}] or [{walkkey} + {usekey}] to receive role."

L["label_amne_showpopup"] = "Show popup if an Amnesiac has remembered his role"
L["label_amne_confirm_player"] = "Confirm a body to get the role"
L["label_amne_limit_to_unconfirmed"] = "Only unconfirmed bodies count"
