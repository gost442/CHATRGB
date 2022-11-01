 //◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Repor ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
public void Repor_TAGS_MAIN_Menu(int client)
{
	char Displ_STAFF_LIG[128], COR_TAGs[128], COR_NOMEs[128], COR_CHATs[128];
	GetClientCookie(client, COR_TAG_M, COR_TAGs, sizeof(COR_TAGs));
	GetClientCookie(client, COR_NOME_M, COR_NOMEs, sizeof(COR_NOMEs));
	GetClientCookie(client, COR_CHAT_M, COR_CHATs, sizeof(COR_CHATs));
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - Repor\n \n");
	if (bcp_tag_apl[client] || bcp_nome_apl[client] || bcp_chat_apl[client])
	{
		if (bcp_tag_apl[client] && bcp_nome_apl[client] && bcp_chat_apl[client])
		{
			SetPanelCurrentKey(Painel, 2);
			Painel.DrawItem("Tudo");
		}
		else
		{
			Painel.DrawText("2. Tudo");
			
		}
		if (bcp_tag_apl[client])
		{
			SetPanelCurrentKey(Painel, 3);
			Painel.DrawItem("Apenas Tag");
		}
		else
		{
			Painel.DrawText("3. Apenas Tag");
			
		}
		if (bcp_nome_apl[client])
		{
			SetPanelCurrentKey(Painel, 4);
			Painel.DrawItem("Apenas Nome");
		}
		else
		{
			Painel.DrawText("4. Apenas Nome");
		}
		if (bcp_chat_apl[client])
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Apenas Chat\n \n");
		}
		else
		{
			Painel.DrawText("5. Apenas Chat\n \n");
			
		}
		SetPanelCurrentKey(Painel, 7);
		Painel.DrawItem("Voltar");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Repor_TAGS_MAIN_LIG, MENU_TIME_FOREVER);
		return;
		
	}
	if (eusouvip(client, l_tipodevip[VIP]) && !eusouvip(client, l_tipodevip[SPONSOR]))
		{
		Format(Displ_STAFF_LIG, sizeof(Displ_STAFF_LIG), "Cores Atuais:\nChat: %s\n \n", COR_CHATs);
		Painel.DrawText(Displ_STAFF_LIG);
	}
	if (eusouvip(client, l_tipodevip[SPONSOR]))
	{
		Format(Displ_STAFF_LIG, sizeof(Displ_STAFF_LIG), "Cores Atuais:\nTag: %s\nNome: %s\nChat: %s\n \n", COR_TAGs, COR_NOMEs, COR_CHATs);
		Painel.DrawText(Displ_STAFF_LIG);
	}
	if (StrEqual(COR_TAGs, "Predefinida") && StrEqual(COR_NOMEs, "Predefinida") && StrEqual(COR_CHATs, "Predefinida"))
	{
		if (eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("2. Tudo");
			Painel.DrawText("3. Apenas Tag");
			Painel.DrawText("4. Apenas Nome");
			Painel.DrawText("5. Apenas Chat\n \n");
		}
		if (eusouvip(client, l_tipodevip[VIP]) && !eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("5. Apenas Chat\n \n");
		}
	}
	if (StrEqual(COR_TAGs, "Predefinida") && !StrEqual(COR_NOMEs, "Predefinida") && !StrEqual(COR_CHATs, "Predefinida"))
	{
		if (eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("2. Tudo");
			Painel.DrawText("3. Apenas Tag");
			SetPanelCurrentKey(Painel, 4);
			Painel.DrawItem("Apenas Nome");
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Apenas Chat\n \n");
		}
		if (eusouvip(client, l_tipodevip[VIP]) && !eusouvip(client, l_tipodevip[SPONSOR]))
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Apenas Chat\n \n");
		}
	}
	if (!StrEqual(COR_TAGs, "Predefinida") && StrEqual(COR_NOMEs, "Predefinida") && !StrEqual(COR_CHATs, "Predefinida"))
	{
		if (eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("2. Tudo");
			SetPanelCurrentKey(Painel, 3);
			Painel.DrawItem("Apenas Tag");
			Painel.DrawText("4. Apenas Nome");
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Apenas Chat\n \n");
		}
		if (eusouvip(client, l_tipodevip[VIP]) && !eusouvip(client, l_tipodevip[SPONSOR]))
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Apenas Chat\n \n");
		}
	}
	if (!StrEqual(COR_TAGs, "Predefinida") && !StrEqual(COR_NOMEs, "Predefinida") && StrEqual(COR_CHATs, "Predefinida"))
	{
		if (eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("2. Tudo");
			SetPanelCurrentKey(Painel, 3);
			Painel.DrawItem("Apenas Tag");
			SetPanelCurrentKey(Painel, 4);
			Painel.DrawItem("Apenas Nome");
			Painel.DrawText("5. Apenas Chat\n \n");
		}
		if (eusouvip(client, l_tipodevip[VIP]) && !eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("5. Apenas Chat\n \n");
		}
	}
	if (StrEqual(COR_TAGs, "Predefinida") && StrEqual(COR_NOMEs, "Predefinida") && !StrEqual(COR_CHATs, "Predefinida"))
	{
		if (eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("2. Tudo");
			Painel.DrawText("3. Apenas Tag");
			Painel.DrawText("4. Apenas Nome");
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Apenas Chat\n \n");
		}
		if (eusouvip(client, l_tipodevip[VIP]) && !eusouvip(client, l_tipodevip[SPONSOR]))
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Apenas Chat\n \n");
		}
	}
	if (StrEqual(COR_TAGs, "Predefinida") && !StrEqual(COR_NOMEs, "Predefinida") && StrEqual(COR_CHATs, "Predefinida"))
	{
		if (eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("2. Tudo");
			Painel.DrawText("3. Apenas Tag");
			SetPanelCurrentKey(Painel, 4);
			Painel.DrawItem("Apenas Nome");
			Painel.DrawText("5. Apenas Chat\n \n");
		}
		if (eusouvip(client, l_tipodevip[VIP]) && !eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("5. Apenas Chat\n \n");
		}
	}
	if (!StrEqual(COR_TAGs, "Predefinida") && StrEqual(COR_NOMEs, "Predefinida") && StrEqual(COR_CHATs, "Predefinida"))
	{
		if (eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("2. Tudo");
			SetPanelCurrentKey(Painel, 3);
			Painel.DrawItem("Apenas Tag");
			Painel.DrawText("4. Apenas Nome");
			Painel.DrawText("5. Apenas Chat\n \n");
		}
		if (eusouvip(client, l_tipodevip[VIP]) && !eusouvip(client, l_tipodevip[SPONSOR]))
		{
			Painel.DrawText("5. Apenas Chat\n \n");
		}
	}
	if (!StrEqual(COR_TAGs, "Predefinida") && !StrEqual(COR_NOMEs, "Predefinida") && !StrEqual(COR_CHATs, "Predefinida"))
	{
		if (eusouvip(client, l_tipodevip[SPONSOR]))
		{
			SetPanelCurrentKey(Painel, 2);
			Painel.DrawItem("Tudo");
			SetPanelCurrentKey(Painel, 3);
			Painel.DrawItem("Apenas Tag");
			SetPanelCurrentKey(Painel, 4);
			Painel.DrawItem("Apenas Nome");
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Apenas Chat\n \n");
		}
		if (eusouvip(client, l_tipodevip[VIP]) && !eusouvip(client, l_tipodevip[SPONSOR]))
		{
			SetPanelCurrentKey(Painel, 5);
			Painel.DrawItem("Apenas Chat\n \n");
		}
	}
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Repor_TAGS_MAIN_LIG, MENU_TIME_FOREVER);
}

public int Repor_TAGS_MAIN_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 2:
				{
					HexTags_SetClientTag(client, ChatTag, "");
					HexTags_SetClientTag(client, ChatColor, "");
					HexTags_SetClientTag(client, NameColor, "");
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
					SetClientCookie(client, STAFF_Usar_TAG, "0");
					SetClientCookie(client, STAFF_VIP_TAG, "0");
					SetClientCookie(client, STAFF_SPONSOR_TAG, "0");
					HexTags_ResetClientTag(client);
					bcp_tag_apl[client] = false;
					bcp_nome_apl[client] = false;
					bcp_chat_apl[client] = false;
					Repor_TAGS_MAIN_Menu(client);
				}
				case 3:
				{
					HexTags_SetClientTag(client, ChatTag, "");
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
					HexTags_ResetClientTag(client);
					bcp_tag_apl[client] = false;
					Repor_TAGS_MAIN_Menu(client);
				}
				case 4:
				{
					HexTags_SetClientTag(client, NameColor, "");
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
					SetClientCookie(client, STAFF_Usar_TAG, "0");
					SetClientCookie(client, STAFF_VIP_TAG, "0");
					SetClientCookie(client, STAFF_SPONSOR_TAG, "0");
					HexTags_ResetClientTag(client);
					bcp_nome_apl[client] = false;
					Repor_TAGS_MAIN_Menu(client);
				}
				case 5:
				{
					HexTags_SetClientTag(client, ChatColor, "");
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
					SetClientCookie(client, STAFF_Usar_TAG, "0");
					SetClientCookie(client, STAFF_VIP_TAG, "0");
					SetClientCookie(client, STAFF_SPONSOR_TAG, "0");
					HexTags_ResetClientTag(client);
					bcp_chat_apl[client] = false;
					Repor_TAGS_MAIN_Menu(client);
				}
				case 7:
				{
					if (repor_apl_becap[client])
					{
						Usar_Becap(client);
					}
					else
					{
						TAGS_MENU(client);
					}
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