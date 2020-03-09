L = LANG.GetLanguageTableReference("english")

-- GENERAL ROLE LANGUAGE STRINGS
L[AMNESIAC.name] = "Amnesiac"
L["info_popup_" .. AMNESIAC.name] = [[You are an Amnesiac, try and remember what you were by confirming others!]]
L["body_found_" .. AMNESIAC.abbr] = "They were an Amnesiac."
L["search_role_" .. AMNESIAC.abbr] = "This person was an Amnesiac!"
L["target_" .. AMNESIAC.name] = "Amnesiac"
L["ttt2_desc_" .. AMNESIAC.name] = [[The Amnesiac is on a quest to find purpose for himself, to manage this you have to confirm other terrorists bodies.
You will receive the role of the first player you confirm this round.]]

-- OTHER ROLE LANGUAGE STRINGS
L["ttt2_role_amnesiac_popuptitle"] = "An Amnesiac has remembered that they were {role}"
L["ttt2_role_amnesiac_targetid"] = "Confirm to receive their role"
