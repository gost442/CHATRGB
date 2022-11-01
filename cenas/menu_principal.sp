
//◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆
//														 TAGS Custumizacao Menu Principal
//◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆
public void TAGS_MENU(int client)
{
	ja_apliquei[client] = false;
	repor_apl_becap[client] = false;
	cor_selecionada[client] = "";
	char USAR_STAFF_TAG[128], USAR_VIP_TAG[128], USAR_SPONSOR_TAG[128]; int tag_em_USO[MAXPLAYERS + 1], tag_VIP_USO[MAXPLAYERS + 1], tag_SPONSOR_USO[MAXPLAYERS + 1];
	GetClientCookie(client, STAFF_Usar_TAG, USAR_STAFF_TAG, sizeof(USAR_STAFF_TAG));
	tag_em_USO[client] = StringToInt(USAR_STAFF_TAG);
	GetClientCookie(client, STAFF_VIP_TAG, USAR_VIP_TAG, sizeof(USAR_VIP_TAG));
	tag_VIP_USO[client] = StringToInt(USAR_VIP_TAG);
	GetClientCookie(client, STAFF_SPONSOR_TAG, USAR_SPONSOR_TAG, sizeof(USAR_SPONSOR_TAG));
	tag_SPONSOR_USO[client] = StringToInt(USAR_SPONSOR_TAG);
	char Displ_STAFF_LIG[128], COR_TAGs[128], COR_NOMEs[128], COR_CHATs[128];
	GetClientCookie(client, COR_TAG_M, COR_TAGs, sizeof(COR_TAGs));
	GetClientCookie(client, COR_NOME_M, COR_NOMEs, sizeof(COR_NOMEs));
	GetClientCookie(client, COR_CHAT_M, COR_CHATs, sizeof(COR_CHATs));
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - CHAT RGB\n \n");
	if (tag_VIP_USO[client] == 1 && eusouvip(client, l_tipodevip[STAFF]))
	{
		Format(Displ_STAFF_LIG, sizeof(Displ_STAFF_LIG), "Cor Atual:\nTAG ➠ %s\nNOME ➠ %s\nCHAT ➠ %s\n \n", COR_TAGs, COR_NOMEs, COR_CHATs);
		Painel.DrawText(Displ_STAFF_LIG);
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawItem("VIP Custumização");
		Painel.DrawText("4. Sponsor Custumização");
		Painel.DrawText("5. Repor ➠ Acede as STAFF Tags");
		SetPanelCurrentKey(Painel, 6);
		Painel.DrawItem("STAFF Tags\n \n");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, SPONSOR_TAGS_LIG, MENU_TIME_FOREVER);
		return;
	}
	if (tag_SPONSOR_USO[client] == 1 && eusouvip(client, l_tipodevip[STAFF]))
	{
		Format(Displ_STAFF_LIG, sizeof(Displ_STAFF_LIG), "Cor Atual:\nTAG ➠ %s\nNOME ➠ %s\nCHAT ➠ %s\n \n", COR_TAGs, COR_NOMEs, COR_CHATs);
		Painel.DrawText(Displ_STAFF_LIG);
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawItem("VIP Custumização");
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Sponsor Custumização");
		Painel.DrawText("5. Repor ➠ Acede as STAFF Tags");
		SetPanelCurrentKey(Painel, 6);
		Painel.DrawItem("STAFF Tags\n \n");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, SPONSOR_TAGS_LIG, MENU_TIME_FOREVER);
		return;
	}
	if (tag_VIP_USO[client] == 0 && tag_SPONSOR_USO[client] == 0 && eusouvip(client, l_tipodevip[STAFF]))
	{
		Format(Displ_STAFF_LIG, sizeof(Displ_STAFF_LIG), "Cor Atual:\nTAG ➠ %s\nNOME ➠ %s\nCHAT ➠ %s\n \n", COR_TAGs, COR_NOMEs, COR_CHATs);
		Painel.DrawText(Displ_STAFF_LIG);
		Painel.DrawText("3. VIP Custumização");
		Painel.DrawText("4. Sponsor Custumização");
		Painel.DrawText("5. Repor");
		SetPanelCurrentKey(Painel, 6);
		Painel.DrawItem("STAFF Tags\n \n");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, SPONSOR_TAGS_LIG, MENU_TIME_FOREVER);
		return;
	}
	if (eusouvip(client, l_tipodevip[SPONSOR]))
	{
		Format(Displ_STAFF_LIG, sizeof(Displ_STAFF_LIG), "Cor Atual:\nTAG ➠ %s\nNOME ➠ %s\nCHAT ➠ %s\n \n", COR_TAGs, COR_NOMEs, COR_CHATs);
		Painel.DrawText(Displ_STAFF_LIG);
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawItem("VIP Custumização");
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Sponsor Custumização");
		SetPanelCurrentKey(Painel, 5);
		Painel.DrawItem("Repor\n \n");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, SPONSOR_TAGS_LIG, MENU_TIME_FOREVER);
		return;
	}
	Format(Displ_STAFF_LIG, sizeof(Displ_STAFF_LIG), "Cor Atual:\nCHAT ➠ %s\n \n", COR_CHATs);
	Painel.DrawText(Displ_STAFF_LIG);
	SetPanelCurrentKey(Painel, 3);
	Painel.DrawItem("VIP Custumização");
	Painel.DrawText("4. Sponsor Custumização");
	SetPanelCurrentKey(Painel, 5);
	Painel.DrawItem("Repor\n \n");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, SPONSOR_TAGS_LIG, MENU_TIME_FOREVER);
}

public int SPONSOR_TAGS_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					CORs_VIP_MENU(client, 0);
				}
				case 4:
				{
					SPONSOR_escolher_nova_cor[client] = false;
					CORs_SPONSOR_TAGS_MENU(client, 0);
				}
				case 5:
				{
					Repor_TAGS_MAIN_Menu(client);
				}
				case 6:
				{
					STAFF_TAGS_MENU(client);
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