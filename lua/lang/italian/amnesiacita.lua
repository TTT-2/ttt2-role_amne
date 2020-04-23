L = LANG.GetLanguageTableReference("italiano")

-- GENERAL ROLE LANGUAGE STRINGS
L[AMNESIAC.name] = "Amnesiac"
L["info_popup_" .. AMNESIAC.name] = [[Sei un Amnesiac, prova a ricordarti che ruoli eri prima di identificare gli altri!]]
L["body_found_" .. AMNESIAC.abbr] = "Era un Amnesiac."
L["search_role_" .. AMNESIAC.abbr] = "Questa persona era un Amnesiac!"
L["target_" .. AMNESIAC.name] = "Amnesiac"
L["ttt2_desc_" .. AMNESIAC.name] = [[L'Amnesiac sta cercando di scoprire chi era, per farlo deve identificare i cadaveri degli altri.
Riceverai il ruolo della prima persona che identificherai questo round.]]

-- OTHER ROLE LANGUAGE STRINGS
L["ttt2_role_amnesiac_popuptitle"] = "Un Amnesiac si è ricordato che era un {role}"
L["ttt2_role_amnesiac_targetid"] = "Identifica per ricevere il suo ruolo"
L["ttt2_role_amnesiac_targetid_subtitle"] = "Premi [{usekey}] o [{walkkey} + {usekey}] per ricevere il tuo ruolo."
