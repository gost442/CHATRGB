
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////                    RGB INICIO                       /////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
public void Menu_Principal_RGB(int client)
{
	char pasta_main[PLATFORM_MAX_PATH];
	Format(pasta_main, sizeof(pasta_main), "addons/sourcemod/TAGS_CORES_BECAP");
	if (!FileExists(pasta_main))
	{
		CreateDirectory(pasta_main, 511);
	}
	Tag_Beca_KV[client] = new KeyValues("TAGS BECAP");
	Arvore_Do_BEcap[client] = new StringMap();
	char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
	GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
	Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
	if (!Tag_Beca_KV[client].ImportFromFile(Senhor_Buffalo))
	{
		Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
	}
	else
	{
		Arvore_Do_BEcap[client].Clear();
		if (Tag_Beca_KV[client].GotoFirstSubKey())
		{
			char nome_do_becap[MAXPLAYERS + 1][300];
			do
			{
				Tag_Beca_KV[client].GetSectionName(nome_do_becap[client], sizeof(nome_do_becap[]));
				StripQuotes(nome_do_becap[client]);
				Arvore_Do_BEcap[client].SetString(nome_do_becap[client], nome_do_becap[client]);
			}
			while (Tag_Beca_KV[client].GotoNextKey());
		}
		Tag_Beca_KV[client].Rewind();
	}
	int tmanho_armvore[MAXPLAYERS + 1];
	tmanho_armvore[client] = Arvore_Do_BEcap[client].Snapshot().Length;
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - CHAT RGB\n \n");
	SetPanelCurrentKey(Painel, 3);
	Painel.DrawItem("Criar Novo RGB");
	if (tmanho_armvore[client] < 1)
	{
		Painel.DrawText("4. Ver Becaps\n \n");
	}
	else
	{
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Ver Becaps\n \n");
	}
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Principal_RGB_LIG, MENU_TIME_FOREVER);
}

public int Principal_RGB_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					cor_a_mudar[client] = "";
					Posicao_Trocar[client] = 0;
					Posicao_Trocar_TxT[client] = 0;
					Dados_Selecionados[client].numero_cores = 0;
					Dados_Selecionados[client].numero_cores_salvar = 0;
					Dados_Selecionados[client].numero_cores_m = 0;
					Dados_Selecionados[client].numero_cores_txt = "";
					Que_Cores[client].Clear();
					veio_da_verf[client] = false;
					ja_vi_isto[client] = false;
					RGB_NCores_MENU(client, 0);
				}
				case 4:
				{
					Ver_BECAPS_Menu(client, 0);
				}
				case 7:
				{
					CORs_SPONSOR_TAGS_MENU(client, Posicao_Escolhida_1SPONSOR[client]);
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


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Criar RGB ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
public void RGB_NCores_MENU(int client, int Pagina)
{
	Menu menu = new Menu(RGB_NCores_LIG);
	menu.SetTitle("#Darkness-CM - CHAT RGB\nQuantas cores?\n \n");
	menu.AddItem("2", "2 Cores");
	menu.AddItem("3", "3 Cores");
	menu.AddItem("4", "4 Cores");
	menu.AddItem("5", "5 Cores");
	menu.AddItem("6", "6 Cores");
	menu.AddItem("7", "7 Cores");
	menu.AddItem("8", "8 Cores");
	menu.AddItem("9", "9 Cores");
	menu.AddItem("10", "10 Cores");
	menu.ExitBackButton = true;
	menu.ExitButton = true;
	menu.DisplayAt(client, Pagina, MENU_TIME_FOREVER);
}

public int RGB_NCores_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			
			if (StrEqual(P_Item, "2"))
			{
				Dados_Selecionados[client].numero_cores = 2;
				Dados_Selecionados[client].numero_cores_salvar = 2;
				Dados_Selecionados[client].numero_cores_m = 2;
				Dados_Selecionados[client].numero_cores_txt = "2 cores";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "3"))
			{
				Dados_Selecionados[client].numero_cores = 3;
				Dados_Selecionados[client].numero_cores_salvar = 3;
				Dados_Selecionados[client].numero_cores_m = 3;
				Dados_Selecionados[client].numero_cores_txt = "3 cores";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "4"))
			{
				Dados_Selecionados[client].numero_cores = 4;
				Dados_Selecionados[client].numero_cores_m = 4;
				Dados_Selecionados[client].numero_cores_salvar = 4;
				Dados_Selecionados[client].numero_cores_txt = "4 cores";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "5"))
			{
				Dados_Selecionados[client].numero_cores = 5;
				Dados_Selecionados[client].numero_cores_m = 5;
				Dados_Selecionados[client].numero_cores_salvar = 5;
				Dados_Selecionados[client].numero_cores_txt = "5 cores";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "6"))
			{
				Dados_Selecionados[client].numero_cores = 6;
				Dados_Selecionados[client].numero_cores_m = 6;
				Dados_Selecionados[client].numero_cores_salvar = 6;
				Dados_Selecionados[client].numero_cores_txt = "6 cores";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "7"))
			{
				Dados_Selecionados[client].numero_cores = 7;
				Dados_Selecionados[client].numero_cores_m = 7;
				Dados_Selecionados[client].numero_cores_salvar = 7;
				Dados_Selecionados[client].numero_cores_txt = "7 cores";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "8"))
			{
				Dados_Selecionados[client].numero_cores = 8;
				Dados_Selecionados[client].numero_cores_m = 8;
				Dados_Selecionados[client].numero_cores_salvar = 8;
				Dados_Selecionados[client].numero_cores_txt = "8 cores";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "9"))
			{
				Dados_Selecionados[client].numero_cores = 9;
				Dados_Selecionados[client].numero_cores_m = 9;
				Dados_Selecionados[client].numero_cores_salvar = 9;
				Dados_Selecionados[client].numero_cores_txt = "9 cores";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "10"))
			{
				Dados_Selecionados[client].numero_cores = 10;
				Dados_Selecionados[client].numero_cores_m = 10;
				Dados_Selecionados[client].numero_cores_salvar = 10;
				Dados_Selecionados[client].numero_cores_txt = "10 cores";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				RGB_QCores_MENU(client, 0);
			}
			Posicao_Escolhida_Itens[client] = GetMenuSelectionPosition();
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				Dados_Selecionados[client].numero_cores = 0;
				Dados_Selecionados[client].numero_cores_salvar = 0;
				Dados_Selecionados[client].numero_cores_m = 0;
				Dados_Selecionados[client].numero_cores_txt = "";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				Menu_Principal_RGB(client);
			}
			if (Posicao == MenuCancel_Exit) {
				Dados_Selecionados[client].numero_cores = 0;
				Dados_Selecionados[client].numero_cores_salvar = 0;
				Dados_Selecionados[client].numero_cores_m = 0;
				Dados_Selecionados[client].numero_cores_txt = "";
				Que_Cores[client].Clear();
				veio_da_verf[client] = false;
				delete menu;
			}
		}
	}
	return 0;
}

//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Escolher Cores ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
void RGB_QCores_MENU(int client, int Pagina)
{
	if (veio_da_verf[client] == false)
	{
		if (Dados_Selecionados[client].numero_cores == 0)
		{
			ja_vi_isto[client] = false;
			Decisao_F1_Menu(client);
			return;
		}
	}
	Menu menu = new Menu(RGB_QCores_LIG);
	if (veio_da_verf[client] == true)
	{
		menu.SetTitle("#Darkness-CM - Lista de Cores\nEscolhe para substituires\n \nCor Atual: %s\nSituada na Posicão: %i\n \n", cor_a_mudar[client], Posicao_Trocar_TxT[client]);
		menu.AddItem("1", "Vermelho Claro", StrEqual(cor_a_mudar[client], "Vermelho Claro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Vermelho", StrEqual(cor_a_mudar[client], "Vermelho") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Vermelho Escuro", StrEqual(cor_a_mudar[client], "Vermelho Escuro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Normal", StrEqual(cor_a_mudar[client], "Normal") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Azul Claro", StrEqual(cor_a_mudar[client], "Azul Claro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Azul", StrEqual(cor_a_mudar[client], "Azul") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("7", "Azul Escuro", StrEqual(cor_a_mudar[client], "Azul Escuro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("8", "Roxo", StrEqual(cor_a_mudar[client], "Roxo") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("9", "Violeta", StrEqual(cor_a_mudar[client], "Violeta") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("10", "Amarelo", StrEqual(cor_a_mudar[client], "Amarelo") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("11", "Dourado", StrEqual(cor_a_mudar[client], "Dourado") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("12", "Verde Claro", StrEqual(cor_a_mudar[client], "Verde Claro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("13", "Verde", StrEqual(cor_a_mudar[client], "Verde") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("14", "Lima", StrEqual(cor_a_mudar[client], "Lima") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("15", "Cinza Claro", StrEqual(cor_a_mudar[client], "Cinza Claro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("16", "Cinza Escuro", StrEqual(cor_a_mudar[client], "Cinza Escuro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else
	{
		menu.SetTitle("#Darkness-CM - Lista de Cores\nEscolhe uma cor\n \nPodes Escolher mais: %i Cores\n \n", Dados_Selecionados[client].numero_cores);
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
	}
	
	menu.ExitBackButton = true;
	menu.ExitButton = true;
	menu.DisplayAt(client, Pagina, MENU_TIME_FOREVER);
}
public int RGB_QCores_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			Posicao_Escolhida_Cores[client] = GetMenuSelectionPosition();
			if (StrEqual(P_Item, "1"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Vermelho Claro");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					
					Que_Cores[client].PushString("Vermelho Claro");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "2"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Vermelho");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Vermelho");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
				
			}
			
			else if (StrEqual(P_Item, "3"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Vermelho Escuro");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Vermelho Escuro");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "4"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Normal");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Normal");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "5"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Azul Claro");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Azul Claro");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "6"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Azul");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Azul");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "7"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Azul Escuro");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Azul Escuro");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "8"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Roxo");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Roxo");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "9"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Violeta");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Violeta");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "10"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Amarelo");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Amarelo");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "11"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Dourado");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Dourado");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "12"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Verde Claro");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Verde Claro");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "13"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Verde");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Verde");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "14"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Lima");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Lima");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "15"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Cinza Claro");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Cinza Claro");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
			else if (StrEqual(P_Item, "16"))
			{
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				if (veio_da_verf[client] == true)
				{
					Que_Cores[client].SetString(Posicao_Trocar[client], "Cinza Escuro");
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					Que_Cores[client].PushString("Cinza Escuro");
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores--;
					RGB_QCores_MENU(client, Posicao_Escolhida_Cores[client]);
				}
			}
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				if (veio_da_verf[client] == true)
				{
					RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
				}
				else
				{
					RGB_NCores_MENU(client, Posicao_Escolhida_Itens[client]);
				}
			}
		}
		else if (Accao == MenuAction_End)
		{
			delete menu;
		}
		
	}
	return 0;
}
//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Avancar ou alterar ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
public void Decisao_F1_Menu(int client)
{
	rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
	ja_vi_isto[client] = false;
	Alterar_Cores_Parte_Final[client] = false;
	Alterar_Formatacao_Parte_Final[client] = false;
	fazer_becap[client] = false;
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - CHAT RGB\n \n");
	SetPanelCurrentKey(Painel, 3);
	Painel.DrawItem("Avancar");
	SetPanelCurrentKey(Painel, 4);
	Painel.DrawItem("Verificar Cores");
	SetPanelCurrentKey(Painel, 5);
	Painel.DrawItem("Escolher Todas as Cores Novamente");
	SetPanelCurrentKey(Painel, 6);
	Painel.DrawItem("Refazer Tudo\n \n");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Decisao_F1_LIG, MENU_TIME_FOREVER);
}

public int Decisao_F1_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					Avancar_Cores_SEL_MENU(client);
				}
				case 4:
				{
					RGB_QCores_SEL_MENU(client, 0);
				}
				case 5:
				{
					cor_a_mudar[client] = "";
					Posicao_Trocar[client] = 0;
					Posicao_Trocar_TxT[client] = 0;
					ja_vi_isto[client] = false;
					veio_da_verf[client] = false;
					Dados_Selecionados[client].numero_cores = Dados_Selecionados[client].numero_cores_salvar;
					Que_Cores[client].Clear();
					RGB_QCores_MENU(client, 0);
				}
				case 6:
				{
					ja_vi_isto[client] = false;
					cor_a_mudar[client] = "";
					veio_da_verf[client] = false;
					Posicao_Trocar[client] = 0;
					Posicao_Trocar_TxT[client] = 0;
					Que_Cores[client].Clear();
					RGB_NCores_MENU(client, 0);
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
//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Ver Cores Selecionadas ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
public void RGB_QCores_SEL_MENU(int client, int Pagina)
{
	ja_vi_isto[client] = true;
	Menu menu = new Menu(RGB_QCores_SEL_LIG);
	if (Dados_Selecionados[client].numero_cores_m == 2)
	{
		Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
		Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n \n", cor1_v2[client], cor2_v2[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 3)
	{
		Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
		Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
		Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 4)
	{
		Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
		Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
		Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
		Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 5)
	{
		Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
		Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
		Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
		Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
		Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
		menu.AddItem("5", "Mudar 5 cor");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 6)
	{
		Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
		Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
		Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
		Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
		Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
		Que_Cores[client].GetString(5, cor6_v2[client], sizeof(cor6_v2[]));
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
		menu.AddItem("5", "Mudar 5 cor");
		menu.AddItem("6", "Mudar 6 cor");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 7)
	{
		Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
		Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
		Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
		Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
		Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
		Que_Cores[client].GetString(5, cor6_v2[client], sizeof(cor6_v2[]));
		Que_Cores[client].GetString(6, cor7_v2[client], sizeof(cor7_v2[]));
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n7 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
		menu.AddItem("5", "Mudar 5 cor");
		menu.AddItem("6", "Mudar 6 cor");
		menu.AddItem("7", "Mudar 7 cor");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 8)
	{
		Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
		Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
		Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
		Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
		Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
		Que_Cores[client].GetString(5, cor6_v2[client], sizeof(cor6_v2[]));
		Que_Cores[client].GetString(6, cor7_v2[client], sizeof(cor7_v2[]));
		Que_Cores[client].GetString(7, cor8_v2[client], sizeof(cor8_v2[]));
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
		menu.AddItem("5", "Mudar 5 cor");
		menu.AddItem("6", "Mudar 6 cor");
		menu.AddItem("7", "Mudar 7 cor");
		menu.AddItem("8", "Mudar 8 cor");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 9)
	{
		Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
		Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
		Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
		Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
		Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
		Que_Cores[client].GetString(5, cor6_v2[client], sizeof(cor6_v2[]));
		Que_Cores[client].GetString(6, cor7_v2[client], sizeof(cor7_v2[]));
		Que_Cores[client].GetString(7, cor8_v2[client], sizeof(cor8_v2[]));
		Que_Cores[client].GetString(8, cor9_v2[client], sizeof(cor9_v2[]));
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n 3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
		menu.AddItem("5", "Mudar 5 cor");
		menu.AddItem("6", "Mudar 6 cor");
		menu.AddItem("7", "Mudar 7 cor");
		menu.AddItem("8", "Mudar 8 cor");
		menu.AddItem("9", "Mudar 9 cor");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 10)
	{
		Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
		Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
		Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
		Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
		Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
		Que_Cores[client].GetString(5, cor6_v2[client], sizeof(cor6_v2[]));
		Que_Cores[client].GetString(6, cor7_v2[client], sizeof(cor7_v2[]));
		Que_Cores[client].GetString(7, cor8_v2[client], sizeof(cor8_v2[]));
		Que_Cores[client].GetString(8, cor9_v2[client], sizeof(cor9_v2[]));
		Que_Cores[client].GetString(9, cor10_v2[client], sizeof(cor10_v2[]));
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n 3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client], cor10_v2[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
		menu.AddItem("5", "Mudar 5 cor");
		menu.AddItem("6", "Mudar 6 cor");
		menu.AddItem("7", "Mudar 7 cor");
		menu.AddItem("8", "Mudar 8 cor");
		menu.AddItem("9", "Mudar 9 cor");
		menu.AddItem("10", "Mudar 10 cor");
	}
	menu.ExitBackButton = true;
	menu.ExitButton = true;
	menu.DisplayAt(client, Pagina, MENU_TIME_FOREVER);
}

public int RGB_QCores_SEL_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			if (StrEqual(P_Item, "0"))
			{
				Trocar_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "1"))
			{
				cor_a_mudar[client] = cor1_v2[client];
				Posicao_Trocar[client] = 0;
				Posicao_Trocar_TxT[client] = 1;
				veio_da_verf[client] = true;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "2"))
			{
				cor_a_mudar[client] = cor2_v2[client];
				Posicao_Trocar[client] = 1;
				Posicao_Trocar_TxT[client] = 2;
				veio_da_verf[client] = true;
				RGB_QCores_MENU(client, 0);
				
			}
			else if (StrEqual(P_Item, "3"))
			{
				cor_a_mudar[client] = cor3_v2[client];
				Posicao_Trocar[client] = 2;
				Posicao_Trocar_TxT[client] = 3;
				veio_da_verf[client] = true;
				RGB_QCores_MENU(client, 0);
				
			}
			else if (StrEqual(P_Item, "4"))
			{
				cor_a_mudar[client] = cor4_v2[client];
				Posicao_Trocar[client] = 3;
				Posicao_Trocar_TxT[client] = 4;
				veio_da_verf[client] = true;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "5"))
			{
				cor_a_mudar[client] = cor5_v2[client];
				Posicao_Trocar[client] = 4;
				Posicao_Trocar_TxT[client] = 5;
				veio_da_verf[client] = true;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "6"))
			{
				cor_a_mudar[client] = cor6_v2[client];
				Posicao_Trocar[client] = 5;
				Posicao_Trocar_TxT[client] = 6;
				veio_da_verf[client] = true;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "7"))
			{
				cor_a_mudar[client] = cor7_v2[client];
				Posicao_Trocar[client] = 6;
				Posicao_Trocar_TxT[client] = 7;
				veio_da_verf[client] = true;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "8"))
			{
				cor_a_mudar[client] = cor8_v2[client];
				Posicao_Trocar[client] = 7;
				Posicao_Trocar_TxT[client] = 8;
				veio_da_verf[client] = true;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "9"))
			{
				cor_a_mudar[client] = cor9_v2[client];
				Posicao_Trocar[client] = 8;
				Posicao_Trocar_TxT[client] = 9;
				veio_da_verf[client] = true;
				RGB_QCores_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "10"))
			{
				cor_a_mudar[client] = cor10_v2[client];
				Posicao_Trocar[client] = 9;
				Posicao_Trocar_TxT[client] = 10;
				veio_da_verf[client] = true;
				RGB_QCores_MENU(client, 0);
			}
			RGB_QCores_ESCL[client] = GetMenuSelectionPosition();
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				if (Alterar_Cores_Parte_Final[client])
				{
					Confirmar_SPONSPR_V2_Cores_MENU(client);
				}
				else
				{
					Decisao_F1_Menu(client);
				}
			}
			if (Posicao == MenuCancel_Exit) {
				ja_vi_isto[client] = false;
				cor_a_mudar[client] = "";
				Posicao_Trocar[client] = 0;
				Posicao_Trocar_TxT[client] = 0;
			}
		}
		else if (Accao == MenuAction_End)
		{
			delete menu;
		}
		
	}
	return 0;
}

//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Troca de Posicções ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
char cor_selecionada_trocar[MAXPLAYERS + 1][68];
int posicao_a_trocar[MAXPLAYERS + 1];
public void Trocar_QCores_SEL_MENU(int client, int Pagina)
{
	
	Menu menu = new Menu(Troca_QCores_SEL_LIG);
	if (Dados_Selecionados[client].numero_cores_m == 2)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n \n", cor1_v2[client], cor2_v2[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 3)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 4)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 5)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
		menu.AddItem("5", "Trocar Posicao 5");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 6)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
		menu.AddItem("5", "Trocar Posicao 5");
		menu.AddItem("6", "Trocar Posicao 6");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 7)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n7 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
		menu.AddItem("5", "Trocar Posicao 5");
		menu.AddItem("6", "Trocar Posicao 6");
		menu.AddItem("7", "Trocar Posicao 7");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 8)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
		menu.AddItem("5", "Trocar Posicao 5");
		menu.AddItem("6", "Trocar Posicao 6");
		menu.AddItem("7", "Trocar Posicao 7");
		menu.AddItem("8", "Trocar Posicao 8");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 9)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
		menu.AddItem("5", "Trocar Posicao 5");
		menu.AddItem("6", "Trocar Posicao 6");
		menu.AddItem("7", "Trocar Posicao 7");
		menu.AddItem("8", "Trocar Posicao 8");
		menu.AddItem("9", "Trocar Posicao 9");
	}
	else if (Dados_Selecionados[client].numero_cores_m == 10)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client], cor10_v2[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
		menu.AddItem("5", "Trocar Posicao 5");
		menu.AddItem("6", "Trocar Posicao 6");
		menu.AddItem("7", "Trocar Posicao 7");
		menu.AddItem("8", "Trocar Posicao 8");
		menu.AddItem("9", "Trocar Posicao 9");
		menu.AddItem("10", "Trocar Posicao 10");
	}
	menu.ExitBackButton = true;
	menu.ExitButton = true;
	menu.DisplayAt(client, Pagina, MENU_TIME_FOREVER);
}

public int Troca_QCores_SEL_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			if (StrEqual(P_Item, "1"))
			{
				posicao_a_trocar[client] = 0;
				cor_selecionada_trocar[client] = S_Item;
				Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "2"))
			{
				posicao_a_trocar[client] = 1;
				cor_selecionada_trocar[client] = S_Item;
				Pela_QCores_SEL_MENU(client, 0);
				
			}
			else if (StrEqual(P_Item, "3"))
			{
				posicao_a_trocar[client] = 2;
				cor_selecionada_trocar[client] = S_Item;
				Pela_QCores_SEL_MENU(client, 0);
				
			}
			else if (StrEqual(P_Item, "4"))
			{
				posicao_a_trocar[client] = 3;
				cor_selecionada_trocar[client] = S_Item;
				Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "5"))
			{
				posicao_a_trocar[client] = 4;
				cor_selecionada_trocar[client] = S_Item;
				Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "6"))
			{
				posicao_a_trocar[client] = 5;
				cor_selecionada_trocar[client] = S_Item;
				Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "7"))
			{
				posicao_a_trocar[client] = 6;
				cor_selecionada_trocar[client] = S_Item;
				Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "8"))
			{
				posicao_a_trocar[client] = 7;
				cor_selecionada_trocar[client] = S_Item;
				Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "9"))
			{
				posicao_a_trocar[client] = 8;
				cor_selecionada_trocar[client] = S_Item;
				Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "10"))
			{
				posicao_a_trocar[client] = 9;
				cor_selecionada_trocar[client] = S_Item;
				Pela_QCores_SEL_MENU(client, 0);
			}
			RGB_TROCAR_QCores_ESCL[client] = GetMenuSelectionPosition();
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
			}
			
		}
		else if (Accao == MenuAction_End)
		{
			delete menu;
		}
		
	}
	return 0;
}

//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Pela Posicao ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
public void Pela_QCores_SEL_MENU(int client, int Pagina)
{
	Menu menu = new Menu(Pela_QCores_SEL_LIG);
	if (Dados_Selecionados[client].numero_cores_m == 2)
	{
		menu.SetTitle("#Darkness-CM - Seleciona Trocar Posicao 1\n1 ➠ %s\n2 ➠ %s\n \n", cor1_v2[client], cor2_v2[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 3)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 4)
	{
		
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 5)
	{
		
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 6)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Pela Posicao 6", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 6") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 7)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n7 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Pela Posicao 6", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 6") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("7", "Pela Posicao 7", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 7") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 8)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Pela Posicao 6", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 6") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("7", "Pela Posicao 7", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 7") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("8", "Pela Posicao 8", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 8") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 9)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Pela Posicao 6", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 6") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("7", "Pela Posicao 7", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 7") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("8", "Pela Posicao 8", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 8") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("9", "Pela Posicao 9", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 9") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 10)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client], cor10_v2[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Pela Posicao 6", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 6") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("7", "Pela Posicao 7", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 7") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("8", "Pela Posicao 8", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 8") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("9", "Pela Posicao 9", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 9") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("10", "Pela Posicao 10", StrEqual(cor_selecionada_trocar[client], "Trocar Posicao 10") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	menu.ExitBackButton = true;
	menu.ExitButton = true;
	menu.DisplayAt(client, Pagina, MENU_TIME_FOREVER);
}

public int Pela_QCores_SEL_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			if (StrEqual(P_Item, "1"))
			{
				Que_Cores[client].SwapAt(Posicao_Trocar[client], 0);
				RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
			}
			else if (StrEqual(P_Item, "2"))
			{
				Que_Cores[client].SwapAt(Posicao_Trocar[client], 1);
				RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
			}
			else if (StrEqual(P_Item, "3"))
			{
				Que_Cores[client].SwapAt(Posicao_Trocar[client], 2);
				RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
			}
			else if (StrEqual(P_Item, "4"))
			{
				Que_Cores[client].SwapAt(Posicao_Trocar[client], 3);
				RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
			}
			else if (StrEqual(P_Item, "5"))
			{
				Que_Cores[client].SwapAt(Posicao_Trocar[client], 4);
				RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
			}
			else if (StrEqual(P_Item, "6"))
			{
				Que_Cores[client].SwapAt(Posicao_Trocar[client], 5);
				RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
			}
			else if (StrEqual(P_Item, "7"))
			{
				Que_Cores[client].SwapAt(Posicao_Trocar[client], 6);
				RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
			}
			else if (StrEqual(P_Item, "8"))
			{
				Que_Cores[client].SwapAt(Posicao_Trocar[client], 7);
				RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
			}
			else if (StrEqual(P_Item, "9"))
			{
				Que_Cores[client].SwapAt(Posicao_Trocar[client], 8);
				RGB_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "10"))
			{
				Que_Cores[client].SwapAt(Posicao_Trocar[client], 9);
				RGB_QCores_SEL_MENU(client, RGB_QCores_ESCL[client]);
			}
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				Trocar_QCores_SEL_MENU(client, RGB_TROCAR_QCores_ESCL[client]);
			}
			
		}
		else if (Accao == MenuAction_End)
		{
			delete menu;
		}
		
	}
	return 0;
}
/////////////////////////////////////////
//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Avancar ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈

public void Avancar_Cores_SEL_MENU(int client)
{
	char Texto_PNL_LIG[600];
	if (!ja_vi_isto[client])
	{
		if (Dados_Selecionados[client].numero_cores_m == 2)
		{
			Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
			Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
			
		}
		else if (Dados_Selecionados[client].numero_cores_m == 3)
		{
			Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
			Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
			Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
			
		}
		else if (Dados_Selecionados[client].numero_cores_m == 4)
		{
			Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
			Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
			Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
			Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
		}
		else if (Dados_Selecionados[client].numero_cores_m == 5)
		{
			Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
			Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
			Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
			Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
			Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
		}
		else if (Dados_Selecionados[client].numero_cores_m == 6)
		{
			Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
			Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
			Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
			Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
			Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
			Que_Cores[client].GetString(5, cor6_v2[client], sizeof(cor6_v2[]));
		}
		else if (Dados_Selecionados[client].numero_cores_m == 7)
		{
			Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
			Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
			Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
			Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
			Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
			Que_Cores[client].GetString(5, cor6_v2[client], sizeof(cor6_v2[]));
			Que_Cores[client].GetString(6, cor7_v2[client], sizeof(cor7_v2[]));
		}
		else if (Dados_Selecionados[client].numero_cores_m == 8)
		{
			Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
			Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
			Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
			Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
			Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
			Que_Cores[client].GetString(5, cor6_v2[client], sizeof(cor6_v2[]));
			Que_Cores[client].GetString(6, cor7_v2[client], sizeof(cor7_v2[]));
			Que_Cores[client].GetString(7, cor8_v2[client], sizeof(cor8_v2[]));
		}
		else if (Dados_Selecionados[client].numero_cores_m == 9)
		{
			Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
			Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
			Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
			Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
			Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
			Que_Cores[client].GetString(5, cor6_v2[client], sizeof(cor6_v2[]));
			Que_Cores[client].GetString(6, cor7_v2[client], sizeof(cor7_v2[]));
			Que_Cores[client].GetString(7, cor8_v2[client], sizeof(cor8_v2[]));
			Que_Cores[client].GetString(8, cor9_v2[client], sizeof(cor9_v2[]));
		}
		else if (Dados_Selecionados[client].numero_cores_m == 10)
		{
			Que_Cores[client].GetString(0, cor1_v2[client], sizeof(cor1_v2[]));
			Que_Cores[client].GetString(1, cor2_v2[client], sizeof(cor2_v2[]));
			Que_Cores[client].GetString(2, cor3_v2[client], sizeof(cor3_v2[]));
			Que_Cores[client].GetString(3, cor4_v2[client], sizeof(cor4_v2[]));
			Que_Cores[client].GetString(4, cor5_v2[client], sizeof(cor5_v2[]));
			Que_Cores[client].GetString(5, cor6_v2[client], sizeof(cor6_v2[]));
			Que_Cores[client].GetString(6, cor7_v2[client], sizeof(cor7_v2[]));
			Que_Cores[client].GetString(7, cor8_v2[client], sizeof(cor8_v2[]));
			Que_Cores[client].GetString(8, cor9_v2[client], sizeof(cor9_v2[]));
			Que_Cores[client].GetString(9, cor10_v2[client], sizeof(cor10_v2[]));
		}
	}
	if (Dados_Selecionados[client].numero_cores_m == 2)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n \n", cor1_v2[client], cor2_v2[client]);
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 3)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 4)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 5)
	{
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 6)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 7)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n7 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 8)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 9)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client]);
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 10)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client], cor10_v2[client]);
	}
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - Cores");
	Painel.DrawText(Texto_PNL_LIG);
	SetPanelCurrentKey(Painel, 3);
	Painel.DrawItem("As cores respeitam a sequência");
	SetPanelCurrentKey(Painel, 4);
	Painel.DrawItem("As cores tornam-se aleatórias");
	SetPanelCurrentKey(Painel, 5);
	Painel.DrawItem("As cores vão subindo sequencialmente");
	SetPanelCurrentKey(Painel, 6);
	Painel.DrawItem("As cores vão descendo sequencialmente\n \n");
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Avancar_Cores_SEL_LIG, MENU_TIME_FOREVER);
}

public int Avancar_Cores_SEL_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
					if (Alterar_Formatacao_Parte_Final[client])
					{
						Dados_Selecionados[client].nome_da_formatacao = "As cores respeitam a sequência";
						Dados_Selecionados[client].cores_Seq_Esc = 1;
						Confirmar_SPONSPR_V2_Cores_MENU(client);
						
					}
					else
					{
						Dados_Selecionados[client].nome_da_formatacao = "As cores respeitam a sequência";
						Dados_Selecionados[client].cores_Seq_Esc = 1;
						Confirmar_SPONSPRCores_MENU(client);
						
					}
				}
				case 4:
				{
					rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
					if (Alterar_Formatacao_Parte_Final[client])
					{
						Dados_Selecionados[client].nome_da_formatacao = "As cores tornam-se aleatórias";
						Dados_Selecionados[client].cores_Seq_Esc = 2;
						Confirmar_SPONSPR_V2_Cores_MENU(client);
					}
					else
					{
						Dados_Selecionados[client].nome_da_formatacao = "As cores tornam-se aleatórias";
						Dados_Selecionados[client].cores_Seq_Esc = 2;
						Confirmar_SPONSPRCores_MENU(client);
					}
				}
				case 5:
				{
					rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
					if (Alterar_Formatacao_Parte_Final[client])
					{
						Dados_Selecionados[client].nome_da_formatacao = "As cores vão subindo sequencialmente";
						Dados_Selecionados[client].cores_Seq_Esc = 3;
						Confirmar_SPONSPR_V2_Cores_MENU(client);
					}
					else
					{
						Dados_Selecionados[client].nome_da_formatacao = "As cores vão subindo sequencialmente";
						Dados_Selecionados[client].cores_Seq_Esc = 3;
						Confirmar_SPONSPRCores_MENU(client);
					}
				}
				case 6:
				{
					rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
					if (Alterar_Formatacao_Parte_Final[client])
					{
						Dados_Selecionados[client].nome_da_formatacao = "As cores vão descendo sequencialmente";
						Dados_Selecionados[client].cores_Seq_Esc = 4;
						Confirmar_SPONSPR_V2_Cores_MENU(client);
					}
					else
					{
						Dados_Selecionados[client].nome_da_formatacao = "As cores vão descendo sequencialmente";
						Dados_Selecionados[client].cores_Seq_Esc = 4;
						Confirmar_SPONSPRCores_MENU(client);
					}
				}
				case 7:
				{
					if (Alterar_Formatacao_Parte_Final[client])
					{
						Confirmar_SPONSPR_V2_Cores_MENU(client);
					}
					else
					{
						Decisao_F1_Menu(client);
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

//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Confirmacao ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
public void Confirmar_SPONSPRCores_MENU(int client)
{
	char Texto_PNL_LIG[600];
	if (Dados_Selecionados[client].numero_cores_m == 2)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n \n", cor1_v2[client], cor2_v2[client]);
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 3)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 4)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 5)
	{
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 6)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 7)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n7 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 8)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s || 6 ➠ %s\n7 ➠ %s || 8 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 9)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client]);
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 10)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s || 10 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client], cor10_v2[client]);
	}
	char formatacao[128];
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - CHAT RGB");
	Painel.DrawText(Texto_PNL_LIG);
	Format(formatacao, sizeof(formatacao), "Formatação: %s\n \n", Dados_Selecionados[client].nome_da_formatacao);
	Painel.DrawText(formatacao);
	if (rgb_a_tag[client] && rgb_a_nome[client] && rgb_a_chat[client])
	{
		Painel.DrawText("3. Aplicar em Tudo");
		Painel.DrawText("4. Aplicar na TAG");
		Painel.DrawText("5. Aplicar no nome");
		Painel.DrawText("6. Aplicar no chat\n \n");
		SetPanelCurrentKey(Painel, 7);
		Painel.DrawItem("Voltar");
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Pagina Seguinte");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Painel_Ligacao, MENU_TIME_FOREVER);
		return;
	}
	if (!rgb_a_tag[client] && rgb_a_nome[client] && rgb_a_chat[client])
	{
		Painel.DrawText("3. Aplicar em Tudo");
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Aplicar na TAG");
		Painel.DrawText("5. Aplicar no nome");
		Painel.DrawText("6. Aplicar no chat\n \n");
		SetPanelCurrentKey(Painel, 7);
		Painel.DrawItem("Voltar");
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Pagina Seguinte");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Painel_Ligacao, MENU_TIME_FOREVER);
		return;
	}
	if (rgb_a_tag[client] && !rgb_a_nome[client] && rgb_a_chat[client])
	{
		Painel.DrawText("3. Aplicar em Tudo");
		Painel.DrawText("4. Aplicar na TAG");
		SetPanelCurrentKey(Painel, 5);
		Painel.DrawItem("Aplicar no nome");
		Painel.DrawText("6. Aplicar no chat\n \n");
		SetPanelCurrentKey(Painel, 7);
		Painel.DrawItem("Voltar");
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Pagina Seguinte");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Painel_Ligacao, MENU_TIME_FOREVER);
		return;
	}
	if (rgb_a_tag[client] && rgb_a_nome[client] && !rgb_a_chat[client])
	{
		Painel.DrawText("3. Aplicar em Tudo");
		Painel.DrawText("4. Aplicar na TAG");
		Painel.DrawText("5. Aplicar no nome");
		SetPanelCurrentKey(Painel, 6);
		Painel.DrawItem("Aplicar no chat\n \n");
		SetPanelCurrentKey(Painel, 7);
		Painel.DrawItem("Voltar");
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Pagina Seguinte");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Painel_Ligacao, MENU_TIME_FOREVER);
		return;
	}
	if (!rgb_a_tag[client] && !rgb_a_nome[client] && rgb_a_chat[client])
	{
		Painel.DrawText("3. Aplicar em Tudo");
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Aplicar na TAG");
		SetPanelCurrentKey(Painel, 5);
		Painel.DrawItem("Aplicar no nome");
		Painel.DrawText("6. Aplicar no chat\n \n");
		SetPanelCurrentKey(Painel, 7);
		Painel.DrawItem("Voltar");
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Pagina Seguinte");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Painel_Ligacao, MENU_TIME_FOREVER);
		return;
	}
	if (!rgb_a_tag[client] && rgb_a_nome[client] && !rgb_a_chat[client])
	{
		Painel.DrawText("3. Aplicar em Tudo");
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Aplicar na TAG");
		Painel.DrawText("5. Aplicar no nome");
		SetPanelCurrentKey(Painel, 6);
		Painel.DrawItem("Aplicar no chat\n \n");
		SetPanelCurrentKey(Painel, 7);
		Painel.DrawItem("Voltar");
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Pagina Seguinte");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Painel_Ligacao, MENU_TIME_FOREVER);
		return;
	}
	if (!rgb_a_tag[client] && rgb_a_nome[client] && rgb_a_chat[client])
	{
		Painel.DrawText("3. Aplicar em Tudo");
		Painel.DrawText("4. Aplicar na TAG");
		SetPanelCurrentKey(Painel, 5);
		Painel.DrawItem("Aplicar no nome");
		SetPanelCurrentKey(Painel, 6);
		Painel.DrawItem("Aplicar no chat\n \n");
		SetPanelCurrentKey(Painel, 7);
		Painel.DrawItem("Voltar");
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Pagina Seguinte");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Painel_Ligacao, MENU_TIME_FOREVER);
		return;
	}
	if (rgb_a_tag[client] && !rgb_a_nome[client] && !rgb_a_chat[client])
	{
		Painel.DrawText("3. Aplicar em Tudo");
		Painel.DrawText("4. Aplicar na TAG");
		SetPanelCurrentKey(Painel, 5);
		Painel.DrawItem("Aplicar no nome");
		SetPanelCurrentKey(Painel, 6);
		Painel.DrawItem("Aplicar no chat\n \n");
		SetPanelCurrentKey(Painel, 7);
		Painel.DrawItem("Voltar");
		SetPanelCurrentKey(Painel, 8);
		Painel.DrawItem("Pagina Seguinte");
		SetPanelCurrentKey(Painel, 9);
		Painel.DrawItem("Sair");
		Painel.Send(client, Painel_Ligacao, MENU_TIME_FOREVER);
		return;
	}
	SetPanelCurrentKey(Painel, 3);
	Painel.DrawItem("Aplicar em Tudo");
	SetPanelCurrentKey(Painel, 4);
	Painel.DrawItem("Aplicar na TAG");
	SetPanelCurrentKey(Painel, 5);
	Painel.DrawItem("Aplicar no nome");
	SetPanelCurrentKey(Painel, 6);
	Painel.DrawItem("Aplicar no chat\n \n");
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar");
	SetPanelCurrentKey(Painel, 8);
	Painel.DrawItem("Pagina Seguinte");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Painel_Ligacao, MENU_TIME_FOREVER);
}

public int Painel_Ligacao(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					char cor1_s[128], cor2_s[128], cor3_s[128], cor4_s[128], cor5_s[128], cor6_s[128], cor7_s[128], cor8_s[128], cor9_s[128], cor10_s[128];
					char sequencia_s[32];
					IntToString(Dados_Selecionados[client].cores_Seq_Esc, sequencia_s, sizeof(sequencia_s));
					HexTags_SetClientTag(client, ChatTag, "");
					HexTags_SetClientTag(client, NameColor, "");
					HexTags_SetClientTag(client, ChatColor, "");
					SetClientCookie(client, COR_TAG_GG, "");
					SetClientCookie(client, COR_NOME_GG, "");
					SetClientCookie(client, COR_CHAT_GG, "");
					SetClientCookie(client, COR_TAG, "");
					SetClientCookie(client, COR_NOME, "");
					SetClientCookie(client, COR_CHAT, "");
					SetClientCookie(client, COR_TAG_M, "RBG");
					SetClientCookie(client, COR_NOME_M, "RBG");
					SetClientCookie(client, COR_CHAT_M, "RBG");
					int tamanho_array = Que_Cores[client].Length;
					if (tamanho_array == 2)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, "");
						SetClientCookie(client, Cor4_G_TAG, "");
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, "");
						SetClientCookie(client, Cor4_G_Nome, "");
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, "");
						SetClientCookie(client, Cor4_G_CHAT, "");
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
						
						
					}
					else if (tamanho_array == 3)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, "");
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, "");
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, "");
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
						
					}
					else if (tamanho_array == 4)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
						
					}
					else if (tamanho_array == 5)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 6)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, cor6_s);
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, cor6_s);
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, cor6_s);
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 7)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, cor6_s);
						SetClientCookie(client, Cor7_G_TAG, cor7_s);
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, cor6_s);
						SetClientCookie(client, Cor7_G_Nome, cor7_s);
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, cor6_s);
						SetClientCookie(client, Cor7_G_CHAT, cor7_s);
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 8)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, cor6_s);
						SetClientCookie(client, Cor7_G_TAG, cor7_s);
						SetClientCookie(client, Cor8_G_TAG, cor8_s);
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, cor6_s);
						SetClientCookie(client, Cor7_G_Nome, cor7_s);
						SetClientCookie(client, Cor8_G_Nome, cor8_s);
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, cor6_s);
						SetClientCookie(client, Cor7_G_CHAT, cor7_s);
						SetClientCookie(client, Cor8_G_CHAT, cor8_s);
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 9)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Que_Cores[client].GetString(8, cor9_s, sizeof(cor9_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, cor6_s);
						SetClientCookie(client, Cor7_G_TAG, cor7_s);
						SetClientCookie(client, Cor8_G_TAG, cor8_s);
						SetClientCookie(client, Cor9_G_TAG, cor9_s);
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, cor6_s);
						SetClientCookie(client, Cor7_G_Nome, cor7_s);
						SetClientCookie(client, Cor8_G_Nome, cor8_s);
						SetClientCookie(client, Cor9_G_Nome, cor9_s);
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, cor6_s);
						SetClientCookie(client, Cor7_G_CHAT, cor7_s);
						SetClientCookie(client, Cor8_G_CHAT, cor8_s);
						SetClientCookie(client, Cor9_G_CHAT, cor9_s);
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 10)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Que_Cores[client].GetString(8, cor9_s, sizeof(cor9_s));
						Que_Cores[client].GetString(9, cor10_s, sizeof(cor10_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, cor6_s);
						SetClientCookie(client, Cor7_G_TAG, cor7_s);
						SetClientCookie(client, Cor8_G_TAG, cor8_s);
						SetClientCookie(client, Cor9_G_TAG, cor9_s);
						SetClientCookie(client, Cor10_G_TAG, cor10_s);
						//
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, cor6_s);
						SetClientCookie(client, Cor7_G_Nome, cor7_s);
						SetClientCookie(client, Cor8_G_Nome, cor8_s);
						SetClientCookie(client, Cor9_G_Nome, cor9_s);
						SetClientCookie(client, Cor10_G_Nome, cor10_s);
						//
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, cor6_s);
						SetClientCookie(client, Cor7_G_CHAT, cor7_s);
						SetClientCookie(client, Cor8_G_CHAT, cor8_s);
						SetClientCookie(client, Cor9_G_CHAT, cor9_s);
						SetClientCookie(client, Cor10_G_CHAT, cor10_s);
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					SetClientCookie(client, Cores_RGB_tag, "1");
					SetClientCookie(client, Cores_RGB_nome, "1");
					SetClientCookie(client, Cores_RGB_chat, "1");
					PrintHintText(client, "<pre class='fontSize-xl'>              <font color='#9F00FF'>GERAL</font>-<font color='#FF0000'>R</font><font color='#1CFF00'>G</font><font color='#00FFF9'>B</font>\n<font color='#00EB42'>APLICADA COM SUCESSO</font></pre>");
					rgb_a_tag[client] = true; rgb_a_nome[client] = true; rgb_a_chat[client] = true;
					Confirmar_SPONSPRCores_MENU(client);
				}
				case 4:
				{
					char cor1_s[128], cor2_s[128], cor3_s[128], cor4_s[128], cor5_s[128], cor6_s[128], cor7_s[128], cor8_s[128], cor9_s[128], cor10_s[128];
					char sequencia_s[32];
					IntToString(Dados_Selecionados[client].cores_Seq_Esc, sequencia_s, sizeof(sequencia_s));
					int tamanho_array = Que_Cores[client].Length;
					HexTags_SetClientTag(client, ChatTag, "");
					SetClientCookie(client, COR_TAG_GG, "");
					SetClientCookie(client, COR_TAG, "");
					SetClientCookie(client, COR_TAG_M, "RBG");
					if (tamanho_array == 2)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, "");
						SetClientCookie(client, Cor4_G_TAG, "");
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						
						
					}
					else if (tamanho_array == 3)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, "");
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						
					}
					else if (tamanho_array == 4)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
						
					}
					else if (tamanho_array == 5)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
					}
					else if (tamanho_array == 6)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, cor6_s);
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
					}
					else if (tamanho_array == 7)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, cor6_s);
						SetClientCookie(client, Cor7_G_TAG, cor7_s);
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
					}
					else if (tamanho_array == 8)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, cor6_s);
						SetClientCookie(client, Cor7_G_TAG, cor7_s);
						SetClientCookie(client, Cor8_G_TAG, cor8_s);
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
					}
					else if (tamanho_array == 9)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Que_Cores[client].GetString(8, cor9_s, sizeof(cor9_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, cor6_s);
						SetClientCookie(client, Cor7_G_TAG, cor7_s);
						SetClientCookie(client, Cor8_G_TAG, cor8_s);
						SetClientCookie(client, Cor9_G_TAG, cor9_s);
						SetClientCookie(client, Cor10_G_TAG, "");
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
					}
					else if (tamanho_array == 10)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Que_Cores[client].GetString(8, cor9_s, sizeof(cor9_s));
						Que_Cores[client].GetString(9, cor10_s, sizeof(cor10_s));
						SetClientCookie(client, Cor1_G_TAG, cor1_s);
						SetClientCookie(client, Cor2_G_TAG, cor2_s);
						SetClientCookie(client, Cor3_G_TAG, cor3_s);
						SetClientCookie(client, Cor4_G_TAG, cor4_s);
						SetClientCookie(client, Cor5_G_TAG, cor5_s);
						SetClientCookie(client, Cor6_G_TAG, cor6_s);
						SetClientCookie(client, Cor7_G_TAG, cor7_s);
						SetClientCookie(client, Cor8_G_TAG, cor8_s);
						SetClientCookie(client, Cor9_G_TAG, cor9_s);
						SetClientCookie(client, Cor10_G_TAG, cor10_s);
						SetClientCookie(client, Tipo_Sequencia_G_TAG, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_TAG, guardar_cores_salvadas);
					}
					SetClientCookie(client, Cores_RGB_tag, "1");
					PrintHintText(client, "<pre class='fontSize-xl'>              <font color='#9F00FF'>CHAT</font>-<font color='#FF0000'>R</font><font color='#1CFF00'>G</font><font color='#00FFF9'>B</font>\n<font color='#00EB42'>APLICADA COM SUCESSO</font></pre>");
					rgb_a_tag[client] = true;
					Confirmar_SPONSPRCores_MENU(client);
				}
				case 5:
				{
					char cor1_s[128], cor2_s[128], cor3_s[128], cor4_s[128], cor5_s[128], cor6_s[128], cor7_s[128], cor8_s[128], cor9_s[128], cor10_s[128];
					char sequencia_s[32];
					IntToString(Dados_Selecionados[client].cores_Seq_Esc, sequencia_s, sizeof(sequencia_s));
					int tamanho_array = Que_Cores[client].Length;
					HexTags_SetClientTag(client, NameColor, "");
					SetClientCookie(client, COR_NOME_GG, "");
					SetClientCookie(client, COR_NOME, "");
					SetClientCookie(client, COR_NOME_M, "RBG");
					
					if (tamanho_array == 2)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, "");
						SetClientCookie(client, Cor4_G_Nome, "");
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
					}
					else if (tamanho_array == 3)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, "");
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
					}
					else if (tamanho_array == 4)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
						
					}
					else if (tamanho_array == 5)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
					}
					else if (tamanho_array == 6)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, cor6_s);
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
					}
					else if (tamanho_array == 7)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, cor6_s);
						SetClientCookie(client, Cor7_G_Nome, cor7_s);
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
					}
					else if (tamanho_array == 8)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, cor6_s);
						SetClientCookie(client, Cor7_G_Nome, cor7_s);
						SetClientCookie(client, Cor8_G_Nome, cor8_s);
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
					}
					else if (tamanho_array == 9)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Que_Cores[client].GetString(8, cor9_s, sizeof(cor9_s));
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, cor6_s);
						SetClientCookie(client, Cor7_G_Nome, cor7_s);
						SetClientCookie(client, Cor8_G_Nome, cor8_s);
						SetClientCookie(client, Cor9_G_Nome, cor9_s);
						SetClientCookie(client, Cor10_G_Nome, "");
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
					}
					else if (tamanho_array == 10)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Que_Cores[client].GetString(8, cor9_s, sizeof(cor9_s));
						Que_Cores[client].GetString(9, cor10_s, sizeof(cor10_s));
						SetClientCookie(client, Cor1_G_Nome, cor1_s);
						SetClientCookie(client, Cor2_G_Nome, cor2_s);
						SetClientCookie(client, Cor3_G_Nome, cor3_s);
						SetClientCookie(client, Cor4_G_Nome, cor4_s);
						SetClientCookie(client, Cor5_G_Nome, cor5_s);
						SetClientCookie(client, Cor6_G_Nome, cor6_s);
						SetClientCookie(client, Cor7_G_Nome, cor7_s);
						SetClientCookie(client, Cor8_G_Nome, cor8_s);
						SetClientCookie(client, Cor9_G_Nome, cor9_s);
						SetClientCookie(client, Cor10_G_Nome, cor10_s);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_Nome, guardar_cores_salvadas);
					}
					SetClientCookie(client, Cores_RGB_nome, "1");
					PrintHintText(client, "<pre class='fontSize-xl'>              <font color='#9F00FF'>NOME</font>-<font color='#FF0000'>R</font><font color='#1CFF00'>G</font><font color='#00FFF9'>B</font>\n<font color='#00EB42'>APLICADA COM SUCESSO</font></pre>");
					rgb_a_nome[client] = true;
					Confirmar_SPONSPRCores_MENU(client);
				}
				case 6:
				{
					char cor1_s[128], cor2_s[128], cor3_s[128], cor4_s[128], cor5_s[128], cor6_s[128], cor7_s[128], cor8_s[128], cor9_s[128], cor10_s[128];
					char sequencia_s[32];
					IntToString(Dados_Selecionados[client].cores_Seq_Esc, sequencia_s, sizeof(sequencia_s));
					int tamanho_array = Que_Cores[client].Length;
					HexTags_SetClientTag(client, ChatColor, "");
					SetClientCookie(client, COR_CHAT_GG, "");
					SetClientCookie(client, COR_CHAT, "");
					SetClientCookie(client, COR_CHAT_M, "RBG");
					if (tamanho_array == 2)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, "");
						SetClientCookie(client, Cor4_G_CHAT, "");
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 3)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, "");
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
						
					}
					else if (tamanho_array == 4)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
						
					}
					else if (tamanho_array == 5)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 6)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, cor6_s);
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 7)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, cor6_s);
						SetClientCookie(client, Cor7_G_CHAT, cor7_s);
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 8)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, cor6_s);
						SetClientCookie(client, Cor7_G_CHAT, cor7_s);
						SetClientCookie(client, Cor8_G_CHAT, cor8_s);
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 9)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Que_Cores[client].GetString(8, cor9_s, sizeof(cor9_s));
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, cor6_s);
						SetClientCookie(client, Cor7_G_CHAT, cor7_s);
						SetClientCookie(client, Cor8_G_CHAT, cor8_s);
						SetClientCookie(client, Cor9_G_CHAT, cor9_s);
						SetClientCookie(client, Cor10_G_CHAT, "");
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					else if (tamanho_array == 10)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Que_Cores[client].GetString(8, cor9_s, sizeof(cor9_s));
						Que_Cores[client].GetString(9, cor10_s, sizeof(cor10_s));
						SetClientCookie(client, Cor1_G_CHAT, cor1_s);
						SetClientCookie(client, Cor2_G_CHAT, cor2_s);
						SetClientCookie(client, Cor3_G_CHAT, cor3_s);
						SetClientCookie(client, Cor4_G_CHAT, cor4_s);
						SetClientCookie(client, Cor5_G_CHAT, cor5_s);
						SetClientCookie(client, Cor6_G_CHAT, cor6_s);
						SetClientCookie(client, Cor7_G_CHAT, cor7_s);
						SetClientCookie(client, Cor8_G_CHAT, cor8_s);
						SetClientCookie(client, Cor9_G_CHAT, cor9_s);
						SetClientCookie(client, Cor10_G_CHAT, cor10_s);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, sequencia_s);
						char guardar_cores_salvadas[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
						SetClientCookie(client, Numero_Cores_G_CHAT, guardar_cores_salvadas);
					}
					SetClientCookie(client, Cores_RGB_chat, "1");
					PrintHintText(client, "<pre class='fontSize-xl'>              <font color='#9F00FF'>CHAT</font>-<font color='#FF0000'>R</font><font color='#1CFF00'>G</font><font color='#00FFF9'>B</font>\n<font color='#00EB42'>APLICADA COM SUCESSO</font></pre>");
					rgb_a_chat[client] = true;
					Confirmar_SPONSPRCores_MENU(client);
				}
				case 7:
				{
					Avancar_Cores_SEL_MENU(client);
				}
				case 8:
				{
					Confirmar_SPONSPR_V2_Cores_MENU(client);
				}
				case 9:
				{
					rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
					delete(Que_Cores[client]);
					delete menu;
				}
			}
		}
		else if (action == MenuAction_Cancel)
		{
			if (Teclas == MenuCancel_Interrupted) {
				rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
				delete(Que_Cores[client]);
			}
		}
		else if (action == MenuAction_End)
		{
			delete menu;
		}
	}
	return 0;
}
//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Confirmacao Pagina Seguinte ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈

public void Confirmar_SPONSPR_V2_Cores_MENU(int client)
{
	char Texto_PNL_LIG[600];
	if (Dados_Selecionados[client].numero_cores_m == 2)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n \n", cor1_v2[client], cor2_v2[client]);
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 3)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 4)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 5)
	{
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 6)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 7)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n7 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 8)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 9)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client]);
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 10)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n 3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client], cor10_v2[client]);
	}
	char formatacao[128];
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - CHAT RGB");
	Painel.DrawText(Texto_PNL_LIG);
	Format(formatacao, sizeof(formatacao), "Formatação: %s\n \n", Dados_Selecionados[client].nome_da_formatacao);
	Painel.DrawText(formatacao);
	SetPanelCurrentKey(Painel, 1);
	Painel.DrawItem("Testar cores");
	SetPanelCurrentKey(Painel, 2);
	Painel.DrawItem("Alterar Cores");
	SetPanelCurrentKey(Painel, 3);
	Painel.DrawItem("Alterar Formatacao");
	SetPanelCurrentKey(Painel, 4);
	Painel.DrawItem("Re-fazer do Incio");
	if (fazer_becap[client])
	{
		Painel.DrawText("5. Fazer becap\n \n");
	}
	else
	{
		SetPanelCurrentKey(Painel, 5);
		Painel.DrawItem("Fazer becap\n \n");
	}
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Painel_V2_Ligacao, MENU_TIME_FOREVER);
}

public int Painel_V2_Ligacao(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				
				case 1:
				{
					///////////////////////////////////////////
					char _c1[128], _c2[128], _c3[128], _c4[128], _c5[128], _c6[128], _c7[128], _c8[128], _c9[128], _c10[128];
					int tamanho_array = Que_Cores[client].Length;
					if (tamanho_array == 2)
					{
						Que_Cores[client].GetString(0, _c1, sizeof(_c1));
						Que_Cores[client].GetString(1, _c2, sizeof(_c2));
						char _cores_salvar[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, _cores_salvar, sizeof(_cores_salvar));
						gRGN_PrintToChat(client, "\x0F| {purple}RGB-TESTE \x0F|{orchid} ➠{default}", "Tou testar as minhas cores", Dados_Selecionados[client].cores_Seq_Esc, 
							_c1, _c2, "", "", "", "", "", "", "", "", _cores_salvar);
					}
					else if (tamanho_array == 3)
					{
						Que_Cores[client].GetString(0, _c1, sizeof(_c1));
						Que_Cores[client].GetString(1, _c2, sizeof(_c2));
						Que_Cores[client].GetString(2, _c3, sizeof(_c3));
						char _cores_salvar[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, _cores_salvar, sizeof(_cores_salvar));
						gRGN_PrintToChat(client, "\x0F| {purple}RGB-TESTE \x0F|{orchid} ➠{default}", "Tou testar as minhas cores", Dados_Selecionados[client].cores_Seq_Esc, 
							_c1, _c2, _c3, "", "", "", "", "", "", "", _cores_salvar);
					}
					else if (tamanho_array == 4)
					{
						Que_Cores[client].GetString(0, _c1, sizeof(_c1));
						Que_Cores[client].GetString(1, _c2, sizeof(_c2));
						Que_Cores[client].GetString(2, _c3, sizeof(_c3));
						Que_Cores[client].GetString(3, _c4, sizeof(_c4));
						char _cores_salvar[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, _cores_salvar, sizeof(_cores_salvar));
						gRGN_PrintToChat(client, "\x0F| {purple}RGB-TESTE \x0F|{orchid} ➠{default}", "Tou testar as minhas cores", Dados_Selecionados[client].cores_Seq_Esc, 
							_c1, _c2, _c3, _c4, "", "", "", "", "", "", _cores_salvar);
					}
					else if (tamanho_array == 5)
					{
						Que_Cores[client].GetString(0, _c1, sizeof(_c1));
						Que_Cores[client].GetString(1, _c2, sizeof(_c2));
						Que_Cores[client].GetString(2, _c3, sizeof(_c3));
						Que_Cores[client].GetString(3, _c4, sizeof(_c4));
						Que_Cores[client].GetString(4, _c5, sizeof(_c5));
						char _cores_salvar[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, _cores_salvar, sizeof(_cores_salvar));
						gRGN_PrintToChat(client, "\x0F| {purple}RGB-TESTE \x0F|{orchid} ➠{default}", "Tou testar as minhas cores", Dados_Selecionados[client].cores_Seq_Esc, 
							_c1, _c2, _c3, _c4, _c5, "", "", "", "", "", _cores_salvar);
					}
					else if (tamanho_array == 6)
					{
						Que_Cores[client].GetString(0, _c1, sizeof(_c1));
						Que_Cores[client].GetString(1, _c2, sizeof(_c2));
						Que_Cores[client].GetString(2, _c3, sizeof(_c3));
						Que_Cores[client].GetString(3, _c4, sizeof(_c4));
						Que_Cores[client].GetString(4, _c5, sizeof(_c5));
						Que_Cores[client].GetString(5, _c6, sizeof(_c6));
						char _cores_salvar[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, _cores_salvar, sizeof(_cores_salvar));
						gRGN_PrintToChat(client, "\x0F| {purple}RGB-TESTE \x0F|{orchid} ➠{default}", "Tou testar as minhas cores", Dados_Selecionados[client].cores_Seq_Esc, 
							_c1, _c2, _c3, _c4, _c5, _c6, "", "", "", "", _cores_salvar);
					}
					else if (tamanho_array == 7)
					{
						Que_Cores[client].GetString(0, _c1, sizeof(_c1));
						Que_Cores[client].GetString(1, _c2, sizeof(_c2));
						Que_Cores[client].GetString(2, _c3, sizeof(_c3));
						Que_Cores[client].GetString(3, _c4, sizeof(_c4));
						Que_Cores[client].GetString(4, _c5, sizeof(_c5));
						Que_Cores[client].GetString(5, _c6, sizeof(_c6));
						Que_Cores[client].GetString(6, _c7, sizeof(_c7));
						char _cores_salvar[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, _cores_salvar, sizeof(_cores_salvar));
						gRGN_PrintToChat(client, "\x0F| {purple}RGB-TESTE \x0F|{orchid} ➠{default}", "Tou testar as minhas cores", Dados_Selecionados[client].cores_Seq_Esc, 
							_c1, _c2, _c3, _c4, _c5, _c6, _c7, "", "", "", _cores_salvar);
					}
					else if (tamanho_array == 8)
					{
						Que_Cores[client].GetString(0, _c1, sizeof(_c1));
						Que_Cores[client].GetString(1, _c2, sizeof(_c2));
						Que_Cores[client].GetString(2, _c3, sizeof(_c3));
						Que_Cores[client].GetString(3, _c4, sizeof(_c4));
						Que_Cores[client].GetString(4, _c5, sizeof(_c5));
						Que_Cores[client].GetString(5, _c6, sizeof(_c6));
						Que_Cores[client].GetString(6, _c7, sizeof(_c7));
						Que_Cores[client].GetString(7, _c8, sizeof(_c8));
						char _cores_salvar[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, _cores_salvar, sizeof(_cores_salvar));
						gRGN_PrintToChat(client, "\x0F| {purple}RGB-TESTE \x0F|{orchid} ➠{default}", "Tou testar as minhas cores", Dados_Selecionados[client].cores_Seq_Esc, 
							_c1, _c2, _c3, _c4, _c5, _c6, _c7, _c8, "", "", _cores_salvar);
					}
					else if (tamanho_array == 9)
					{
						Que_Cores[client].GetString(0, _c1, sizeof(_c1));
						Que_Cores[client].GetString(1, _c2, sizeof(_c2));
						Que_Cores[client].GetString(2, _c3, sizeof(_c3));
						Que_Cores[client].GetString(3, _c4, sizeof(_c4));
						Que_Cores[client].GetString(4, _c5, sizeof(_c5));
						Que_Cores[client].GetString(5, _c6, sizeof(_c6));
						Que_Cores[client].GetString(6, _c7, sizeof(_c7));
						Que_Cores[client].GetString(7, _c8, sizeof(_c8));
						Que_Cores[client].GetString(8, _c9, sizeof(_c9));
						char _cores_salvar[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, _cores_salvar, sizeof(_cores_salvar));
						gRGN_PrintToChat(client, "\x0F| {purple}RGB-TESTE \x0F|{orchid} ➠{default}", "Tou testar as minhas cores", Dados_Selecionados[client].cores_Seq_Esc, 
							_c1, _c2, _c3, _c4, _c5, _c6, _c7, _c8, _c9, "", _cores_salvar);
					}
					else if (tamanho_array == 10)
					{
						Que_Cores[client].GetString(0, _c1, sizeof(_c1));
						Que_Cores[client].GetString(1, _c2, sizeof(_c2));
						Que_Cores[client].GetString(2, _c3, sizeof(_c3));
						Que_Cores[client].GetString(3, _c4, sizeof(_c4));
						Que_Cores[client].GetString(4, _c5, sizeof(_c5));
						Que_Cores[client].GetString(5, _c6, sizeof(_c6));
						Que_Cores[client].GetString(6, _c7, sizeof(_c7));
						Que_Cores[client].GetString(7, _c8, sizeof(_c8));
						Que_Cores[client].GetString(8, _c9, sizeof(_c9));
						Que_Cores[client].GetString(9, _c10, sizeof(_c10));
						char _cores_salvar[128];
						IntToString(Dados_Selecionados[client].numero_cores_salvar, _cores_salvar, sizeof(_cores_salvar));
						gRGN_PrintToChat(client, "\x0F| {purple}RGB-TESTE \x0F|{orchid} ➠{default}", "Tou testar as minhas cores", Dados_Selecionados[client].cores_Seq_Esc, 
							_c1, _c2, _c3, _c4, _c5, _c6, _c7, _c8, _c9, _c10, _cores_salvar);
					}
					Confirmar_SPONSPR_V2_Cores_MENU(client);
				}
				case 2:
				{
					Alterar_Cores_Parte_Final[client] = true;
					fazer_becap[client] = false;
					RGB_QCores_SEL_MENU(client, 0);
				}
				case 3:
				{
					Alterar_Formatacao_Parte_Final[client] = true;
					fazer_becap[client] = false;
					Avancar_Cores_SEL_MENU(client);
					
				}
				case 4:
				{
					Que_Cores[client].Clear();
					fazer_becap[client] = false;
					RGB_NCores_MENU(client, 0);
				}
				case 5:
				{
					Confirmar_Becap(client);
					beca_ja_escrito[client] = false;
					B_Do_becap[client] = true;
					
				}
				case 7:
				{
					Confirmar_SPONSPRCores_MENU(client);
					Alterar_Cores_Parte_Final[client] = false;
				}
				case 9:
				{
					Alterar_Cores_Parte_Final[client] = false;
				}
			}
		}
		else if (action == MenuAction_Cancel)
		{
			if (Teclas == MenuCancel_Interrupted) {
				Alterar_Cores_Parte_Final[client] = false;
			}
		}
		else if (action == MenuAction_End)
		{
			delete menu;
		}
	}
	return 0;
}



/////// aqui bb///


public void Confirmar_Becap(int client)
{
	char Texto_PNL_LIG[600];
	if (Dados_Selecionados[client].numero_cores_m == 2)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n \n", cor1_v2[client], cor2_v2[client]);
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 3)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 4)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 5)
	{
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 6)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 7)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n7 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 8)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client]);
	}
	else if (Dados_Selecionados[client].numero_cores_m == 9)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client]);
		
	}
	else if (Dados_Selecionados[client].numero_cores_m == 10)
	{
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \n", cor1_v2[client], cor2_v2[client], cor3_v2[client], cor4_v2[client], cor5_v2[client], cor6_v2[client], cor7_v2[client], cor8_v2[client], cor9_v2[client], cor10_v2[client]);
	}
	char formatacao[128], lig_PNLL[128];
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - BECAP");
	Painel.DrawText(Texto_PNL_LIG);
	Format(formatacao, sizeof(formatacao), "Formatação: %s\n \n", Dados_Selecionados[client].nome_da_formatacao);
	Painel.DrawText(formatacao);
	if (beca_ja_escrito[client] == true && B_Do_becap[client] == false)
	{
		Format(lig_PNLL, sizeof(lig_PNLL), "Nome do Becap: %s\n \n", Nome_Escrit[client]);
		Painel.DrawText(lig_PNLL);
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawItem("Confirmar");
	}
	else
	{
		Format(lig_PNLL, sizeof(lig_PNLL), "Escreve o nome do becap no chat");
		Painel.DrawText(lig_PNLL);
		PrintHintText(client, "<pre><font color='#eb4034' class='fontSize-xl'>Escreve no chat o nome do becap</font></pre>");
	}
	SetPanelCurrentKey(Painel, 4);
	Painel.DrawItem("Cancelar\n \n");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Becap_Painel_LIG, MENU_TIME_FOREVER);
}


public int Becap_Painel_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					char Data_Horas[100];
					int Tempo_No_momento = GetTime();
					FormatTime(Data_Horas, 100, "%d-%m-%Y", Tempo_No_momento);
					Array_temporaria[client] = new ArrayList(ByteCountToCells(666));
					char cor1_s[128], cor2_s[128], cor3_s[128], cor4_s[128], cor5_s[128], cor6_s[128], cor7_s[128], cor8_s[128], cor9_s[128], cor10_s[128];
					char sequencia_s[32];
					IntToString(Dados_Selecionados[client].cores_Seq_Esc, sequencia_s, sizeof(sequencia_s));
					char guardar_cores_salvadas[128];
					IntToString(Dados_Selecionados[client].numero_cores_salvar, guardar_cores_salvadas, sizeof(guardar_cores_salvadas));
					int tamanho_array = Que_Cores[client].Length;
					if (tamanho_array == 2)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Array_temporaria[client].PushString(cor1_s);
						Array_temporaria[client].PushString(cor2_s);
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString(sequencia_s);
						Array_temporaria[client].PushString(guardar_cores_salvadas);
						//
						//	
						Tag_Beca_KV[client].JumpToKey(Nome_Escrit[client], true);
						Tag_Beca_KV[client].SetString("cor1", cor1_s);
						Tag_Beca_KV[client].SetString("cor2", cor2_s);
						Tag_Beca_KV[client].SetString("cor3", "");
						Tag_Beca_KV[client].SetString("cor4", "");
						Tag_Beca_KV[client].SetString("cor5", "");
						Tag_Beca_KV[client].SetString("cor6", "");
						Tag_Beca_KV[client].SetString("cor7", "");
						Tag_Beca_KV[client].SetString("cor8", "");
						Tag_Beca_KV[client].SetString("cor9", "");
						Tag_Beca_KV[client].SetString("cor10", "");
						Tag_Beca_KV[client].SetString("sequencia", sequencia_s);
						Tag_Beca_KV[client].SetString("numero_cores", guardar_cores_salvadas);
						Tag_Beca_KV[client].SetString("Data_Horas", Data_Horas);
						Tag_Beca_KV[client].Rewind();
						char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
						GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
						Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
						Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
						//							
						delete(Array_temporaria[client]);
					}
					else if (tamanho_array == 3)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Array_temporaria[client].PushString(cor1_s);
						Array_temporaria[client].PushString(cor2_s);
						Array_temporaria[client].PushString(cor3_s);
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString(sequencia_s);
						Array_temporaria[client].PushString(guardar_cores_salvadas);
						//
						//	
						Tag_Beca_KV[client].JumpToKey(Nome_Escrit[client], true);
						Tag_Beca_KV[client].SetString("cor1", cor1_s);
						Tag_Beca_KV[client].SetString("cor2", cor2_s);
						Tag_Beca_KV[client].SetString("cor3", cor3_s);
						Tag_Beca_KV[client].SetString("cor4", "");
						Tag_Beca_KV[client].SetString("cor5", "");
						Tag_Beca_KV[client].SetString("cor6", "");
						Tag_Beca_KV[client].SetString("cor7", "");
						Tag_Beca_KV[client].SetString("cor8", "");
						Tag_Beca_KV[client].SetString("cor9", "");
						Tag_Beca_KV[client].SetString("cor10", "");
						Tag_Beca_KV[client].SetString("sequencia", sequencia_s);
						Tag_Beca_KV[client].SetString("numero_cores", guardar_cores_salvadas);
						Tag_Beca_KV[client].SetString("Data_Horas", Data_Horas);
						Tag_Beca_KV[client].Rewind();
						char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
						GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
						Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
						Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
						//							
						delete(Array_temporaria[client]);
						
						
					}
					else if (tamanho_array == 4)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Array_temporaria[client].PushString(cor1_s);
						Array_temporaria[client].PushString(cor2_s);
						Array_temporaria[client].PushString(cor3_s);
						Array_temporaria[client].PushString(cor4_s);
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString(sequencia_s);
						Array_temporaria[client].PushString(guardar_cores_salvadas);
						//
						//	
						Tag_Beca_KV[client].JumpToKey(Nome_Escrit[client], true);
						Tag_Beca_KV[client].SetString("cor1", cor1_s);
						Tag_Beca_KV[client].SetString("cor2", cor2_s);
						Tag_Beca_KV[client].SetString("cor3", cor3_s);
						Tag_Beca_KV[client].SetString("cor4", cor4_s);
						Tag_Beca_KV[client].SetString("cor5", "");
						Tag_Beca_KV[client].SetString("cor6", "");
						Tag_Beca_KV[client].SetString("cor7", "");
						Tag_Beca_KV[client].SetString("cor8", "");
						Tag_Beca_KV[client].SetString("cor9", "");
						Tag_Beca_KV[client].SetString("cor10", "");
						Tag_Beca_KV[client].SetString("sequencia", sequencia_s);
						Tag_Beca_KV[client].SetString("numero_cores", guardar_cores_salvadas);
						Tag_Beca_KV[client].SetString("Data_Horas", Data_Horas);
						Tag_Beca_KV[client].Rewind();
						char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
						GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
						Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
						Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
						//							
						delete(Array_temporaria[client]);
						
						
					}
					else if (tamanho_array == 5)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Array_temporaria[client].PushString(cor1_s);
						Array_temporaria[client].PushString(cor2_s);
						Array_temporaria[client].PushString(cor3_s);
						Array_temporaria[client].PushString(cor4_s);
						Array_temporaria[client].PushString(cor5_s);
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString(sequencia_s);
						Array_temporaria[client].PushString(guardar_cores_salvadas);
						//
						//	
						Tag_Beca_KV[client].JumpToKey(Nome_Escrit[client], true);
						Tag_Beca_KV[client].SetString("cor1", cor1_s);
						Tag_Beca_KV[client].SetString("cor2", cor2_s);
						Tag_Beca_KV[client].SetString("cor3", cor3_s);
						Tag_Beca_KV[client].SetString("cor4", cor4_s);
						Tag_Beca_KV[client].SetString("cor5", cor5_s);
						Tag_Beca_KV[client].SetString("cor6", "");
						Tag_Beca_KV[client].SetString("cor7", "");
						Tag_Beca_KV[client].SetString("cor8", "");
						Tag_Beca_KV[client].SetString("cor9", "");
						Tag_Beca_KV[client].SetString("cor10", "");
						Tag_Beca_KV[client].SetString("sequencia", sequencia_s);
						Tag_Beca_KV[client].SetString("numero_cores", guardar_cores_salvadas);
						Tag_Beca_KV[client].SetString("Data_Horas", Data_Horas);
						Tag_Beca_KV[client].Rewind();
						char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
						GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
						Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
						Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
						//							
						delete(Array_temporaria[client]);
						
					}
					else if (tamanho_array == 6)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Array_temporaria[client].PushString(cor1_s);
						Array_temporaria[client].PushString(cor2_s);
						Array_temporaria[client].PushString(cor3_s);
						Array_temporaria[client].PushString(cor4_s);
						Array_temporaria[client].PushString(cor5_s);
						Array_temporaria[client].PushString(cor6_s);
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString(sequencia_s);
						Array_temporaria[client].PushString(guardar_cores_salvadas);
						//
						//	
						Tag_Beca_KV[client].JumpToKey(Nome_Escrit[client], true);
						Tag_Beca_KV[client].SetString("cor1", cor1_s);
						Tag_Beca_KV[client].SetString("cor2", cor2_s);
						Tag_Beca_KV[client].SetString("cor3", cor3_s);
						Tag_Beca_KV[client].SetString("cor4", cor4_s);
						Tag_Beca_KV[client].SetString("cor5", cor5_s);
						Tag_Beca_KV[client].SetString("cor6", cor6_s);
						Tag_Beca_KV[client].SetString("cor7", "");
						Tag_Beca_KV[client].SetString("cor8", "");
						Tag_Beca_KV[client].SetString("cor9", "");
						Tag_Beca_KV[client].SetString("cor10", "");
						Tag_Beca_KV[client].SetString("sequencia", sequencia_s);
						Tag_Beca_KV[client].SetString("numero_cores", guardar_cores_salvadas);
						Tag_Beca_KV[client].SetString("Data_Horas", Data_Horas);
						Tag_Beca_KV[client].Rewind();
						char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
						GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
						Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
						Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
						//							
						delete(Array_temporaria[client]);
					}
					else if (tamanho_array == 7)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Array_temporaria[client].PushString(cor1_s);
						Array_temporaria[client].PushString(cor2_s);
						Array_temporaria[client].PushString(cor3_s);
						Array_temporaria[client].PushString(cor4_s);
						Array_temporaria[client].PushString(cor5_s);
						Array_temporaria[client].PushString(cor6_s);
						Array_temporaria[client].PushString(cor7_s);
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString(sequencia_s);
						Array_temporaria[client].PushString(guardar_cores_salvadas);
						//
						//	
						Tag_Beca_KV[client].JumpToKey(Nome_Escrit[client], true);
						Tag_Beca_KV[client].SetString("cor1", cor1_s);
						Tag_Beca_KV[client].SetString("cor2", cor2_s);
						Tag_Beca_KV[client].SetString("cor3", cor3_s);
						Tag_Beca_KV[client].SetString("cor4", cor4_s);
						Tag_Beca_KV[client].SetString("cor5", cor5_s);
						Tag_Beca_KV[client].SetString("cor6", cor6_s);
						Tag_Beca_KV[client].SetString("cor7", cor7_s);
						Tag_Beca_KV[client].SetString("cor8", "");
						Tag_Beca_KV[client].SetString("cor9", "");
						Tag_Beca_KV[client].SetString("cor10", "");
						Tag_Beca_KV[client].SetString("sequencia", sequencia_s);
						Tag_Beca_KV[client].SetString("numero_cores", guardar_cores_salvadas);
						Tag_Beca_KV[client].SetString("Data_Horas", Data_Horas);
						Tag_Beca_KV[client].Rewind();
						char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
						GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
						Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
						Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
						//							
						delete(Array_temporaria[client]);
					}
					else if (tamanho_array == 8)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Array_temporaria[client].PushString(cor1_s);
						Array_temporaria[client].PushString(cor2_s);
						Array_temporaria[client].PushString(cor3_s);
						Array_temporaria[client].PushString(cor4_s);
						Array_temporaria[client].PushString(cor5_s);
						Array_temporaria[client].PushString(cor6_s);
						Array_temporaria[client].PushString(cor7_s);
						Array_temporaria[client].PushString(cor8_s);
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString(sequencia_s);
						Array_temporaria[client].PushString(guardar_cores_salvadas);
						//
						//	
						Tag_Beca_KV[client].JumpToKey(Nome_Escrit[client], true);
						Tag_Beca_KV[client].SetString("cor1", cor1_s);
						Tag_Beca_KV[client].SetString("cor2", cor2_s);
						Tag_Beca_KV[client].SetString("cor3", cor3_s);
						Tag_Beca_KV[client].SetString("cor4", cor4_s);
						Tag_Beca_KV[client].SetString("cor5", cor5_s);
						Tag_Beca_KV[client].SetString("cor6", cor6_s);
						Tag_Beca_KV[client].SetString("cor7", cor7_s);
						Tag_Beca_KV[client].SetString("cor8", cor8_s);
						Tag_Beca_KV[client].SetString("cor9", "");
						Tag_Beca_KV[client].SetString("cor10", "");
						Tag_Beca_KV[client].SetString("sequencia", sequencia_s);
						Tag_Beca_KV[client].SetString("numero_cores", guardar_cores_salvadas);
						Tag_Beca_KV[client].SetString("Data_Horas", Data_Horas);
						Tag_Beca_KV[client].Rewind();
						char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
						GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
						Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
						Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
						//							
						delete(Array_temporaria[client]);
					}
					else if (tamanho_array == 9)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Que_Cores[client].GetString(8, cor9_s, sizeof(cor9_s));
						Array_temporaria[client].PushString(cor1_s);
						Array_temporaria[client].PushString(cor2_s);
						Array_temporaria[client].PushString(cor3_s);
						Array_temporaria[client].PushString(cor4_s);
						Array_temporaria[client].PushString(cor5_s);
						Array_temporaria[client].PushString(cor6_s);
						Array_temporaria[client].PushString(cor7_s);
						Array_temporaria[client].PushString(cor8_s);
						Array_temporaria[client].PushString(cor9_s);
						Array_temporaria[client].PushString("");
						Array_temporaria[client].PushString(sequencia_s);
						Array_temporaria[client].PushString(guardar_cores_salvadas);
						//
						//	
						Tag_Beca_KV[client].JumpToKey(Nome_Escrit[client], true);
						Tag_Beca_KV[client].SetString("cor1", cor1_s);
						Tag_Beca_KV[client].SetString("cor2", cor2_s);
						Tag_Beca_KV[client].SetString("cor3", cor3_s);
						Tag_Beca_KV[client].SetString("cor4", cor4_s);
						Tag_Beca_KV[client].SetString("cor5", cor5_s);
						Tag_Beca_KV[client].SetString("cor6", cor6_s);
						Tag_Beca_KV[client].SetString("cor7", cor7_s);
						Tag_Beca_KV[client].SetString("cor8", cor8_s);
						Tag_Beca_KV[client].SetString("cor9", cor9_s);
						Tag_Beca_KV[client].SetString("cor10", "");
						Tag_Beca_KV[client].SetString("sequencia", sequencia_s);
						Tag_Beca_KV[client].SetString("numero_cores", guardar_cores_salvadas);
						Tag_Beca_KV[client].SetString("Data_Horas", Data_Horas);
						Tag_Beca_KV[client].Rewind();
						char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
						GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
						Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
						Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
						//							
						delete(Array_temporaria[client]);
					}
					else if (tamanho_array == 10)
					{
						Que_Cores[client].GetString(0, cor1_s, sizeof(cor1_s));
						Que_Cores[client].GetString(1, cor2_s, sizeof(cor2_s));
						Que_Cores[client].GetString(2, cor3_s, sizeof(cor3_s));
						Que_Cores[client].GetString(3, cor4_s, sizeof(cor4_s));
						Que_Cores[client].GetString(4, cor5_s, sizeof(cor5_s));
						Que_Cores[client].GetString(5, cor6_s, sizeof(cor6_s));
						Que_Cores[client].GetString(6, cor7_s, sizeof(cor7_s));
						Que_Cores[client].GetString(7, cor8_s, sizeof(cor8_s));
						Que_Cores[client].GetString(8, cor9_s, sizeof(cor9_s));
						Que_Cores[client].GetString(9, cor10_s, sizeof(cor10_s));
						Array_temporaria[client].PushString(cor1_s);
						Array_temporaria[client].PushString(cor2_s);
						Array_temporaria[client].PushString(cor3_s);
						Array_temporaria[client].PushString(cor4_s);
						Array_temporaria[client].PushString(cor5_s);
						Array_temporaria[client].PushString(cor6_s);
						Array_temporaria[client].PushString(cor7_s);
						Array_temporaria[client].PushString(cor8_s);
						Array_temporaria[client].PushString(cor9_s);
						Array_temporaria[client].PushString(cor10_s);
						Array_temporaria[client].PushString(sequencia_s);
						Array_temporaria[client].PushString(guardar_cores_salvadas);
						//
						//	
						Tag_Beca_KV[client].JumpToKey(Nome_Escrit[client], true);
						Tag_Beca_KV[client].SetString("cor1", cor1_s);
						Tag_Beca_KV[client].SetString("cor2", cor2_s);
						Tag_Beca_KV[client].SetString("cor3", cor3_s);
						Tag_Beca_KV[client].SetString("cor4", cor4_s);
						Tag_Beca_KV[client].SetString("cor5", cor5_s);
						Tag_Beca_KV[client].SetString("cor6", cor6_s);
						Tag_Beca_KV[client].SetString("cor7", cor7_s);
						Tag_Beca_KV[client].SetString("cor8", cor8_s);
						Tag_Beca_KV[client].SetString("cor9", cor9_s);
						Tag_Beca_KV[client].SetString("cor10", cor10_s);
						Tag_Beca_KV[client].SetString("sequencia", sequencia_s);
						Tag_Beca_KV[client].SetString("numero_cores", guardar_cores_salvadas);
						Tag_Beca_KV[client].SetString("Data_Horas", Data_Horas);
						Tag_Beca_KV[client].Rewind();
						char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
						GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
						Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
						Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
						//							
						delete(Array_temporaria[client]);
					}
					PrintHintText(client, "<pre><font color='#eb4034' class='fontSize-xl'>BECAP FEITO COM SUCESSO</font></pre>");
					beca_ja_escrito[client] = false;
					B_Do_becap[client] = false;
					fazer_becap[client] = true;
					Nome_Escrit[client] = "";
					Confirmar_SPONSPRCores_MENU(client);
				}
				case 4:
				{
					fazer_becap[client] = false;
					beca_ja_escrito[client] = false;
					B_Do_becap[client] = false;
					Nome_Escrit[client] = "";
					Confirmar_SPONSPR_V2_Cores_MENU(client);
				}
				case 9:
				{
					fazer_becap[client] = false;
					beca_ja_escrito[client] = false;
					B_Do_becap[client] = false;
					Nome_Escrit[client] = "";
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