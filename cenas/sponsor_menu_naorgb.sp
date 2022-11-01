
//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Selecionar ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
public void Decisao_Final_Sponsor_MENU(int client)
{
	char texto_cor[128], atuais[128];
	char COR_TAGs[128], COR_NOMEs[128], COR_CHATs[128];
	GetClientCookie(client, COR_TAG_M, COR_TAGs, sizeof(COR_TAGs));
	GetClientCookie(client, COR_NOME_M, COR_NOMEs, sizeof(COR_NOMEs));
	GetClientCookie(client, COR_CHAT_M, COR_CHATs, sizeof(COR_CHATs));
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - Decisao Final\n \n");
	Format(atuais, sizeof(atuais), "Cor Atual:\nTag ➠ %s\nNome ➠ %s\nChat ➠ %s\n \n", COR_TAGs, COR_NOMEs, COR_CHATs);
	Painel.DrawText(atuais);
	Format(texto_cor, sizeof(texto_cor), "Cor Selecionada ➠ %s\n \n", SPONSOR_Cor_Selecionada[client]);
	Painel.DrawText(texto_cor);
	if (a_geral[client] || StrEqual(SPONSOR_Cor_Selecionada[client], "Predefinida") || a_tag[client] && a_nome[client] && a_chat[client])
	{
		Painel.DrawText("1. Aplicar no Geral");
		Painel.DrawText("2. Aplicar na Tag");
		Painel.DrawText("3. Aplicar no Nome");
		Painel.DrawText("4. Aplicar no Chat");
		if (SPONSOR_Ja_Apliquei[client])
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Ver Resultado Final");
		}
		else
		{
			Painel.DrawText("5. Ver Resultado Final");
		}
		if (eusouvip(client, l_tipodevip[SPONSOR]) && !eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor");
			char repor_oq[128];
			if (a_geral[client] || a_tag[client] || a_nome[client] || a_chat[client])
			{
				SetPanelCurrentKey(Painel, 7);
				Format(repor_oq, sizeof(repor_oq), "Repor Cor Original\n \n");
				Painel.DrawItem(repor_oq);
			}
			else
			{
				Painel.DrawText("7. Repor Cor Original\n \n");
			}
		}
		if (eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor\n \n");
		}
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Voltar para o Inicio");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Decisao_Final_Sponsor_LIG, MENU_TIME_FOREVER);
		return;
	}
	if (a_tag[client] && !a_nome[client] && !a_chat[client])
	{
		SetPanelCurrentKey(Painel, 1);
		Painel.DrawItem("Aplicar no Geral");
		Painel.DrawText("2. Aplicar na Tag");
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawItem("Aplicar no Nome");
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Aplicar no Chat");
		if (SPONSOR_Ja_Apliquei[client])
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Ver Resultado Final");
		}
		else
		{
			Painel.DrawText("5. Ver Resultado Final");
		}
		if (eusouvip(client, l_tipodevip[SPONSOR]) && !eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor");
			char repor_oq[128];
			if (a_geral[client] || a_tag[client] || a_nome[client] || a_chat[client])
			{
				SetPanelCurrentKey(Painel, 7);
				Format(repor_oq, sizeof(repor_oq), "Repor Cor Original\n \n");
				Painel.DrawItem(repor_oq);
			}
			else
			{
				Painel.DrawText("7. Repor Cor Original\n \n");
			}
		}
		if (eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor\n \n");
		}
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Voltar para o Inicio");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Decisao_Final_Sponsor_LIG, MENU_TIME_FOREVER);
		return;
	}
	if (a_nome[client] && !a_tag[client] && !a_chat[client])
	{
		SetPanelCurrentKey(Painel, 1);
		Painel.DrawItem("Aplicar no Geral");
		if (StrEqual(SPONSOR_Cor_Selecionada[client], "Arco Iris") || StrEqual(SPONSOR_Cor_Selecionada[client], "Aleatórias"))
		{
			Painel.DrawText("2. Aplicar na Tag");
		}
		else
		{
			SetPanelCurrentKey(Painel, 2);
			Painel.DrawItem("Aplicar na Tag");
		}
		Painel.DrawText("3. Aplicar no Nome");
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Aplicar no Chat");
		if (SPONSOR_Ja_Apliquei[client])
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Ver Resultado Final");
		}
		else
		{
			Painel.DrawText("5. Ver Resultado Final");
		}
		if (eusouvip(client, l_tipodevip[SPONSOR]) && !eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor");
			char repor_oq[128];
			if (a_geral[client] || a_tag[client] || a_nome[client] || a_chat[client])
			{
				SetPanelCurrentKey(Painel, 7);
				Format(repor_oq, sizeof(repor_oq), "Repor Cor Original\n \n");
				Painel.DrawItem(repor_oq);
			}
			else
			{
				Painel.DrawText("7. Repor Cor Original\n \n");
			}
		}
		if (eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor\n \n");
		}
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Voltar para o Inicio");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Decisao_Final_Sponsor_LIG, MENU_TIME_FOREVER);
		return;
	}
	if (a_chat[client] && !a_nome[client] && !a_tag[client])
	{
		SetPanelCurrentKey(Painel, 1);
		Painel.DrawItem("Aplicar no Geral");
		if (StrEqual(SPONSOR_Cor_Selecionada[client], "Arco Iris") || StrEqual(SPONSOR_Cor_Selecionada[client], "Aleatórias"))
		{
			Painel.DrawText("2. Aplicar na Tag");
			Painel.DrawText("3. Aplicar no Nome");
		}
		else
		{
			SetPanelCurrentKey(Painel, 2);
			Painel.DrawItem("Aplicar na Tag");
			SetPanelCurrentKey(Painel, 3);
			Painel.DrawItem("Aplicar no Nome");
		}
		Painel.DrawText("4. Aplicar no Chat");
		if (SPONSOR_Ja_Apliquei[client])
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Ver Resultado Final");
		}
		else
		{
			Painel.DrawText("5. Ver Resultado Final");
		}
		if (eusouvip(client, l_tipodevip[SPONSOR]) && !eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor");
			char repor_oq[128];
			if (a_geral[client] || a_tag[client] || a_nome[client] || a_chat[client])
			{
				SetPanelCurrentKey(Painel, 7);
				Format(repor_oq, sizeof(repor_oq), "Repor Cor Original\n \n");
				Painel.DrawItem(repor_oq);
			}
			else
			{
				Painel.DrawText("7. Repor Cor Original\n \n");
			}
		}
		if (eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor\n \n");
		}
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Voltar para o Inicio");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Decisao_Final_Sponsor_LIG, MENU_TIME_FOREVER);
		return;
	}
	if (a_tag[client] && a_nome[client] && !a_chat[client])
	{
		SetPanelCurrentKey(Painel, 1);
		Painel.DrawItem("Aplicar no Geral");
		Painel.DrawText("2. Aplicar na Tag");
		Painel.DrawText("3. Aplicar no Nome");
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Aplicar no Chat");
		if (SPONSOR_Ja_Apliquei[client])
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Ver Resultado Final");
		}
		else
		{
			Painel.DrawText("5. Ver Resultado Final");
		}
		if (eusouvip(client, l_tipodevip[SPONSOR]) && !eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor");
			char repor_oq[128];
			if (a_geral[client] || a_tag[client] || a_nome[client] || a_chat[client])
			{
				SetPanelCurrentKey(Painel, 7);
				Format(repor_oq, sizeof(repor_oq), "Repor Cor Original\n \n");
				Painel.DrawItem(repor_oq);
			}
			else
			{
				Painel.DrawText("7. Repor Cor Original\n \n");
			}
		}
		if (eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor\n \n");
		}
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Voltar para o Inicio");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Decisao_Final_Sponsor_LIG, MENU_TIME_FOREVER);
		return;
	}
	if (a_tag[client] && a_chat[client] && !a_nome[client])
	{
		SetPanelCurrentKey(Painel, 1);
		Painel.DrawItem("Aplicar no Geral");
		Painel.DrawText("2. Aplicar na Tag");
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawItem("Aplicar no Nome");
		Painel.DrawText("4. Aplicar no Chat");
		if (SPONSOR_Ja_Apliquei[client])
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Ver Resultado Final");
		}
		else
		{
			Painel.DrawText("5. Ver Resultado Final");
		}
		if (eusouvip(client, l_tipodevip[SPONSOR]) && !eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor");
			char repor_oq[128];
			if (a_geral[client] || a_tag[client] || a_nome[client] || a_chat[client])
			{
				SetPanelCurrentKey(Painel, 7);
				Format(repor_oq, sizeof(repor_oq), "Repor Cor Original\n \n");
				Painel.DrawItem(repor_oq);
			}
			else
			{
				Painel.DrawText("7. Repor Cor Original\n \n");
			}
		}
		if (eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor\n \n");
		}
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Voltar para o Inicio");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Decisao_Final_Sponsor_LIG, MENU_TIME_FOREVER);
		return;
	}
	if (a_nome[client] && a_chat[client] && !a_tag[client])
	{
		SetPanelCurrentKey(Painel, 1);
		Painel.DrawItem("Aplicar no Geral");
		if (StrEqual(SPONSOR_Cor_Selecionada[client], "Arco Iris") || StrEqual(SPONSOR_Cor_Selecionada[client], "Aleatórias"))
		{
			Painel.DrawText("2. Aplicar na Tag");
		}
		else
		{
			SetPanelCurrentKey(Painel, 2);
			Painel.DrawItem("Aplicar na Tag");
		}
		Painel.DrawText("3. Aplicar no Nome");
		Painel.DrawText("4. Aplicar no Chat");
		if (SPONSOR_Ja_Apliquei[client])
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Ver Resultado Final");
		}
		else
		{
			Painel.DrawText("5. Ver Resultado Final");
		}
		if (eusouvip(client, l_tipodevip[SPONSOR]) && !eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor");
			char repor_oq[128];
			if (a_geral[client] || a_tag[client] || a_nome[client] || a_chat[client])
			{
				SetPanelCurrentKey(Painel, 7);
				Format(repor_oq, sizeof(repor_oq), "Repor Cor Original\n \n");
				Painel.DrawItem(repor_oq);
			}
			else
			{
				Painel.DrawText("7. Repor Cor Original\n \n");
			}
		}
		if (eusouvip(client, l_tipodevip[STAFF]))
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Escolher outra cor\n \n");
		}
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Voltar para o Inicio");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Decisao_Final_Sponsor_LIG, MENU_TIME_FOREVER);
		return;
	}
	SetPanelCurrentKey(Painel, 1);
	Painel.DrawItem("Aplicar no Geral");
	if (StrEqual(SPONSOR_Cor_Selecionada[client], "Arco Iris") || StrEqual(SPONSOR_Cor_Selecionada[client], "Aleatórias"))
	{
		Painel.DrawText("2. Aplicar na Tag");
		Painel.DrawText("3. Aplicar no Nome");
	}
	else
	{
		SetPanelCurrentKey(Painel, 2);
		Painel.DrawItem("Aplicar na Tag");
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawItem("Aplicar no Nome");
	}
	SetPanelCurrentKey(Painel, 4);
	Painel.DrawItem("Aplicar no Chat");
	if (SPONSOR_Ja_Apliquei[client])
	{
		SetPanelCurrentKey(Painel, 5);
		Painel.DrawItem("Ver Resultado Final");
	}
	else
	{
		Painel.DrawText("5. Ver Resultado Final");
	}
	if (eusouvip(client, l_tipodevip[SPONSOR]) && !eusouvip(client, l_tipodevip[STAFF]))
	{
		SetPanelCurrentKey(Painel, 6);
		Painel.DrawItem("Escolher outra cor");
		char repor_oq[128];
		if (a_geral[client] || a_tag[client] || a_nome[client] || a_chat[client])
		{
			SetPanelCurrentKey(Painel, 7);
			Format(repor_oq, sizeof(repor_oq), "Repor Cor Original\n \n");
			Painel.DrawItem(repor_oq);
		}
		else
		{
			Painel.DrawText("7. Repor Cor Original\n \n");
		}
	}
	if (eusouvip(client, l_tipodevip[STAFF]))
	{
		SetPanelCurrentKey(Painel, 6);
		Painel.DrawItem("Escolher outra cor\n \n");
	}
	SetPanelCurrentKey(Painel, 8);
	Painel.DrawItem("Voltar para o Inicio");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Decisao_Final_Sponsor_LIG, MENU_TIME_FOREVER);
}

public int Decisao_Final_Sponsor_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		char html_buscarv5[900];
		char buscar_buscar_cor[128], buscar_buscar_cor_Tag[128], COR_TAGs_TST[128], COR_NOMEs_TST[128], COR_CHATs_TST[128];
		char cor_tag_test[MAXPLAYERS + 1][128], cor_nome_test[MAXPLAYERS + 1][128], cor_chat_test[MAXPLAYERS + 1][128];
		char cor_tag_NRGB_test[128], cor_nome_NRGB_test[128], cor_chat_NRGB_test[128];
		char cor_tag_Hex[128], cor_nome_Hex[128], cor_chat_Hex[128], Nome[128];
		GetClientCookie(client, COR_TAG, COR_TAGs_TST, sizeof(COR_TAGs_TST));
		GetClientCookie(client, COR_NOME, COR_NOMEs_TST, sizeof(COR_NOMEs_TST));
		GetClientCookie(client, COR_CHAT, COR_CHATs_TST, sizeof(COR_CHATs_TST));
		GetClientCookie(client, COR_NOME_M, cor_nome_NRGB_test, sizeof(cor_nome_NRGB_test));
		GetClientCookie(client, COR_TAG_M, cor_tag_NRGB_test, sizeof(cor_tag_NRGB_test));
		GetClientCookie(client, COR_CHAT_M, cor_chat_NRGB_test, sizeof(cor_chat_NRGB_test));
		GetClientName(client, Nome, sizeof(Nome));
		cor_tag_test[client] = COR_TAGs_TST;
		cor_nome_test[client] = COR_NOMEs_TST;
		cor_chat_test[client] = COR_CHATs_TST;
		if (StrEqual(COR_TAGs_TST, ""))
		{
			HexTags_GetClientTag(client, ChatTag, cor_tag_Hex, sizeof(cor_tag_Hex));
			cor_tag_test[client] = cor_tag_Hex;
		}
		if (StrEqual(COR_NOMEs_TST, ""))
		{
			HexTags_GetClientTag(client, NameColor, cor_nome_Hex, sizeof(cor_nome_Hex));
			cor_nome_test[client] = cor_nome_Hex;
		}
		if (StrEqual(COR_CHATs_TST, ""))
		{
			HexTags_GetClientTag(client, ChatColor, cor_chat_Hex, sizeof(cor_chat_Hex));
			cor_chat_test[client] = cor_chat_Hex;
		}
		
		if (StrEqual(SPONSOR_Cor_Selecionada[client], "Vermelho Claro"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{lightred}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{lightred}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#F73A3A' class='fontSize-xl'>Vermelho Claro</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Vermelho"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{red}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{red}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#FF0000' class='fontSize-xl'>Vermelho</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Vermelho Escuro"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{darkred}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{darkred}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#B50303' class='fontSize-xl'>Vermelho Escuro</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Normal"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{default}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{default}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#FFFFFF' class='fontSize-xl'>Normal</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Azul Claro"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{bluegrey}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{bluegrey}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#93C4DE' class='fontSize-xl'>Azul Claro</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Azul"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{blue}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{blue}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#00A6FC' class='fontSize-xl'>Azul</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Azul Escuro"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{darkblue}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{darkblue}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#0320FB' class='fontSize-xl'>Azul Escuro</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Roxo"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{purple}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{purple}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#8F03FB' class='fontSize-xl'>Roxo</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Violeta"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{orchid}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{orchid}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#ED03FB' class='fontSize-xl'>Violeta</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Amarelo"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{yellow}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{yellow}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#E1FB03' class='fontSize-xl'>Amarelo</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Dourado"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{gold}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{gold}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#F4CC05' class='fontSize-xl'>Dourado</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Verde Claro"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{lightgreen}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{lightgreen}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#90FB67' class='fontSize-xl'>Verde Claro</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Verde"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{green}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{green}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#47FF00' class='fontSize-xl'>Verde</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Lima"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{lime}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{lime}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#75FF00' class='fontSize-xl'>Lima</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Cinza Claro"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{grey}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{grey}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#E0E0E0' class='fontSize-xl'>Cinza Claro</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Cinza Escuro"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{grey2}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{grey2}");
			Format(html_buscarv5, sizeof(html_buscarv5), "<font color='#8E8E8E' class='fontSize-xl'>Cinza Escuro</font>");
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Arco Iris"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{rainbow}Sponsor {default}| ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{rainbow}");
			
		}
		else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Aleatórias"))
		{
			Format(buscar_buscar_cor_Tag, sizeof(buscar_buscar_cor_Tag), "{random}Sponsor | ");
			Format(buscar_buscar_cor, sizeof(buscar_buscar_cor), "{random}");
		}
		
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 1:
				{
					SetClientCookie(client, Cor1_G_TAG, "");
					SetClientCookie(client, Cor2_G_TAG, "");
					SetClientCookie(client, Cor3_G_TAG, "");
					SetClientCookie(client, Cor4_G_TAG, "");
					SetClientCookie(client, Cor5_G_TAG, "");
					SetClientCookie(client, Cor6_G_TAG, "");
					SetClientCookie(client, Cor7_G_TAG, "");
					SetClientCookie(client, Cor8_G_TAG, "");
					SetClientCookie(client, Cor9_G_TAG, "");
					SetClientCookie(client, Cor10_G_TAG, "");
					SetClientCookie(client, Numero_Cores_G_TAG, "");
					SetClientCookie(client, Tipo_Sequencia_G_TAG, "");
					SetClientCookie(client, Cor1_G_Nome, "");
					SetClientCookie(client, Cor2_G_Nome, "");
					SetClientCookie(client, Cor3_G_Nome, "");
					SetClientCookie(client, Cor4_G_Nome, "");
					SetClientCookie(client, Cor5_G_Nome, "");
					SetClientCookie(client, Cor6_G_Nome, "");
					SetClientCookie(client, Cor7_G_Nome, "");
					SetClientCookie(client, Cor8_G_Nome, "");
					SetClientCookie(client, Cor9_G_Nome, "");
					SetClientCookie(client, Cor10_G_Nome, "");
					SetClientCookie(client, Numero_Cores_G_Nome, "");
					SetClientCookie(client, Tipo_Sequencia_G_Nome, "");
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
					SetClientCookie(client, Cores_RGB_tag, "0");
					SetClientCookie(client, Cores_RGB_nome, "0");
					SetClientCookie(client, Cores_RGB_chat, "0");
					if (StrEqual(SPONSOR_Cor_Selecionada[client], "Gradiente Liniar"))
					{
						SetClientCookie(client, COR_TAG_GG, "Gradiente Liniar");
						SetClientCookie(client, COR_NOME_GG, "Gradiente Liniar");
						SetClientCookie(client, COR_CHAT_GG, "Gradiente Liniar");
						SetClientCookie(client, COR_TAG, "");
						SetClientCookie(client, COR_NOME, "");
						SetClientCookie(client, COR_CHAT, "");
						SetClientCookie(client, COR_TAG_M, SPONSOR_Cor_Selecionada[client]);
						SetClientCookie(client, COR_NOME_M, SPONSOR_Cor_Selecionada[client]);
						SetClientCookie(client, COR_CHAT_M, SPONSOR_Cor_Selecionada[client]);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Fade"))
					{
						SetClientCookie(client, COR_TAG_GG, "Fade");
						SetClientCookie(client, COR_NOME_GG, "Fade");
						SetClientCookie(client, COR_CHAT_GG, "Fade");
						SetClientCookie(client, COR_TAG, "");
						SetClientCookie(client, COR_NOME, "");
						SetClientCookie(client, COR_CHAT, "");
						SetClientCookie(client, COR_TAG_M, SPONSOR_Cor_Selecionada[client]);
						SetClientCookie(client, COR_NOME_M, SPONSOR_Cor_Selecionada[client]);
						SetClientCookie(client, COR_CHAT_M, SPONSOR_Cor_Selecionada[client]);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "LGBT"))
					{
						SetClientCookie(client, COR_TAG_GG, "LGBT");
						SetClientCookie(client, COR_NOME_GG, "LGBT");
						SetClientCookie(client, COR_CHAT_GG, "LGBT");
						SetClientCookie(client, COR_TAG, "");
						SetClientCookie(client, COR_NOME, "");
						SetClientCookie(client, COR_CHAT, "");
						SetClientCookie(client, COR_TAG_M, SPONSOR_Cor_Selecionada[client]);
						SetClientCookie(client, COR_NOME_M, SPONSOR_Cor_Selecionada[client]);
						SetClientCookie(client, COR_CHAT_M, SPONSOR_Cor_Selecionada[client]);
					}
					else
					{
						if (StrEqual(SPONSOR_Cor_Selecionada[client], "Arco Iris") || StrEqual(SPONSOR_Cor_Selecionada[client], "Aleatórias"))
						{
							HexTags_SetClientTag(client, ChatColor, buscar_buscar_cor);
							SetClientCookie(client, COR_CHAT, buscar_buscar_cor);
							SetClientCookie(client, COR_CHAT_M, SPONSOR_Cor_Selecionada[client]);
						}
						else
						{
							HexTags_SetClientTag(client, ChatTag, buscar_buscar_cor_Tag);
							HexTags_SetClientTag(client, NameColor, buscar_buscar_cor);
							HexTags_SetClientTag(client, ChatColor, buscar_buscar_cor);
							SetClientCookie(client, COR_TAG, buscar_buscar_cor_Tag);
							SetClientCookie(client, COR_NOME, buscar_buscar_cor);
							SetClientCookie(client, COR_CHAT, buscar_buscar_cor);
							SetClientCookie(client, COR_TAG_M, SPONSOR_Cor_Selecionada[client]);
							SetClientCookie(client, COR_NOME_M, SPONSOR_Cor_Selecionada[client]);
							SetClientCookie(client, COR_CHAT_M, SPONSOR_Cor_Selecionada[client]);
						}
					}
					a_geral[client] = true;
					a_tag[client] = true;
					a_nome[client] = true;
					a_chat[client] = true;
					SPONSOR_Ja_Apliquei[client] = true;
					char aplicao_corv4[600];
					if (StrEqual(SPONSOR_Cor_Selecionada[client], "Verde Claro") || StrEqual(SPONSOR_Cor_Selecionada[client], "Lima") || StrEqual(SPONSOR_Cor_Selecionada[client], "Lima"))
					{
						
						Format(aplicao_corv4, sizeof(aplicao_corv4), "		%s</br><font color='#981BE3' class='fontSize-xl'>APLICADA COM SUCESSO</font>", html_buscarv5);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "LGBT") || StrEqual(SPONSOR_Cor_Selecionada[client], "Aleatórias") || StrEqual(SPONSOR_Cor_Selecionada[client], "Gradiente Liniar") || StrEqual(SPONSOR_Cor_Selecionada[client], "Arco Iris"))
					{
						Format(aplicao_corv4, sizeof(aplicao_corv4), "<font color='#00EB42' class='fontSize-xl'>APLICAÇÃO FEITA COM SUCESSO</font>");
					}
					else
					{
						Format(aplicao_corv4, sizeof(aplicao_corv4), "		%s<br><font color='#00EB42' class='fontSize-xl'>APLICADA COM SUCESSO</font>", html_buscarv5);
					}
					PrintHintText(client, aplicao_corv4);
					Decisao_Final_Sponsor_MENU(client);
				}
				case 2:
				{
					SetClientCookie(client, Cor1_G_TAG, "");
					SetClientCookie(client, Cor2_G_TAG, "");
					SetClientCookie(client, Cor3_G_TAG, "");
					SetClientCookie(client, Cor4_G_TAG, "");
					SetClientCookie(client, Cor5_G_TAG, "");
					SetClientCookie(client, Cor6_G_TAG, "");
					SetClientCookie(client, Cor7_G_TAG, "");
					SetClientCookie(client, Cor8_G_TAG, "");
					SetClientCookie(client, Cor9_G_TAG, "");
					SetClientCookie(client, Cor10_G_TAG, "");
					SetClientCookie(client, Numero_Cores_G_TAG, "");
					SetClientCookie(client, Tipo_Sequencia_G_TAG, "");
					SetClientCookie(client, Cores_RGB_tag, "0");
					if (StrEqual(SPONSOR_Cor_Selecionada[client], "Gradiente Liniar"))
					{
						SetClientCookie(client, COR_TAG_GG, "Gradiente Liniar");
						SetClientCookie(client, COR_TAG, "");
						SetClientCookie(client, COR_TAG_M, SPONSOR_Cor_Selecionada[client]);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Fade"))
					{
						SetClientCookie(client, COR_TAG_GG, "Fade");
						SetClientCookie(client, COR_TAG, "");
						SetClientCookie(client, COR_TAG_M, SPONSOR_Cor_Selecionada[client]);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "LGBT"))
					{
						SetClientCookie(client, COR_TAG_GG, "LGBT");
						SetClientCookie(client, COR_TAG, "");
						SetClientCookie(client, COR_TAG_M, SPONSOR_Cor_Selecionada[client]);
					}
					else
					{
						if (!StrEqual(SPONSOR_Cor_Selecionada[client], "Arco Iris") || !StrEqual(SPONSOR_Cor_Selecionada[client], "Aleatórias"))
						{
							HexTags_SetClientTag(client, ChatTag, buscar_buscar_cor_Tag);
							SetClientCookie(client, COR_TAG_M, SPONSOR_Cor_Selecionada[client]);
							SetClientCookie(client, COR_TAG, buscar_buscar_cor_Tag);
						}
					}
					a_tag[client] = true;
					SPONSOR_Ja_Apliquei[client] = true;
					char aplicao_corv4[600];
					if (StrEqual(SPONSOR_Cor_Selecionada[client], "Verde Claro") || StrEqual(SPONSOR_Cor_Selecionada[client], "Lima") || StrEqual(SPONSOR_Cor_Selecionada[client], "Lima"))
					{
						
						Format(aplicao_corv4, sizeof(aplicao_corv4), "		%s</br><font color='#981BE3' class='fontSize-xl'>APLICADA COM SUCESSO</font>", html_buscarv5);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "LGBT") || StrEqual(SPONSOR_Cor_Selecionada[client], "Aleatórias") || StrEqual(SPONSOR_Cor_Selecionada[client], "Gradiente Liniar") || StrEqual(SPONSOR_Cor_Selecionada[client], "Arco Iris"))
					{
						Format(aplicao_corv4, sizeof(aplicao_corv4), "<font color='#00EB42' class='fontSize-xl'>APLICAÇÃO FEITA COM SUCESSO</font>");
					}
					else
					{
						Format(aplicao_corv4, sizeof(aplicao_corv4), "		%s<br><font color='#00EB42' class='fontSize-xl'>APLICADA COM SUCESSO</font>", html_buscarv5);
					}
					PrintHintText(client, aplicao_corv4);
					Decisao_Final_Sponsor_MENU(client);
				}
				case 3:
				{
					SetClientCookie(client, Cor1_G_Nome, "");
					SetClientCookie(client, Cor2_G_Nome, "");
					SetClientCookie(client, Cor3_G_Nome, "");
					SetClientCookie(client, Cor4_G_Nome, "");
					SetClientCookie(client, Cor5_G_Nome, "");
					SetClientCookie(client, Cor6_G_Nome, "");
					SetClientCookie(client, Cor7_G_Nome, "");
					SetClientCookie(client, Cor8_G_Nome, "");
					SetClientCookie(client, Cor9_G_Nome, "");
					SetClientCookie(client, Cor10_G_Nome, "");
					SetClientCookie(client, Numero_Cores_G_Nome, "");
					SetClientCookie(client, Tipo_Sequencia_G_Nome, "");
					SetClientCookie(client, Cores_RGB_nome, "0");
					if (StrEqual(SPONSOR_Cor_Selecionada[client], "Gradiente Liniar"))
					{
						SetClientCookie(client, COR_NOME_GG, "Gradiente Liniar");
						SetClientCookie(client, COR_NOME, "");
						SetClientCookie(client, COR_NOME_M, SPONSOR_Cor_Selecionada[client]);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Fade"))
					{
						SetClientCookie(client, COR_NOME_GG, "Fade");
						SetClientCookie(client, COR_NOME, "");
						SetClientCookie(client, COR_NOME_M, SPONSOR_Cor_Selecionada[client]);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "LGBT"))
					{
						SetClientCookie(client, COR_NOME_GG, "LGBT");
						SetClientCookie(client, COR_NOME, "");
						SetClientCookie(client, COR_NOME_M, SPONSOR_Cor_Selecionada[client]);
					}
					else
					{
						SetClientCookie(client, COR_NOME_GG, "");
						HexTags_SetClientTag(client, NameColor, buscar_buscar_cor);
						SetClientCookie(client, COR_NOME_M, SPONSOR_Cor_Selecionada[client]);
						SetClientCookie(client, COR_NOME, buscar_buscar_cor);
					}
					a_nome[client] = true;
					SPONSOR_Ja_Apliquei[client] = true;
					Decisao_Final_Sponsor_MENU(client);
				}
				case 4:
				{
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
					if (StrEqual(SPONSOR_Cor_Selecionada[client], "Gradiente Liniar"))
					{
						SetClientCookie(client, COR_CHAT_GG, "Gradiente Liniar");
						SetClientCookie(client, COR_CHAT, "");
						SetClientCookie(client, COR_CHAT_M, SPONSOR_Cor_Selecionada[client]);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "Fade"))
					{
						SetClientCookie(client, COR_CHAT_GG, "Fade");
						SetClientCookie(client, COR_CHAT, "");
						SetClientCookie(client, COR_CHAT_M, SPONSOR_Cor_Selecionada[client]);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "LGBT"))
					{
						SetClientCookie(client, COR_CHAT_GG, "LGBT");
						SetClientCookie(client, COR_CHAT, "");
						SetClientCookie(client, COR_CHAT_M, SPONSOR_Cor_Selecionada[client]);
					}
					else
					{
						SetClientCookie(client, COR_CHAT_GG, "");
						HexTags_SetClientTag(client, ChatColor, buscar_buscar_cor);
						SetClientCookie(client, COR_CHAT_M, SPONSOR_Cor_Selecionada[client]);
						SetClientCookie(client, COR_CHAT, buscar_buscar_cor);
					}
					a_chat[client] = true;
					SPONSOR_Ja_Apliquei[client] = true;
					char aplicao_corv4[600];
					if (StrEqual(SPONSOR_Cor_Selecionada[client], "Verde Claro") || StrEqual(SPONSOR_Cor_Selecionada[client], "Lima") || StrEqual(SPONSOR_Cor_Selecionada[client], "Lima"))
					{
						
						Format(aplicao_corv4, sizeof(aplicao_corv4), "		%s</br><font color='#981BE3' class='fontSize-xl'>APLICADA COM SUCESSO</font>", html_buscarv5);
					}
					else if (StrEqual(SPONSOR_Cor_Selecionada[client], "LGBT") || StrEqual(SPONSOR_Cor_Selecionada[client], "Aleatórias") || StrEqual(SPONSOR_Cor_Selecionada[client], "Gradiente Liniar") || StrEqual(SPONSOR_Cor_Selecionada[client], "Arco Iris"))
					{
						Format(aplicao_corv4, sizeof(aplicao_corv4), "<font color='#00EB42' class='fontSize-xl'>APLICAÇÃO FEITA COM SUCESSO</font>");
					}
					else
					{
						Format(aplicao_corv4, sizeof(aplicao_corv4), "		%s<br><font color='#00EB42' class='fontSize-xl'>APLICADA COM SUCESSO</font>", html_buscarv5);
					}
					PrintHintText(client, aplicao_corv4);
					Decisao_Final_Sponsor_MENU(client);
				}
				case 5:
				{
					// LAST FIGHT
					char buffalo_tag[128], buffalo_Nome[124];
					HexTags_GetClientTag(client, ChatTag, buffalo_tag, sizeof(buffalo_tag));
					HexTags_GetClientTag(client, NameColor, buffalo_Nome, sizeof(buffalo_Nome));
					char mensagem_final_tag[MAXLENGTH_MESSAGE], mensagem_final_nome[MAXLENGTH_MESSAGE], mensagem_final_chat[MAXLENGTH_MESSAGE];
					mensagem_final_tag = buffalo_tag;
					char nomesdef[128];
					char rgb_parte_tag[32], rgb_parte_nome[32], rgb_parte_chat[32];
					GetClientCookie(client, Cores_RGB_tag, rgb_parte_tag, sizeof(rgb_parte_tag));
					GetClientCookie(client, Cores_RGB_nome, rgb_parte_nome, sizeof(rgb_parte_nome));
					GetClientCookie(client, Cores_RGB_chat, rgb_parte_chat, sizeof(rgb_parte_chat));
					GetClientName(client, nomesdef, sizeof(nomesdef));
					Format(mensagem_final_chat, sizeof(mensagem_final_chat), "%s teste das novas cores selecionadas", cor_chat_test[client]);
					Format(mensagem_final_nome, sizeof(mensagem_final_nome), "%s%s", buffalo_Nome, nomesdef);
					if (StrEqual(cor_tag_test[client], "{rainbow}"))
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_tag, sizeof(mensagem_final_tag), "%s {default}| ", Mensagem_Temporaria);
					}
					if (StrEqual(cor_nome_test[client], "{rainbow}"))
					{
						char nome_part[MAXLENGTH_NAME];
						GetClientName(client, nome_part, sizeof(nome_part));
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = nome_part;
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_nome, sizeof(mensagem_final_nome), "%s", Mensagem_Temporaria);
					}
					if (StrEqual(cor_chat_test[client], "{rainbow}"))
					{
						char nome_part[MAXLENGTH_NAME];
						GetClientName(client, nome_part, sizeof(nome_part));
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "teste das novas cores selecionadas";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_chat, sizeof(mensagem_final_chat), "%s", Mensagem_Temporaria);
					}
					//--------------//
					if (StrEqual(cor_tag_test[client], "{random}"))
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Aleatorias(), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final_tag, sizeof(mensagem_final_tag), "%s {default}| ", Mensagem_Temporaria);
					}
					if (StrEqual(cor_nome_test[client], "{random}"))
					{
						char nome_part[MAXLENGTH_NAME];
						GetClientName(client, nome_part, sizeof(nome_part));
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = nome_part;
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Aleatorias(), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final_nome, sizeof(mensagem_final_nome), "%s", Mensagem_Temporaria);
					}
					if (StrEqual(cor_chat_test[client], "{random}"))
					{
						char nome_part[MAXLENGTH_NAME];
						GetClientName(client, nome_part, sizeof(nome_part));
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "teste das novas cores selecionadas";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
							Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Aleatorias(), c);
							if (IsCharMB(Modificar[i]))
								i += bites - 2;
						}
						Format(mensagem_final_chat, sizeof(mensagem_final_chat), "%s", Mensagem_Temporaria);
					}
					//////////////--------------------- Gradiente Liniar ---------------------//////////////
					if (StrEqual(cor_tag_NRGB_test, "Gradiente Liniar"))
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_tag, sizeof(mensagem_final_tag), "%s {default}| ", Mensagem_Temporaria);
					}
					if (StrEqual(cor_nome_NRGB_test, "Gradiente Liniar"))
					{
						char nome_part[MAXLENGTH_NAME];
						GetClientName(client, nome_part, sizeof(nome_part));
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = nome_part;
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_nome, sizeof(mensagem_final_nome), "%s", Mensagem_Temporaria);
					}
					if (StrEqual(cor_chat_NRGB_test, "Gradiente Liniar"))
					{
						char nome_part[MAXLENGTH_NAME];
						GetClientName(client, nome_part, sizeof(nome_part));
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "teste das novas cores selecionadas";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_chat, sizeof(mensagem_final_chat), "%s", Mensagem_Temporaria);
					}
					//////////////---------------------Fade ---------------------//////////////
					if (StrEqual(cor_tag_NRGB_test, "Fade"))
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_tag, sizeof(mensagem_final_tag), "%s {default}| ", Mensagem_Temporaria);
					}
					if (StrEqual(cor_nome_NRGB_test, "Fade"))
					{
						char nome_part[MAXLENGTH_NAME];
						GetClientName(client, nome_part, sizeof(nome_part));
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = nome_part;
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_nome, sizeof(mensagem_final_nome), "%s", Mensagem_Temporaria);
					}
					if (StrEqual(cor_chat_NRGB_test, "Fade"))
					{
						char nome_part[MAXLENGTH_NAME];
						GetClientName(client, nome_part, sizeof(nome_part));
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "teste das novas cores selecionadas";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_chat, sizeof(mensagem_final_chat), "%s", Mensagem_Temporaria);
					}
					//////////////---------------------LGBT ---------------------//////////////
					if (StrEqual(cor_tag_NRGB_test, "LGBT"))
					{
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Sponsor";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_tag, sizeof(mensagem_final_tag), "%s {default}| ", Mensagem_Temporaria);
					}
					if (StrEqual(cor_nome_NRGB_test, "LGBT"))
					{
						char nome_part[MAXLENGTH_NAME];
						GetClientName(client, nome_part, sizeof(nome_part));
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = nome_part;
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_nome, sizeof(mensagem_final_nome), "%s", Mensagem_Temporaria);
					}
					if (StrEqual(cor_chat_NRGB_test, "LGBT"))
					{
						char nome_part[MAXLENGTH_NAME];
						GetClientName(client, nome_part, sizeof(nome_part));
						char Modificar[MAXLENGTH_MESSAGE];
						Modificar = "Ola tou testar as minhas novas cores";
						char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
						Format(mensagem_final_chat, sizeof(mensagem_final_chat), "%s", Mensagem_Temporaria);
					}
					////////////////////////////////////////////////////////////
					if (StrEqual(rgb_parte_tag, "1") || StrEqual(rgb_parte_nome, "1") || StrEqual(rgb_parte_chat, "1"))
					{
						if (StrEqual(rgb_parte_tag, "1"))
						{
							char pegar_sequencia_ck[MAXPLAYERS + 1][32];
							int R_sequencia[MAXPLAYERS + 1];
							GetClientCookie(client, Tipo_Sequencia_G_TAG, pegar_sequencia_ck[client], sizeof(pegar_sequencia_ck[]));
							R_sequencia[client] = StringToInt(pegar_sequencia_ck[client]);
							int cor;
							char Modificar[MAXLENGTH_MESSAGE];
							Modificar = "Sponsor";
							char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
								if (R_sequencia[client] == 1)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Respeitam_Sequencia_TAG(client, ++cor), c);
								}
								if (R_sequencia[client] == 2)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Aleatorias_TAG(client), c);
								}
								if (R_sequencia[client] == 3)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Subindo_Sequencia_TAG(client, ++cor), c);
								}
								if (R_sequencia[client] == 4)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Descendo_Sequencia_TAG(client, ++cor), c);
									
								}
								if (IsCharMB(Modificar[i]))
									i += bites - 2;
							}
							Format(mensagem_final_tag, sizeof(mensagem_final_tag), "%s {default}| ", Mensagem_Temporaria);
							
							
						}
						
						if (StrEqual(rgb_parte_nome, "1"))
						{
							char pegar_sequencia_ck[MAXPLAYERS + 1][32];
							int R_sequencia[MAXPLAYERS + 1];
							GetClientCookie(client, Tipo_Sequencia_G_Nome, pegar_sequencia_ck[client], sizeof(pegar_sequencia_ck[]));
							R_sequencia[client] = StringToInt(pegar_sequencia_ck[client]);
							int cor;
							char nome_part[MAXLENGTH_NAME];
							GetClientName(client, nome_part, sizeof(nome_part));
							char Modificar[MAXLENGTH_MESSAGE];
							Modificar = nome_part;
							char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
								if (R_sequencia[client] == 1)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Respeitam_Sequencia_Nome(client, ++cor), c);
								}
								if (R_sequencia[client] == 2)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Aleatorias_Nome(client), c);
								}
								if (R_sequencia[client] == 3)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Subindo_Sequencia_Nome(client, ++cor), c);
								}
								if (R_sequencia[client] == 4)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Descendo_Sequencia_Nome(client, ++cor), c);
								}
								if (IsCharMB(Modificar[i]))
									i += bites - 2;
							}
							Format(mensagem_final_nome, sizeof(mensagem_final_nome), "%s", Mensagem_Temporaria);
						}
						if (StrEqual(rgb_parte_chat, "1"))
						{
							char pegar_sequencia_ck[MAXPLAYERS + 1][32];
							int R_sequencia[MAXPLAYERS + 1];
							GetClientCookie(client, Tipo_Sequencia_G_CHAT, pegar_sequencia_ck[client], sizeof(pegar_sequencia_ck[]));
							R_sequencia[client] = StringToInt(pegar_sequencia_ck[client]);
							int cor;
							char nome_part[MAXLENGTH_NAME];
							GetClientName(client, nome_part, sizeof(nome_part));
							char Modificar[MAXLENGTH_MESSAGE];
							Modificar = "Ola tou testar as minhas novas cores :=)";
							char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
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
								if (R_sequencia[client] == 1)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Respeitam_Sequencia_CHAT(client, ++cor), c);
								}
								if (R_sequencia[client] == 2)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Aleatorias_CHAT(client), c);
								}
								if (R_sequencia[client] == 3)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Subindo_Sequencia_CHAT(client, ++cor), c);
								}
								if (R_sequencia[client] == 4)
								{
									Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, Cores_Descendo_Sequencia_CHAT(client, ++cor), c);
								}
								if (IsCharMB(Modificar[i]))
									i += bites - 2;
							}
							Format(mensagem_final_chat, sizeof(mensagem_final_chat), "%s", Mensagem_Temporaria);
						}
					}
					/////
					
					CPrintToChat(client, "%s%s{orchid} ➠{default}%s", mensagem_final_tag, mensagem_final_nome, mensagem_final_chat);
					Decisao_Final_Sponsor_MENU(client);
					////////////////////////////
				}
				case 6:
				{
					SPONSOR_escolher_nova_cor[client] = true;
					CORs_SPONSOR_TAGS_MENU(client, Posicao_Escolhida_1SPONSOR[client]);
				}
				case 7:
				{
					Repor_Desc_Menu(client);
				}
				case 8:
				{
					a_geral[client] = false;
					a_tag[client] = false;
					a_nome[client] = false;
					a_chat[client] = false;
					SPONSOR_Ja_Apliquei[client] = false;
					SPONSOR_Cor_Selecionada[client] = "";
					TAGS_MENU(client);
				}
				case 9:
				{
					a_geral[client] = false;
					a_tag[client] = false;
					a_nome[client] = false;
					a_chat[client] = false;
					SPONSOR_Ja_Apliquei[client] = false;
					SPONSOR_Cor_Selecionada[client] = "";
					delete menu;
				}
			}
		}
		else if (action == MenuAction_End)
		{
			delete menu;
		}
	}
	return 0;
}


//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Repor Menu Vindo Da Decisao de Sponsor ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
public void Repor_Desc_Menu(int client)
{
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - Cores\n \n");
	if (a_geral[client] || a_tag[client] || a_nome[client] || a_chat[client])
	{
		if (a_geral[client])
		{
			SetPanelCurrentKey(Painel, 3);
			Painel.DrawItem("Repor Tudo");
		}
		else
		{
			Painel.DrawText("1. Repor Tudo");
		}
		if (a_tag[client])
		{
			SetPanelCurrentKey(Painel, 4);
			Painel.DrawItem("Repor Tag");
		}
		else
		{
			Painel.DrawText("1. Repor Tag");
		}
		if (a_nome[client])
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Repor Nome");
		}
		else
		{
			Painel.DrawText("1. Repor Nome");
		}
		if (a_chat[client])
		{
			SetPanelCurrentKey(Painel, 6);
			Painel.DrawItem("Repor Chat\n \n");
		}
		else
		{
			Painel.DrawText("1. Repor Chat\n \n");
		}
	}
	
	
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Repor_Desc_LIG, MENU_TIME_FOREVER);
}

public int Repor_Desc_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					HexTags_SetClientTag(client, ChatTag, "{gold}Sponsor {default}| ");
					HexTags_SetClientTag(client, NameColor, "{yellow}");
					HexTags_SetClientTag(client, ChatColor, "{gold}");
					SetClientCookie(client, COR_TAG_M, "Predefinida");
					SetClientCookie(client, COR_TAG_GG, "");
					SetClientCookie(client, COR_TAG, "");
					SetClientCookie(client, COR_NOME_GG, "");
					SetClientCookie(client, COR_NOME, "");
					SetClientCookie(client, COR_NOME_M, "Predefinida");
					SetClientCookie(client, COR_CHAT_GG, "");
					SetClientCookie(client, COR_CHAT, "");
					SetClientCookie(client, COR_CHAT_M, "Predefinida");
					SetClientCookie(client, Cor1_G_TAG, "");
					SetClientCookie(client, Cor2_G_TAG, "");
					SetClientCookie(client, Cor3_G_TAG, "");
					SetClientCookie(client, Cor4_G_TAG, "");
					SetClientCookie(client, Cor5_G_TAG, "");
					SetClientCookie(client, Cor6_G_TAG, "");
					SetClientCookie(client, Cor7_G_TAG, "");
					SetClientCookie(client, Cor8_G_TAG, "");
					SetClientCookie(client, Cor9_G_TAG, "");
					SetClientCookie(client, Cor10_G_TAG, "");
					SetClientCookie(client, Numero_Cores_G_TAG, "");
					SetClientCookie(client, Tipo_Sequencia_G_TAG, "");
					SetClientCookie(client, Cor1_G_Nome, "");
					SetClientCookie(client, Cor2_G_Nome, "");
					SetClientCookie(client, Cor3_G_Nome, "");
					SetClientCookie(client, Cor4_G_Nome, "");
					SetClientCookie(client, Cor5_G_Nome, "");
					SetClientCookie(client, Cor6_G_Nome, "");
					SetClientCookie(client, Cor7_G_Nome, "");
					SetClientCookie(client, Cor8_G_Nome, "");
					SetClientCookie(client, Cor9_G_Nome, "");
					SetClientCookie(client, Cor10_G_Nome, "");
					SetClientCookie(client, Numero_Cores_G_Nome, "");
					SetClientCookie(client, Tipo_Sequencia_G_Nome, "");
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
					SetClientCookie(client, Cores_RGB_tag, "0");
					SetClientCookie(client, Cores_RGB_nome, "0");
					SetClientCookie(client, Cores_RGB_chat, "0");
					SPONSOR_Cor_Selecionada[client] = "Predefinida";
					SPONSOR_Ja_Apliquei[client] = true;
					a_geral[client] = false;
					a_tag[client] = false;
					a_nome[client] = false;
					a_chat[client] = false;
					Decisao_Final_Sponsor_MENU(client);
				}
				case 4:
				{
					HexTags_SetClientTag(client, ChatTag, "{gold}Sponsor {default}| ");
					SetClientCookie(client, COR_TAG_M, "Predefinida");
					SetClientCookie(client, COR_TAG_GG, "");
					SetClientCookie(client, COR_TAG, "");
					SetClientCookie(client, Cor1_G_TAG, "");
					SetClientCookie(client, Cor2_G_TAG, "");
					SetClientCookie(client, Cor3_G_TAG, "");
					SetClientCookie(client, Cor4_G_TAG, "");
					SetClientCookie(client, Cor5_G_TAG, "");
					SetClientCookie(client, Cor6_G_TAG, "");
					SetClientCookie(client, Cor7_G_TAG, "");
					SetClientCookie(client, Cor8_G_TAG, "");
					SetClientCookie(client, Cor9_G_TAG, "");
					SetClientCookie(client, Cor10_G_TAG, "");
					SetClientCookie(client, Numero_Cores_G_TAG, "");
					SetClientCookie(client, Tipo_Sequencia_G_TAG, "");
					SetClientCookie(client, Cores_RGB_tag, "0");
					SPONSOR_Ja_Apliquei[client] = true;
					a_tag[client] = false;
					Decisao_Final_Sponsor_MENU(client);
				}
				case 5:
				{
					HexTags_SetClientTag(client, NameColor, "{yellow}");
					SetClientCookie(client, COR_NOME_GG, "");
					SetClientCookie(client, COR_NOME, "");
					SetClientCookie(client, COR_NOME_M, "Predefinida");
					SetClientCookie(client, Cor1_G_Nome, "");
					SetClientCookie(client, Cor2_G_Nome, "");
					SetClientCookie(client, Cor3_G_Nome, "");
					SetClientCookie(client, Cor4_G_Nome, "");
					SetClientCookie(client, Cor5_G_Nome, "");
					SetClientCookie(client, Cor6_G_Nome, "");
					SetClientCookie(client, Cor7_G_Nome, "");
					SetClientCookie(client, Cor8_G_Nome, "");
					SetClientCookie(client, Cor9_G_Nome, "");
					SetClientCookie(client, Cor10_G_Nome, "");
					SetClientCookie(client, Numero_Cores_G_Nome, "");
					SetClientCookie(client, Tipo_Sequencia_G_Nome, "");
					SetClientCookie(client, Cores_RGB_nome, "0");
					HexTags_ResetClientTag(client);
					SPONSOR_Ja_Apliquei[client] = true;
					a_nome[client] = false;
					Decisao_Final_Sponsor_MENU(client);
				}
				case 6:
				{
					HexTags_SetClientTag(client, ChatColor, "{gold}");
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
					SPONSOR_Ja_Apliquei[client] = true;
					a_chat[client] = false;
					Decisao_Final_Sponsor_MENU(client);
				}
				case 7:
				{
					Decisao_Final_Sponsor_MENU(client);
				}
				case 9:
				{
					a_geral[client] = false;
					a_tag[client] = false;
					a_nome[client] = false;
					a_chat[client] = false;
					SPONSOR_Ja_Apliquei[client] = false;
					SPONSOR_Cor_Selecionada[client] = "";
					delete menu;
				}
			}
		}
		else if (action == MenuAction_Cancel)
		{
			if (Teclas == MenuCancel_Interrupted) {
				a_geral[client] = false;
				a_tag[client] = false;
				a_nome[client] = false;
				a_chat[client] = false;
				SPONSOR_Ja_Apliquei[client] = false;
				SPONSOR_Cor_Selecionada[client] = "";
			}
		}
		else if (action == MenuAction_End)
		{
			delete menu;
		}
	}
	return 0;
}
