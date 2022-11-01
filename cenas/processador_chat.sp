
//--------------------------------------------------------------------------------------------------------------//
public Action HexTags_OnMessageProcess(int client, char nome[MAXLENGTH_NAME], char mensagem[MAXLENGTH_MESSAGE])
{
	//bool Entrei_N_Cena[MAXPLAYERS + 1];
	char Nome_Original[MAXLENGTH_NAME], Mensagem_Original[MAXLENGTH_MESSAGE], Pegar_GGs_TAGS[MAXPLAYERS + 1][68], Pegar_GGs_NOME[MAXPLAYERS + 1][68], Pegar_GGs_CHAT[MAXPLAYERS + 1][68];
	Format(Mensagem_Original, MAXLENGTH_MESSAGE, "%s", mensagem);
	Format(Nome_Original, MAXLENGTH_NAME, "%s", nome);
	GetClientCookie(client, COR_TAG_GG, Pegar_GGs_TAGS[client], sizeof(Pegar_GGs_TAGS[]));
	GetClientCookie(client, COR_NOME_GG, Pegar_GGs_NOME[client], sizeof(Pegar_GGs_NOME[]));
	GetClientCookie(client, COR_CHAT_GG, Pegar_GGs_CHAT[client], sizeof(Pegar_GGs_CHAT[]));
	char COR_TAGs_TST[MAXPLAYERS + 1][128], COR_NOMEs_TST[MAXPLAYERS + 1][128], COR_CHATs_TST[MAXPLAYERS + 1][128];
	//char cor_tag_test[MAXPLAYERS + 1][128], cor_nome_test[MAXPLAYERS + 1][128], cor_chat_test[MAXPLAYERS + 1][128];
	//char cor_tag_Hex[128], cor_nome_Hex[128], cor_chat_Hex[128];
	GetClientCookie(client, COR_TAG, COR_TAGs_TST[client], sizeof(COR_TAGs_TST[]));
	GetClientCookie(client, COR_NOME, COR_NOMEs_TST[client], sizeof(COR_NOMEs_TST[]));
	GetClientCookie(client, COR_CHAT, COR_CHATs_TST[client], sizeof(COR_CHATs_TST[]));
	
	
	char Tag_Motacao[MAXPLAYERS + 1][MAXLENGTH_NAME], Novo_Nome[MAXLENGTH_NAME], Nome_Motacao[MAXPLAYERS + 1][MAXLENGTH_MESSAGE];
	///Tag_Motacao[client] = TAGS_da_CFG[client].ChatTag;
	
	
	
	char Pegar_GGs_TAGS_V2[MAXPLAYERS + 1][68], Pegar_GGs_NOME_v2[MAXPLAYERS + 1][68], Pegar_GGs_CHAT_v2[MAXPLAYERS + 1][68];
	Format(Mensagem_Original, MAXLENGTH_MESSAGE, "%s", mensagem);
	Format(Nome_Original, MAXLENGTH_NAME, "%s", nome);
	GetClientCookie(client, Cores_RGB_tag, Pegar_GGs_TAGS_V2[client], sizeof(Pegar_GGs_TAGS_V2[]));
	GetClientCookie(client, Cores_RGB_nome, Pegar_GGs_NOME_v2[client], sizeof(Pegar_GGs_NOME_v2[]));
	GetClientCookie(client, Cores_RGB_chat, Pegar_GGs_CHAT_v2[client], sizeof(Pegar_GGs_CHAT_v2[]));
	if (StrEqual(Pegar_GGs_TAGS_V2[client], "1") || StrEqual(Pegar_GGs_NOME_v2[client], "1") || StrEqual(Pegar_GGs_CHAT_v2[client], "1") || 
		StrEqual(Pegar_GGs_NOME[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_NOME[client], "Fade") || 
		StrEqual(Pegar_GGs_NOME[client], "LGBT") || StrEqual(Pegar_GGs_TAGS[client], "Gradiente Liniar") || 
		StrEqual(Pegar_GGs_TAGS[client], "Fade") || StrEqual(Pegar_GGs_TAGS[client], "LGBT") || StrEqual(Pegar_GGs_CHAT[client], "Gradiente Liniar") || 
		StrEqual(Pegar_GGs_CHAT[client], "Fade") || StrEqual(Pegar_GGs_CHAT[client], "LGBT"))
	{
		
		if (StrEqual(Pegar_GGs_NOME[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_NOME[client], "Fade") || StrEqual(Pegar_GGs_NOME[client], "LGBT") || StrEqual(Pegar_GGs_TAGS[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_TAGS[client], "Fade") || StrEqual(Pegar_GGs_TAGS[client], "LGBT") || StrEqual(Pegar_GGs_CHAT[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_CHAT[client], "Fade") || StrEqual(Pegar_GGs_CHAT[client], "LGBT"))
		{
			if (StrEqual(Pegar_GGs_NOME[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_NOME[client], "Fade") || StrEqual(Pegar_GGs_NOME[client], "LGBT") || StrEqual(Pegar_GGs_TAGS[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_TAGS[client], "Fade") || StrEqual(Pegar_GGs_TAGS[client], "LGBT"))
			{
				if (StrContains(TAGS_da_CFG[client].NameColor, "random", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{random}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "rainbow", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{rainbow}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "grey2", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{grey2}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "grey", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{grey}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "lime", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lime}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "green", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{green}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "lightgreen", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lightgreen}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "gold", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{gold}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "yellow", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{yellow}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "orchid", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{orchid}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "purple", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{purple}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "blue", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{blue}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "darkblue", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{darkblue}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "bluegrey", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{bluegrey}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "default", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{default}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "darkred", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{darkred}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "red", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{red}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "lightred", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lightred}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "random", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{random}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "rainbow", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{rainbow}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "grey2", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{grey2}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "grey", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{grey}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "lime", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lime}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
					
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "green", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{green}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "lightgreen", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lightgreen}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "gold", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{gold}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "yellow", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{yellow}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "orchid", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{orchid}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "purple", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{purple}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "blue", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{blue}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "darkblue", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{darkblue}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "bluegrey", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{bluegrey}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "default", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{default}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "darkred", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{darkred}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "red", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{red}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "lightred", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lightred}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				//
				ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor |", "");
				//
				if (StrEqual(Pegar_GGs_NOME[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_NOME[client], "Fade") || StrEqual(Pegar_GGs_NOME[client], "LGBT"))
				{
					if (StrEqual(Pegar_GGs_NOME[client], "Gradiente Liniar"))
					{
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Nome_Original);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Nome_Original[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Nome_Original[i]);
								continue;
							}
							
							int bites = GetCharBytes(Nome_Original[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Nome_Original[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Gradiente_Liniar(++cor), c);
							if (IsCharMB(Nome_Original[i]))
								i += bites - 2;
						}
						Nome_Motacao[client] = Mensagem_Temporaria;
					}
					if (StrEqual(Pegar_GGs_NOME[client], "Fade"))
					{
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Nome_Original);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Nome_Original[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Nome_Original[i]);
								continue;
							}
							
							int bites = GetCharBytes(Nome_Original[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Nome_Original[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Fade(++cor), c);
							if (IsCharMB(Nome_Original[i]))
								i += bites - 2;
						}
						Nome_Motacao[client] = Mensagem_Temporaria;
					}
					if (StrEqual(Pegar_GGs_NOME[client], "LGBT"))
					{
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Nome_Original);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Nome_Original[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Nome_Original[i]);
								continue;
							}
							
							int bites = GetCharBytes(Nome_Original[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Nome_Original[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, LGBT(++cor), c);
							if (IsCharMB(Nome_Original[i]))
								i += bites - 2;
						}
						Nome_Motacao[client] = Mensagem_Temporaria;
					}
				}
				else
				{
					char nome_default[MAXLENGTH_NAME], Nome_Giajo[128];
					GetClientName(client, Nome_Giajo, sizeof(Nome_Giajo));
					//
					if (StrEqual(COR_NOMEs_TST[client], ""))
					{
						Format(nome_default, sizeof(nome_default), "{yellow}%s", Nome_Giajo);
					}
					else
					{
						Format(nome_default, sizeof(nome_default), "%s%s", COR_NOMEs_TST[client], Nome_Giajo);
					}
					//
					Nome_Motacao[client] = nome_default;
				}
				//_-----------_//
				if (StrEqual(Pegar_GGs_TAGS[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_TAGS[client], "Fade") || StrEqual(Pegar_GGs_TAGS[client], "LGBT"))
				{
					if (StrEqual(Pegar_GGs_TAGS[client], "Gradiente Liniar"))
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						char mensagem_final[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Modificar);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Modificar[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Modificar[i]);
								continue;
							}
							
							int bites = GetCharBytes(Modificar[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Modificar[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Gradiente_Liniar(++cor), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final, sizeof(mensagem_final), "%s {default}| ", Mensagem_Temporaria);
						Tag_Motacao[client] = mensagem_final;
					}
					if (StrEqual(Pegar_GGs_TAGS[client], "Fade"))
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						char mensagem_final[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Modificar);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Modificar[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Modificar[i]);
								continue;
							}
							
							int bites = GetCharBytes(Modificar[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Modificar[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Fade(++cor), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final, sizeof(mensagem_final), "%s {default}| ", Mensagem_Temporaria);
						Tag_Motacao[client] = mensagem_final;
					}
					if (StrEqual(Pegar_GGs_TAGS[client], "LGBT"))
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						char mensagem_final[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Modificar);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Modificar[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Modificar[i]);
								continue;
							}
							
							int bites = GetCharBytes(Modificar[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Modificar[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, LGBT(++cor), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final, sizeof(mensagem_final), "%s {default}| ", Mensagem_Temporaria);
						Tag_Motacao[client] = mensagem_final;
					}
				}
				else
				{
					
					char mensagem_final[MAXLENGTH_MESSAGE];
					if (StrEqual(COR_TAGs_TST[client], ""))
					{
						Format(mensagem_final, sizeof(mensagem_final), "{gold}Sponsor {default}| ");
					}
					else
					{
						Format(mensagem_final, sizeof(mensagem_final), "%s", COR_TAGs_TST[client]);
					}
					Tag_Motacao[client] = mensagem_final;
				}
				
				Format(Novo_Nome, MAXLENGTH_NAME, "%s%s{default}", Tag_Motacao[client], Nome_Motacao[client]);
				strcopy(nome, MAXLENGTH_NAME, Novo_Nome);
			}
			
			
			//----------//
			if (StrEqual(Pegar_GGs_CHAT[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_CHAT[client], "Fade") || StrEqual(Pegar_GGs_CHAT[client], "LGBT"))
			{
				if (StrContains(TAGS_da_CFG[client].ChatColor, "random", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{random}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "rainbow", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{rainbow}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "grey2", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{grey2}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "grey", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{grey}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "lime", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{lime}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "green", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{green}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "lightgreen", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{lightgreen}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "gold", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{gold}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "yellow", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{yellow}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "orchid", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{orchid}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "purple", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{purple}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "blue", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{blue}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "darkblue", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{darkblue}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "bluegrey", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{bluegrey}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "default", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{default}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "darkred", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{darkred}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "red", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{red}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "lightred", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{lightred}", "");
				}
				if (StrEqual(Pegar_GGs_CHAT[client], "Gradiente Liniar"))
				{
					char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
					int cor;
					int tamanho = strlen(Mensagem_Original);
					for (int i = 0; i < tamanho; i++)
					{
						if (IsCharSpace(Mensagem_Original[i]))
						{
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Mensagem_Original[i]);
							continue;
						}
						
						int bites = GetCharBytes(Mensagem_Original[i]) + 1;
						char[] c = new char[bites];
						strcopy(c, bites, Mensagem_Original[i]);
						Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Gradiente_Liniar(++cor), c);
						if (IsCharMB(Mensagem_Original[i]))
							i += bites - 2;
					}
					Format(Mensagem_Original, MAXLENGTH_MESSAGE, "%s", Mensagem_Temporaria);
					strcopy(mensagem, MAXLENGTH_MESSAGE, Mensagem_Original);
				}
				if (StrEqual(Pegar_GGs_CHAT[client], "Fade"))
				{
					char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
					int cor;
					int tamanho = strlen(Mensagem_Original);
					for (int i = 0; i < tamanho; i++)
					{
						if (IsCharSpace(Mensagem_Original[i]))
						{
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Mensagem_Original[i]);
							continue;
						}
						
						int bites = GetCharBytes(Mensagem_Original[i]) + 1;
						char[] c = new char[bites];
						strcopy(c, bites, Mensagem_Original[i]);
						Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Fade(++cor), c);
						if (IsCharMB(Mensagem_Original[i]))
							i += bites - 2;
					}
					Format(Mensagem_Original, MAXLENGTH_MESSAGE, "%s", Mensagem_Temporaria);
					strcopy(mensagem, MAXLENGTH_MESSAGE, Mensagem_Original);
				}
				if (StrEqual(Pegar_GGs_CHAT[client], "LGBT"))
				{
					char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
					int cor;
					int tamanho = strlen(Mensagem_Original);
					for (int i = 0; i < tamanho; i++)
					{
						if (IsCharSpace(Mensagem_Original[i]))
						{
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Mensagem_Original[i]);
							continue;
						}
						
						int bites = GetCharBytes(Mensagem_Original[i]) + 1;
						char[] c = new char[bites];
						strcopy(c, bites, Mensagem_Original[i]);
						Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, LGBT(++cor), c);
						if (IsCharMB(Mensagem_Original[i]))
							i += bites - 2;
					}
					Format(Mensagem_Original, MAXLENGTH_MESSAGE, "%s", Mensagem_Temporaria);
					strcopy(mensagem, MAXLENGTH_MESSAGE, Mensagem_Original);
				}
			}
			//return Plugin_Changed;
		}
		
		////////////////////////////////////////////////////////////////////////////////////////////////////
		//								CHAT RGB
		////////////////////////////////////////////////////////////////////////////////////////////////////
		
		if (StrEqual(Pegar_GGs_TAGS_V2[client], "1") || StrEqual(Pegar_GGs_NOME_v2[client], "1") || StrEqual(Pegar_GGs_CHAT_v2[client], "1"))
		{
			
			if (StrEqual(Pegar_GGs_TAGS_V2[client], "1") || StrEqual(Pegar_GGs_NOME_v2[client], "1"))
			{
				
				if (StrContains(TAGS_da_CFG[client].ChatTag, "random", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{random}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "rainbow", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{rainbow}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "grey2", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{grey2}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "grey", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{grey}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "lime", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lime}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
					
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "green", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{green}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "lightgreen", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lightgreen}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "gold", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{gold}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "yellow", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{yellow}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "orchid", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{orchid}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "purple", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{purple}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "blue", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{blue}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "bluegrey", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{bluegrey}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "default", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{default}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "darkred", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{darkred}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "red", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{red}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatTag, "lightred", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lightred}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "random", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{random}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "rainbow", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{rainbow}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "grey2", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{grey2}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "grey", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{grey}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "lime", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lime}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "green", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{green}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "lightgreen", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lightgreen}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "gold", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{gold}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "yellow", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{yellow}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "orchid", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{orchid}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "purple", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{purple}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "blue", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{blue}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "darkblue", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{darkblue}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "bluegrey", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{bluegrey}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "default", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{default}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "darkred", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{darkred}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "red", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{red}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				if (StrContains(TAGS_da_CFG[client].NameColor, "lightred", false))
				{
					ReplaceString(Nome_Original, sizeof(Nome_Original), "{lightred}", "");
					ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				}
				//
				ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor | ", "");
				ReplaceString(Nome_Original, sizeof(Nome_Original), "Sponsor |", "");
				//
				//
				if (StrEqual(Pegar_GGs_TAGS_V2[client], "1"))
				{
					
					char pegar_sequencia_ck[MAXPLAYERS + 1][32];
					int R_sequencia[MAXPLAYERS + 1];
					GetClientCookie(client, Tipo_Sequencia_G_TAG, pegar_sequencia_ck[client], sizeof(pegar_sequencia_ck[]));
					R_sequencia[client] = StringToInt(pegar_sequencia_ck[client]);
					if (R_sequencia[client] == 1)
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						char mensagem_final[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Modificar);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Modificar[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Modificar[i]);
								continue;
							}
							
							int bites = GetCharBytes(Modificar[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Modificar[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Respeitam_Sequencia_TAG(client, ++cor), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final, sizeof(mensagem_final), "%s {default}| ", Mensagem_Temporaria);
						Tag_Motacao[client] = mensagem_final;
					}
					if (R_sequencia[client] == 2)
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						char mensagem_final[MAXLENGTH_MESSAGE];
						int tamanho = strlen(Modificar);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Modificar[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Modificar[i]);
								continue;
							}
							
							int bites = GetCharBytes(Modificar[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Modificar[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Aleatorias_TAG(client), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final, sizeof(mensagem_final), "%s {default}| ", Mensagem_Temporaria);
						Tag_Motacao[client] = mensagem_final;
					}
					if (R_sequencia[client] == 3)
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						char mensagem_final[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Modificar);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Modificar[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Modificar[i]);
								continue;
							}
							
							int bites = GetCharBytes(Modificar[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Modificar[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Subindo_Sequencia_TAG(client, ++cor), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final, sizeof(mensagem_final), "%s {default}| ", Mensagem_Temporaria);
						Tag_Motacao[client] = mensagem_final;
					}
					if (R_sequencia[client] == 4)
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						char mensagem_final[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Modificar);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Modificar[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Modificar[i]);
								continue;
							}
							
							int bites = GetCharBytes(Modificar[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Modificar[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Descendo_Sequencia_TAG(client, ++cor), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final, sizeof(mensagem_final), "%s {default}| ", Mensagem_Temporaria);
						Tag_Motacao[client] = mensagem_final;
					}
				}
				else
				{
					char mensagem_final[MAXLENGTH_MESSAGE];
					//
					if (StrEqual(COR_TAGs_TST[client], ""))
					{
						Format(mensagem_final, sizeof(mensagem_final), "{gold}Sponsor {default}| ");
					}
					else
					{
						Format(mensagem_final, sizeof(mensagem_final), "%s", COR_TAGs_TST[client]);
					}
					//
					Tag_Motacao[client] = mensagem_final;
				}
				if (StrEqual(Pegar_GGs_NOME_v2[client], "1"))
				{
					
					char pegar_sequencia_ck[MAXPLAYERS + 1][32];
					int R_sequencia[MAXPLAYERS + 1];
					GetClientCookie(client, Tipo_Sequencia_G_Nome, pegar_sequencia_ck[client], sizeof(pegar_sequencia_ck[]));
					R_sequencia[client] = StringToInt(pegar_sequencia_ck[client]);
					if (R_sequencia[client] == 1)
					{
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Nome_Original);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Nome_Original[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Nome_Original[i]);
								continue;
							}
							
							int bites = GetCharBytes(Nome_Original[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Nome_Original[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Respeitam_Sequencia_Nome(client, ++cor), c);
							if (IsCharMB(Nome_Original[i]))
								i += bites - 2;
						}
						Nome_Motacao[client] = Mensagem_Temporaria;
					}
					
					
					if (R_sequencia[client] == 2)
					{
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						int tamanho = strlen(Nome_Original);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Nome_Original[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Nome_Original[i]);
								continue;
							}
							
							int bites = GetCharBytes(Nome_Original[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Nome_Original[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Aleatorias_Nome(client), c);
							if (IsCharMB(Nome_Original[i]))
								i += bites - 2;
						}
						Nome_Motacao[client] = Mensagem_Temporaria;
					}
					
					
					if (R_sequencia[client] == 3)
					{
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Nome_Original);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Nome_Original[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Nome_Original[i]);
								continue;
							}
							
							int bites = GetCharBytes(Nome_Original[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Nome_Original[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Subindo_Sequencia_Nome(client, ++cor), c);
							if (IsCharMB(Nome_Original[i]))
								i += bites - 2;
						}
						Nome_Motacao[client] = Mensagem_Temporaria;
					}
					if (R_sequencia[client] == 4)
					{
						
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
						int cor;
						int tamanho = strlen(Nome_Original);
						for (int i = 0; i < tamanho; i++)
						{
							if (IsCharSpace(Nome_Original[i]))
							{
								Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Nome_Original[i]);
								continue;
							}
							
							int bites = GetCharBytes(Nome_Original[i]) + 1;
							char[] c = new char[bites];
							strcopy(c, bites, Nome_Original[i]);
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Descendo_Sequencia_Nome(client, ++cor), c);
							if (IsCharMB(Nome_Original[i]))
								i += bites - 2;
						}
						Nome_Motacao[client] = Mensagem_Temporaria;
					}
				}
				else
				{
					char nome_default[MAXLENGTH_NAME], Nome_Giajo[128];
					GetClientName(client, Nome_Giajo, sizeof(Nome_Giajo));
					if (StrEqual(COR_NOMEs_TST[client], ""))
					{
						Format(nome_default, sizeof(nome_default), "{yellow}%s", Nome_Giajo);
					}
					else
					{
						Format(nome_default, sizeof(nome_default), "%s%s", COR_NOMEs_TST[client], Nome_Giajo);
					}
					Nome_Motacao[client] = nome_default;
				}
				Format(Novo_Nome, MAXLENGTH_NAME, "%s%s{default}", Tag_Motacao[client], Nome_Motacao[client]);
				strcopy(nome, MAXLENGTH_NAME, Novo_Nome);
			}
			///////////////////////////////////////////////////////////////////////////////////////////////////
			
			///////////////////////////////////////////////////
			///////////////////////////////////////////
			//////////////
			if (StrEqual(Pegar_GGs_CHAT_v2[client], "1"))
			{
				
				if (StrContains(TAGS_da_CFG[client].ChatColor, "random", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{random}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "rainbow", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{rainbow}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "grey2", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{grey2}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "grey", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{grey}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "lime", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{lime}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "green", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{green}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "lightgreen", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{lightgreen}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "gold", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{gold}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "yellow", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{yellow}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "orchid", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{orchid}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "purple", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{purple}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "blue", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{blue}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "bluegrey", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{bluegrey}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "default", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{default}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "darkred", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{darkred}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "red", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{red}", "");
				}
				if (StrContains(TAGS_da_CFG[client].ChatColor, "lightred", false))
				{
					ReplaceString(Mensagem_Original, sizeof(Mensagem_Original), "{lightred}", "");
				}
				char pegar_sequencia_ck[MAXPLAYERS + 1][32];
				int R_sequencia[MAXPLAYERS + 1];
				GetClientCookie(client, Tipo_Sequencia_G_CHAT, pegar_sequencia_ck[client], sizeof(pegar_sequencia_ck[]));
				R_sequencia[client] = StringToInt(pegar_sequencia_ck[client]);
				if (R_sequencia[client] == 1)
				{
					char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
					int cor;
					int tamanho = strlen(Mensagem_Original);
					for (int i = 0; i < tamanho; i++)
					{
						if (IsCharSpace(Mensagem_Original[i]))
						{
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Mensagem_Original[i]);
							continue;
						}
						
						int bites = GetCharBytes(Mensagem_Original[i]) + 1;
						char[] c = new char[bites];
						strcopy(c, bites, Mensagem_Original[i]);
						Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Respeitam_Sequencia_CHAT(client, ++cor), c);
						if (IsCharMB(Mensagem_Original[i]))
							i += bites - 2;
					}
					Format(Mensagem_Original, MAXLENGTH_MESSAGE, "%s", Mensagem_Temporaria);
					strcopy(mensagem, MAXLENGTH_MESSAGE, Mensagem_Original);
				}
				if (R_sequencia[client] == 2)
				{
					char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
					int tamanho = strlen(Mensagem_Original);
					for (int i = 0; i < tamanho; i++)
					{
						if (IsCharSpace(Mensagem_Original[i]))
						{
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Mensagem_Original[i]);
							continue;
						}
						
						int bites = GetCharBytes(Mensagem_Original[i]) + 1;
						char[] c = new char[bites];
						strcopy(c, bites, Mensagem_Original[i]);
						Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Aleatorias_CHAT(client), c);
						if (IsCharMB(Mensagem_Original[i]))
							i += bites - 2;
					}
					Format(Mensagem_Original, MAXLENGTH_MESSAGE, "%s", Mensagem_Temporaria);
					strcopy(mensagem, MAXLENGTH_MESSAGE, Mensagem_Original);
				}
				if (R_sequencia[client] == 3)
				{
					char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
					int cor;
					int tamanho = strlen(Mensagem_Original);
					for (int i = 0; i < tamanho; i++)
					{
						if (IsCharSpace(Mensagem_Original[i]))
						{
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Mensagem_Original[i]);
							continue;
						}
						
						int bites = GetCharBytes(Mensagem_Original[i]) + 1;
						char[] c = new char[bites];
						strcopy(c, bites, Mensagem_Original[i]);
						Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Subindo_Sequencia_CHAT(client, ++cor), c);
						if (IsCharMB(Mensagem_Original[i]))
							i += bites - 2;
					}
					Format(Mensagem_Original, MAXLENGTH_MESSAGE, "%s", Mensagem_Temporaria);
					strcopy(mensagem, MAXLENGTH_MESSAGE, Mensagem_Original);
				}
				if (R_sequencia[client] == 4)
				{
					char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
					int cor;
					int tamanho = strlen(Mensagem_Original);
					for (int i = 0; i < tamanho; i++)
					{
						if (IsCharSpace(Mensagem_Original[i]))
						{
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Mensagem_Original[i]);
							continue;
						}
						
						int bites = GetCharBytes(Mensagem_Original[i]) + 1;
						char[] c = new char[bites];
						strcopy(c, bites, Mensagem_Original[i]);
						Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Descendo_Sequencia_CHAT(client, ++cor), c);
						if (IsCharMB(Mensagem_Original[i]))
							i += bites - 2;
					}
					Format(Mensagem_Original, MAXLENGTH_MESSAGE, "%s", Mensagem_Temporaria);
					strcopy(mensagem, MAXLENGTH_MESSAGE, Mensagem_Original);
				}
			}
		}
		return Plugin_Changed;
	}
	return Plugin_Continue;
}
//////////////////////////////////////////////////////////////