L = LANG.GetLanguageTableReference("ru")

-- GENERAL ROLE LANGUAGE STRINGS
L[AMNESIAC.name] = "Амнезиак"
L["info_popup_" .. AMNESIAC.name] = [[Вы страдаете амнезией, попробуйте вспомнить, кем вы были, подтверждая других!]]
L["body_found_" .. AMNESIAC.abbr] = "Он был амнезиаком."
L["search_role_" .. AMNESIAC.abbr] = "У этого человека была амнезия!"
L["target_" .. AMNESIAC.name] = "Амнезиак"
L["ttt2_desc_" .. AMNESIAC.name] = [[Амнезиак пытается найти цель для себя, чтобы справиться с этим, вам нужно подтвердить тела других террористов.
Вы получите роль первого игрока, которого вы подтвердите в этом раунде.]]

-- OTHER ROLE LANGUAGE STRINGS
L["ttt2_role_amnesiac_popuptitle"] = "Амнезиак вспомнил, что он был {role}"
L["ttt2_role_amnesiac_targetid"] = "Найдите кого-то, чтобы получить его роль"
L["ttt2_role_amnesiac_targetid_subtitle"] = "Нажмите [{usekey}] или [{walkkey} + {usekey}], чтобы получить роль."
