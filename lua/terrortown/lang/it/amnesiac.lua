local L = LANG.GetLanguageTableReference("it")

-- GENERAL ROLE LANGUAGE STRINGS
L[AMNESIAC.name] = "Smemorato"
L["info_popup_" .. AMNESIAC.name] = [[Sei uno Smemorato, prova a ricordarti che ruoli eri prima di identificare gli altri!]]
L["body_found_" .. AMNESIAC.abbr] = "Era uno Smemorato."
L["search_role_" .. AMNESIAC.abbr] = "Questa persona era uno Smemorato!"
L["target_" .. AMNESIAC.name] = "Smemorato"
L["ttt2_desc_" .. AMNESIAC.name] = [[Lo Smemorato sta cercando di scoprire chi era, per farlo deve identificare i cadaveri degli altri.
Riceverai il ruolo della prima persona che identificherai questo round.]]

-- OTHER ROLE LANGUAGE STRINGS
L["ttt2_role_amnesiac_popuptitle"] = "Uno Smemorato si è ricordato che era un {role}"
L["ttt2_role_amnesiac_targetid"] = "Identifica per ricevere il suo ruolo"
L["ttt2_role_amnesiac_targetid_subtitle"] = "Premi [{usekey}] o [{walkkey} + {usekey}] per ricevere il tuo ruolo."

--L["label_amne_showpopup"] = "Show global popup if an Amnesiac receives their role"
--L["label_amne_confirm_player"] = "Has to confirm a body to get a role"
--L["label_amne_limit_to_unconfirmed"] = "Works only with unconfirmed bodies"
