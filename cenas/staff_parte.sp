//◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆
//														ADM TAGS
//◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆
public void STAFF_TAGS_MENU(int client)
{
	char Displ_STAFF_LIG[128], USAR_STAFF_TAG[128], USAR_VIP_TAG[128], USAR_SPONSOR_TAG[128]; int tag_em_USO[MAXPLAYERS + 1], tag_VIP_USO[MAXPLAYERS + 1], tag_SPONSOR_USO[MAXPLAYERS + 1];
	GetClientCookie(client, STAFF_Usar_TAG, USAR_STAFF_TAG, sizeof(USAR_STAFF_TAG));
	tag_em_USO[client] = StringToInt(USAR_STAFF_TAG);
	GetClientCookie(client, STAFF_VIP_TAG, USAR_VIP_TAG, sizeof(USAR_VIP_TAG));
	tag_VIP_USO[client] = StringToInt(USAR_VIP_TAG);
	GetClientCookie(client, STAFF_SPONSOR_TAG, USAR_SPONSOR_TAG, sizeof(USAR_SPONSOR_TAG));
	tag_SPONSOR_USO[client] = StringToInt(USAR_SPONSOR_TAG);
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - STAFF TAGS\n \n");
	SetPanelCurrentKey(Painel, 3);
	Format(Displ_STAFF_LIG, sizeof(Displ_STAFF_LIG), "%s\n \n", tag_em_USO[client] == 0 ? "Retirar Tags":"Repor Tags");
	Painel.DrawItem(Displ_STAFF_LIG);
	if (tag_em_USO[client] == 1)
	{
		if (tag_VIP_USO[client] == 0 && tag_SPONSOR_USO[client] == 0)
		{
			SetPanelCurrentKey(Painel, 4);
			Painel.DrawItem("Usar Tag VIP");
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Usar Tag SPONSOR\n \n");
		}
		if (tag_VIP_USO[client] == 1 && tag_SPONSOR_USO[client] == 0)
		{
			SetPanelCurrentKey(Painel, 4);
			Painel.DrawItem("Retirar Tag VIP");
			Painel.DrawText("5. Usar Tag SPONSOR\n \n");
		}
		if (tag_VIP_USO[client] == 0 && tag_SPONSOR_USO[client] == 1)
		{
			Painel.DrawText("4. Usar Tag VIP");
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Retirar Tag SPONSOR\n \n");
		}
	}
	else
	{
		Painel.DrawText("4. Usar Tag VIP");
		Painel.DrawText("5. Usar Tag SPONSOR\n \n");
	}
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, STAFF_TAGS_MENU_LIG, MENU_TIME_FOREVER);
}

public int STAFF_TAGS_MENU_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		char USAR_STAFF_TAG[128], USAR_VIP_TAG[128], USAR_SPONSOR_TAG[128]; int tag_em_USO[MAXPLAYERS + 1], tag_VIP_USO[MAXPLAYERS + 1], tag_SPONSOR_USO[MAXPLAYERS + 1];
		GetClientCookie(client, STAFF_Usar_TAG, USAR_STAFF_TAG, sizeof(USAR_STAFF_TAG));
		tag_em_USO[client] = StringToInt(USAR_STAFF_TAG);
		GetClientCookie(client, STAFF_VIP_TAG, USAR_VIP_TAG, sizeof(USAR_VIP_TAG));
		tag_VIP_USO[client] = StringToInt(USAR_VIP_TAG);
		GetClientCookie(client, STAFF_SPONSOR_TAG, USAR_SPONSOR_TAG, sizeof(USAR_SPONSOR_TAG));
		tag_SPONSOR_USO[client] = StringToInt(USAR_SPONSOR_TAG);
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					tag_em_USO[client] = !tag_em_USO[client];
					if (tag_em_USO[client] == 1)
					{
						HexTags_SetClientTag(client, ChatTag, "");
						HexTags_SetClientTag(client, ScoreTag, "");
						HexTags_SetClientTag(client, ChatColor, "");
						HexTags_SetClientTag(client, NameColor, "");
						CS_SetClientClanTag(client, "");
						SetClientCookie(client, COR_TAG_M, "MODO STAFF");
						SetClientCookie(client, COR_TAG_GG, "");
						SetClientCookie(client, COR_TAG, "");
						SetClientCookie(client, COR_NOME_GG, "");
						SetClientCookie(client, COR_NOME, "");
						SetClientCookie(client, COR_NOME_M, "MODO STAFF");
						SetClientCookie(client, COR_CHAT_GG, "");
						SetClientCookie(client, COR_CHAT, "");
						SetClientCookie(client, COR_CHAT_M, "MODO STAFF");
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
						SetClientCookie(client, Cores_RGB_tag, "");
						SetClientCookie(client, Cores_RGB_nome, "");
						SetClientCookie(client, Cores_RGB_chat, "");
						SetClientCookie(client, STAFF_Usar_TAG, "1");
					}
					else
					{
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
						SetClientCookie(client, Cores_RGB_tag, "");
						SetClientCookie(client, Cores_RGB_nome, "");
						SetClientCookie(client, Cores_RGB_chat, "");
						SetClientCookie(client, STAFF_Usar_TAG, "0");
						SetClientCookie(client, STAFF_VIP_TAG, "0");
						SetClientCookie(client, STAFF_SPONSOR_TAG, "0");
						HexTags_ResetClientTag(client);
					}
					STAFF_TAGS_MENU(client);
				}
				case 4:
				{
					tag_VIP_USO[client] = !tag_VIP_USO[client];
					if (tag_VIP_USO[client] == 1)
					{
						HexTags_SetClientTag(client, ChatTag, "{green}VIP | ");
						HexTags_SetClientTag(client, ScoreTag, "VIP | ");
						HexTags_SetClientTag(client, ChatColor, "{rainbow}");
						HexTags_SetClientTag(client, NameColor, "{lightgreen}");
						CS_SetClientClanTag(client, "VIP | ");
						SetClientCookie(client, STAFF_VIP_TAG, "1");
					}
					else
					{
						HexTags_SetClientTag(client, ChatTag, "");
						HexTags_SetClientTag(client, ScoreTag, "");
						HexTags_SetClientTag(client, ChatColor, "");
						HexTags_SetClientTag(client, NameColor, "");
						CS_SetClientClanTag(client, "");
						SetClientCookie(client, STAFF_VIP_TAG, "0");
					}
					STAFF_TAGS_MENU(client);
				}
				case 5:
				{
					tag_SPONSOR_USO[client] = !tag_SPONSOR_USO[client];
					if (tag_SPONSOR_USO[client] == 1)
					{
						HexTags_SetClientTag(client, ChatTag, "{gold}Sponsor | ");
						HexTags_SetClientTag(client, ScoreTag, "Sponsor | ");
						HexTags_SetClientTag(client, ChatColor, "{gold}");
						HexTags_SetClientTag(client, NameColor, "{yellow}");
						CS_SetClientClanTag(client, "Sponsor | ");
						SetClientCookie(client, STAFF_SPONSOR_TAG, "1");
					}
					else
					{
						HexTags_SetClientTag(client, ChatTag, "");
						HexTags_SetClientTag(client, ScoreTag, "");
						HexTags_SetClientTag(client, ChatColor, "");
						HexTags_SetClientTag(client, NameColor, "");
						CS_SetClientClanTag(client, "");
						SetClientCookie(client, STAFF_SPONSOR_TAG, "0");
					}
					STAFF_TAGS_MENU(client);
				}
				case 7:
				{
					TAGS_MENU(client);
				}
				case 9:
				{
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