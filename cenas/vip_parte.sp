
//◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆
//														 VIP
//◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆
public void CORs_VIP_MENU(int client, int Pagina)
{
	repor_chat_VIP[client] = false;
	VIP_Ja_Apliquei[client] = false;
	VIP_cor_selecionada[client] = "";
	char COR_CHATs[128];
	GetClientCookie(client, COR_CHAT_M, COR_CHATs, sizeof(COR_CHATs));
	Menu menu = new Menu(CORs_VIP_LIG);
	menu.SetTitle("#Darkness-CM - Lista de Cores\nSeleciona uma cor\n \nCor Atual:\nCHAT ➠ %s\n \n", COR_CHATs);
	menu.AddItem("1", "Vermelho Claro");
	menu.AddItem("2", "Vermelho");
	menu.AddItem("3", "Vermelho Escuro");
	menu.AddItem("4", "Normal");
	menu.AddItem("5", "Azul Claro");
	menu.AddItem("6", "Azul");
	menu.AddItem("7", "Azul Escuro");
	menu.AddItem("8", "Roxo");
	menu.AddItem("9", "Violeta");
	menu.AddItem("10", "Amarelo");
	menu.AddItem("11", "Dourado");
	menu.AddItem("12", "Verde Claro");
	menu.AddItem("13", "Verde");
	menu.AddItem("14", "Lima");
	menu.AddItem("15", "Cinza Claro");
	menu.AddItem("16", "Cinza Escuro");
	menu.AddItem("17", "Arco Iris");
	
	menu.ExitBackButton = true;
	menu.ExitButton = true;
	menu.DisplayAt(client, Pagina, MENU_TIME_FOREVER);
}

public int CORs_VIP_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			
			if (StrEqual(P_Item, "1"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "2"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "3"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "4"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "5"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "6"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "7"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "8"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "9"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "10"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "11"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "12"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "13"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "14"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "15"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "16"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			else if (StrEqual(P_Item, "17"))
			{
				VIP_cor_selecionada[client] = S_Item;
				VIP_Decisao_Final_MENU(client);
			}
			POS_COR_VIP_Escolhida[client] = GetMenuSelectionPosition();
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				VIP_Ja_Apliquei[client] = false;
				VIP_cor_selecionada[client] = "";
				repor_chat_VIP[client] = false;
				TAGS_MENU(client);
				
			}
			else if (Posicao == MenuCancel_Interrupted) {
				VIP_Ja_Apliquei[client] = false;
				VIP_cor_selecionada[client] = "";
				repor_chat_VIP[client] = false;
				
			}
			else if (Posicao == MenuCancel_Exit) {
				VIP_Ja_Apliquei[client] = false;
				VIP_cor_selecionada[client] = "";
				repor_chat_VIP[client] = false;
			}
		}
		else if (Accao == MenuAction_End)
		{
			delete menu;
		}
	}
	return 0;
}
//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Selecionar ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
public void VIP_Decisao_Final_MENU(int client)
{
	char texto_cor[128];
	char COR_CHATs[128], atuais[128];
	GetClientCookie(client, COR_CHAT_M, COR_CHATs, sizeof(COR_CHATs));
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - Decisao Final\n \n");
	Format(atuais, sizeof(atuais), "Cor Atual ➠ %s\n", COR_CHATs);
	Painel.DrawText(atuais);
	Format(texto_cor, sizeof(texto_cor), "Cor Selecionada ➠ %s\n \n", VIP_cor_selecionada[client]);
	Painel.DrawText(texto_cor);
	if (VIP_Ja_Apliquei[client])
	{
		Painel.DrawText("3. Aplicar no CHAT");
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Ver Resultado Final");
	}
	else
	{
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawItem("Aplicar no CHAT");
		Painel.DrawText("4. Ver Resultado Final");
	}
	if (eusouvip(client, l_tipodevip[VIP]) && !eusouvip(client, l_tipodevip[STAFF]) || eusouvip(client, l_tipodevip[SPONSOR]) && !eusouvip(client, l_tipodevip[STAFF]))
	{
		SetPanelCurrentKey(Painel, 5);
		Painel.DrawItem("Escolher outra cor");
		if (VIP_Ja_Apliquei[client] && repor_chat_VIP[client])
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Repor Cor Original\n \n");
		}
		else
		{
			Painel.DrawText("6. Repor Cor Original\n \n");
		}
	}
	if (eusouvip(client, l_tipodevip[STAFF]))
	{
		SetPanelCurrentKey(Painel, 5);
		Painel.DrawItem("Escolher outra cor\n \n");
	}
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar para o Inicio");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, VIP_Decisao_Final_LIG, MENU_TIME_FOREVER);
}

public int VIP_Decisao_Final_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		char buscar_buscar_cor[128], COR_CHATs_TST[128], html_buscar[128];
		char cor_chat_testv2[MAXPLAYERS + 1][128], cor_chat_Hex[128], Nome[128];
		GetClientCookie(client, COR_CHAT, COR_CHATs_TST, sizeof(COR_CHATs_TST));
		GetClientName(client, Nome, sizeof(Nome));
		cor_chat_testv2[client] = COR_CHATs_TST;
		if (StrEqual(COR_CHATs_TST, ""))
		{
			HexTags_GetClientTag(client, ChatColor, cor_chat_Hex, sizeof(cor_chat_Hex));
			cor_chat_testv2[client] = cor_chat_Hex;
		}
		
		if (StrEqual(VIP_cor_selecionada[client], "Vermelho Claro"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{lightred}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#F73A3A' class='fontSize-xl'>Vermelho Claro</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Vermelho"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{red}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#FF0000' class='fontSize-xl'>Vermelho</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Vermelho Escuro"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{darkred}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#B50303' class='fontSize-xl'>Vermelho Escuro</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Normal"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{default}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#FFFFFF' class='fontSize-xl'>Normal</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Azul Claro"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{bluegrey}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#93C4DE' class='fontSize-xl'>Azul Claro</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Azul"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{blue}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#00A6FC' class='fontSize-xl'>Azul</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Azul Escuro"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{darkblue}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#0320FB' class='fontSize-xl'>Azul Escuro</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Roxo"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{purple}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#8F03FB' class='fontSize-xl'>Roxo</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Violeta"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{orchid}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#ED03FB' class='fontSize-xl'>Violeta</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Amarelo"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{yellow}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#E1FB03' class='fontSize-xl'>Amarelo</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Dourado"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{gold}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#F4CC05' class='fontSize-xl'>Dourado</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Verde Claro"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{lightgreen}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#90FB67' class='fontSize-xl'>Verde Claro</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Verde"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{green}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#47FF00' class='fontSize-xl'>Verde</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Lima"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{lime}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#75FF00' class='fontSize-xl'>Lima</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Cinza Claro"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{grey}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#E0E0E0' class='fontSize-xl'>Cinza Claro</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Cinza Escuro"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{grey2}");
			Format(html_buscar, sizeof(html_buscar), "<font color='#8E8E8E' class='fontSize-xl'>Cinza Escuro</font>");
		}
		else if (StrEqual(VIP_cor_selecionada[client], "Arco Iris"))
		{
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{rainbow}");
			
		}
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					SetClientCookie(client, COR_CHAT_GG, "");
					SetClientCookie(client, Cor1_G_CHAT, "");
					SetClientCookie(client, Cor2_G_CHAT, "");
					SetClientCookie(client, Cor3_G_CHAT, "");
					SetClientCookie(client, Cor4_G_CHAT, "");
					SetClientCookie(client, Cor5_G_CHAT, "");
					SetClientCookie(client, Cor6_G_CHAT, "");
					SetClientCookie(client, Cor7_G_CHAT, "");
					SetClientCookie(client, Cor8_G_CHAT, "");
					SetClientCookie(client, Cor9_G_CHAT, "");
					SetClientCookie(client, Cor10_G_CHAT, "");
					SetClientCookie(client, Numero_Cores_G_CHAT, "");
					SetClientCookie(client, Tipo_Sequencia_G_CHAT, "");
					SetClientCookie(client, Cores_RGB_chat, "0");
					HexTags_SetClientTag(client, ChatColor, buscar_buscar_cor);
					SetClientCookie(client, COR_CHAT_M, VIP_cor_selecionada[client]);
					SetClientCookie(client, COR_CHAT, buscar_buscar_cor);
					VIP_Ja_Apliquei[client] = true;
					repor_chat_VIP[client] = true;
					char aplicao_cor[300];
					if (StrEqual(VIP_cor_selecionada[client], "Verde Claro") || StrEqual(VIP_cor_selecionada[client], "Lima") || StrEqual(VIP_cor_selecionada[client], "Lima"))
					{
						
						Format(aplicao_cor, sizeof(aplicao_cor), "<pre>				%s\n<font color='#981BE3' class='fontSize-xl'>APLICADA COM SUCESSO</font></pre>", html_buscar);
					}
					else if (StrEqual(VIP_cor_selecionada[client], "Arco Iris"))
					{
							Format(aplicao_cor, sizeof(aplicao_cor), "<font color='#00EB42' class='fontSize-xl'>APLICAÇÃO FEITA COM SUCESSO</font>");
					}
					else
					{
						Format(aplicao_cor, sizeof(aplicao_cor), "<pre>				%s\n<font color='#00EB42' class='fontSize-xl'>APLICADA COM SUCESSO</font></pre>", html_buscar);
					}
					PrintHintText(client, aplicao_cor);
					VIP_Decisao_Final_MENU(client);
				}
				case 4:
				{
					char buffalo_tag[64], buffalo_Nome[124];
					HexTags_GetClientTag(client, ChatTag, buffalo_tag, sizeof(buffalo_tag));
					HexTags_GetClientTag(client, NameColor, buffalo_Nome, sizeof(buffalo_Nome));
					if (StrEqual(cor_chat_testv2[client], "{rainbow}"))
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "teste de cor selecionada";
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
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, ArcoIris(++cor), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final, sizeof(mensagem_final), "%s", Mensagem_Temporaria);
						
						CPrintToChat(client, "%s%s%s{orchid} ➠{default} %s", buffalo_tag, buffalo_Nome, Nome, mensagem_final);
						VIP_Decisao_Final_MENU(client);
					}
					else
					{
						CPrintToChat(client, "%s%s%s{orchid} ➠{default}%s esta é a nova cor do chat", buffalo_tag, buffalo_Nome, Nome, cor_chat_testv2[client]);
						VIP_Decisao_Final_MENU(client);
					}
				}
				case 5:
				{
					CORs_VIP_MENU(client, POS_COR_VIP_Escolhida[client]);
				}
				case 6:
				{
					SetClientCookie(client, COR_CHAT_GG, "");
					SetClientCookie(client, COR_CHAT, "");
					SetClientCookie(client, COR_CHAT_M, "Predefinida");
					SetClientCookie(client, Cor1_G_CHAT, "");
					SetClientCookie(client, Cor2_G_CHAT, "");
					SetClientCookie(client, Cor3_G_CHAT, "");
					SetClientCookie(client, Cor4_G_CHAT, "");
					SetClientCookie(client, Cor5_G_CHAT, "");
					SetClientCookie(client, Cor6_G_CHAT, "");
					SetClientCookie(client, Cor7_G_CHAT, "");
					SetClientCookie(client, Cor8_G_CHAT, "");
					SetClientCookie(client, Cor9_G_CHAT, "");
					SetClientCookie(client, Cor10_G_CHAT, "");
					SetClientCookie(client, Numero_Cores_G_CHAT, "");
					SetClientCookie(client, Tipo_Sequencia_G_CHAT, "");
					SetClientCookie(client, Cores_RGB_chat, "0");
					HexTags_ResetClientTag(client);
					VIP_cor_selecionada[client] = "Predefinida";
					VIP_Ja_Apliquei[client] = true;
					repor_chat_VIP[client] = false;
					VIP_Decisao_Final_MENU(client);
				}
				case 7:
				{
					VIP_Ja_Apliquei[client] = false;
					VIP_cor_selecionada[client] = "";
					repor_chat_VIP[client] = false;
					TAGS_MENU(client);
					
				}
				case 9:
				{
					VIP_Ja_Apliquei[client] = false;
					VIP_cor_selecionada[client] = "";
					repor_chat_VIP[client] = false;
					delete menu;
				}
			}
		}
		else if (action == MenuAction_Cancel)
		{
			if (Teclas == MenuCancel_Interrupted) {
				VIP_Ja_Apliquei[client] = false;
				VIP_cor_selecionada[client] = "";
				repor_chat_VIP[client] = false;
			}
		}
		else if (action == MenuAction_End)
		{
		}
	}
	return 0;
}