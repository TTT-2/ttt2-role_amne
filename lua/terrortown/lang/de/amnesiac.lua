local L = LANG.GetLanguageTableReference("de")

-- GENERAL ROLE LANGUAGE STRINGS
L[AMNESIAC.name] = "Amnesist"
L["info_popup_" .. AMNESIAC.name] = [[Du bist ein Amnesist, finde deine Bestimmung durch das Aufdecken von Rollen!]]
L["body_found_" .. AMNESIAC.abbr] = "Er war ein Amnesist."
L["search_role_" .. AMNESIAC.abbr] = "Diese Person war ein Amnesist!"
L["target_" .. AMNESIAC.name] = "Amnesist"
L["ttt2_desc_" .. AMNESIAC.name] = [[Der Amnesist versucht seine Bestimmung zu finden, um dies zu tun musst du die Rolle eines verstorbenen Terroristen Aufdecken.
Du nimmst die Rolle des ersten von dir aufgedeckten Terroristen an.]]

-- OTHER ROLE LANGUAGE STRINGS
L["ttt2_role_amnesiac_popuptitle"] = "Ein Amnesist hat sich daran errinert, ein {role} gewesen zu sein"
L["ttt2_role_amnesiac_targetid"] = "Untersuchen um die Rolle zu übernehmen"
L["ttt2_role_amnesiac_targetid_subtitle"] = "Drücke [{usekey}] oder [{walkkey} + {usekey}] um Rolle zu erhalten."

L["label_amne_showpopup"] = "Zeige ein Popup wenn ein Amnesist sich an seine Rolle erinnert hat"
L["label_amne_confirm_player"] = "Decke die Rolle einer Leiche auf um die Rolle zu erhalten"
L["label_amne_limit_to_unconfirmed"] = "Es zählen nur nicht aufgedeckte Leichen"
