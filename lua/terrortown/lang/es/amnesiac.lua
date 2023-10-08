local L = LANG.GetLanguageTableReference("es")

-- GENERAL ROLE LANGUAGE STRINGS
L[AMNESIAC.name] = "Amnésico"
L["info_popup_" .. AMNESIAC.name] = [[Eres un amnésico ¡Intenta recordar lo que eras verificando otros cadáveres!]]
L["body_found_" .. AMNESIAC.abbr] = "¡Era un Amnésico!"
L["search_role_" .. AMNESIAC.abbr] = "Esta persona era un Amnésico."
L["target_" .. AMNESIAC.name] = "Amnésico"
L["ttt2_desc_" .. AMNESIAC.name] = [[El Amnésico está en búsqueda de su verdadera identidad, para eso deberá encontrar pistas.
Recibirás el rol de la primer persona que inspecciones esta ronda.]]

-- OTHER ROLE LANGUAGE STRINGS
L["ttt2_role_amnesiac_popuptitle"] = "Un amnésico recordó que su rol era {role}"
L["ttt2_role_amnesiac_targetid"] = "Inspecciona para descubrir tu rol"
L["ttt2_role_amnesiac_targetid_subtitle"] = "Presiona [{usekey}] o [{walkkey} + {usekey}] para obtener este rol."

--L["label_amne_showpopup"] = "Show global popup if an Amnesiac receives their role"
--L["label_amne_confirm_player"] = "Has to confirm a body to get a role"
--L["label_amne_limit_to_unconfirmed"] = "Works only with unconfirmed bodies"
