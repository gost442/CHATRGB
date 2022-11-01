//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Ver Cores Selecionadas ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
char _1B[MAXPLAYERS + 1][128], _2B[MAXPLAYERS + 1][128], _3B[MAXPLAYERS + 1][128], _4B[MAXPLAYERS + 1][128], _5B[MAXPLAYERS + 1][128], _6B[MAXPLAYERS + 1][128], _7B[MAXPLAYERS + 1][128];
char _8B[MAXPLAYERS + 1][128], _9B[MAXPLAYERS + 1][128], _10B[MAXPLAYERS + 1][128];
public void BEcap_Trocar_CoresM(int client, int Pagina)
{
	Menu menu = new Menu(BEcap_Trocar_Cores_LIG);
	int tamanho_array_arvore[MAXPLAYERS + 1];
	tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
	if (tamanho_array_arvore[client] == 5)
	{
		Array_Passagem_Funcao[client].GetString(0, _1B[client], sizeof(_1B[]));
		Array_Passagem_Funcao[client].GetString(1, _2B[client], sizeof(_2B[]));
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s\n2 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do Becap: %s\n \n", _1B[client], _2B[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
	}
	else if (tamanho_array_arvore[client] == 6)
	{
		Array_Passagem_Funcao[client].GetString(0, _1B[client], sizeof(_1B[]));
		Array_Passagem_Funcao[client].GetString(1, _2B[client], sizeof(_2B[]));
		Array_Passagem_Funcao[client].GetString(2, _3B[client], sizeof(_3B[]));
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		
	}
	else if (tamanho_array_arvore[client] == 7)
	{
		
		Array_Passagem_Funcao[client].GetString(0, _1B[client], sizeof(_1B[]));
		Array_Passagem_Funcao[client].GetString(1, _2B[client], sizeof(_2B[]));
		Array_Passagem_Funcao[client].GetString(2, _3B[client], sizeof(_3B[]));
		Array_Passagem_Funcao[client].GetString(3, _4B[client], sizeof(_4B[]));
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
	}
	else if (tamanho_array_arvore[client] == 8)
	{
		Array_Passagem_Funcao[client].GetString(0, _1B[client], sizeof(_1B[]));
		Array_Passagem_Funcao[client].GetString(1, _2B[client], sizeof(_2B[]));
		Array_Passagem_Funcao[client].GetString(2, _3B[client], sizeof(_3B[]));
		Array_Passagem_Funcao[client].GetString(3, _4B[client], sizeof(_4B[]));
		Array_Passagem_Funcao[client].GetString(4, _5B[client], sizeof(_5B[]));
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
		menu.AddItem("5", "Mudar 5 cor");
	}
	else if (tamanho_array_arvore[client] == 9)
	{
		Array_Passagem_Funcao[client].GetString(0, _1B[client], sizeof(_1B[]));
		Array_Passagem_Funcao[client].GetString(1, _2B[client], sizeof(_2B[]));
		Array_Passagem_Funcao[client].GetString(2, _3B[client], sizeof(_3B[]));
		Array_Passagem_Funcao[client].GetString(3, _4B[client], sizeof(_4B[]));
		Array_Passagem_Funcao[client].GetString(4, _5B[client], sizeof(_5B[]));
		Array_Passagem_Funcao[client].GetString(5, _6B[client], sizeof(_6B[]));
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client], _6B[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
		menu.AddItem("5", "Mudar 5 cor");
		menu.AddItem("6", "Mudar 6 cor");
	}
	else if (tamanho_array_arvore[client] == 10)
	{
		Array_Passagem_Funcao[client].GetString(0, _1B[client], sizeof(_1B[]));
		Array_Passagem_Funcao[client].GetString(1, _2B[client], sizeof(_2B[]));
		Array_Passagem_Funcao[client].GetString(2, _3B[client], sizeof(_3B[]));
		Array_Passagem_Funcao[client].GetString(3, _4B[client], sizeof(_4B[]));
		Array_Passagem_Funcao[client].GetString(4, _5B[client], sizeof(_5B[]));
		Array_Passagem_Funcao[client].GetString(5, _6B[client], sizeof(_6B[]));
		Array_Passagem_Funcao[client].GetString(6, _7B[client], sizeof(_7B[]));
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do Becap: %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client], _6B[client], _7B[client]);
		menu.AddItem("0", "Trocar Posicoes");
		menu.AddItem("1", "Mudar 1 cor");
		menu.AddItem("2", "Mudar 2 cor");
		menu.AddItem("3", "Mudar 3 cor");
		menu.AddItem("4", "Mudar 4 cor");
		menu.AddItem("5", "Mudar 5 cor");
		menu.AddItem("6", "Mudar 6 cor");
		menu.AddItem("7", "Mudar 7 cor");
	}
	else if (tamanho_array_arvore[client] == 11)
	{
		Array_Passagem_Funcao[client].GetString(0, _1B[client], sizeof(_1B[]));
		Array_Passagem_Funcao[client].GetString(1, _2B[client], sizeof(_2B[]));
		Array_Passagem_Funcao[client].GetString(2, _3B[client], sizeof(_3B[]));
		Array_Passagem_Funcao[client].GetString(3, _4B[client], sizeof(_4B[]));
		Array_Passagem_Funcao[client].GetString(4, _5B[client], sizeof(_5B[]));
		Array_Passagem_Funcao[client].GetString(5, _6B[client], sizeof(_6B[]));
		Array_Passagem_Funcao[client].GetString(6, _7B[client], sizeof(_7B[]));
		Array_Passagem_Funcao[client].GetString(7, _8B[client], sizeof(_8B[]));
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client], _6B[client], _7B[client], _8B[client]);
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
	else if (tamanho_array_arvore[client] == 12)
	{
		Array_Passagem_Funcao[client].GetString(0, _1B[client], sizeof(_1B[]));
		Array_Passagem_Funcao[client].GetString(1, _2B[client], sizeof(_2B[]));
		Array_Passagem_Funcao[client].GetString(2, _3B[client], sizeof(_3B[]));
		Array_Passagem_Funcao[client].GetString(3, _4B[client], sizeof(_4B[]));
		Array_Passagem_Funcao[client].GetString(4, _5B[client], sizeof(_5B[]));
		Array_Passagem_Funcao[client].GetString(5, _6B[client], sizeof(_6B[]));
		Array_Passagem_Funcao[client].GetString(6, _7B[client], sizeof(_7B[]));
		Array_Passagem_Funcao[client].GetString(7, _8B[client], sizeof(_8B[]));
		Array_Passagem_Funcao[client].GetString(8, _9B[client], sizeof(_9B[]));
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client], _6B[client], _7B[client], _8B[client], _9B[client]);
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
	else if (tamanho_array_arvore[client] == 13)
	{
		Array_Passagem_Funcao[client].GetString(0, _1B[client], sizeof(_1B[]));
		Array_Passagem_Funcao[client].GetString(1, _2B[client], sizeof(_2B[]));
		Array_Passagem_Funcao[client].GetString(2, _3B[client], sizeof(_3B[]));
		Array_Passagem_Funcao[client].GetString(3, _4B[client], sizeof(_4B[]));
		Array_Passagem_Funcao[client].GetString(4, _5B[client], sizeof(_5B[]));
		Array_Passagem_Funcao[client].GetString(5, _6B[client], sizeof(_6B[]));
		Array_Passagem_Funcao[client].GetString(6, _7B[client], sizeof(_7B[]));
		Array_Passagem_Funcao[client].GetString(7, _8B[client], sizeof(_8B[]));
		Array_Passagem_Funcao[client].GetString(8, _9B[client], sizeof(_9B[]));
		Array_Passagem_Funcao[client].GetString(9, _10B[client], sizeof(_10B[]));
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client], _6B[client], _7B[client], _8B[client], _9B[client], _10B[client]);
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

public int BEcap_Trocar_Cores_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			if (StrEqual(P_Item, "0"))
			{
				Becap_Trocar_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "1"))
			{
				cor_a_mudar_becap[client] = _1B[client];
				Posicao_Trocar_Becap[client] = 0;
				Posicao_Trocar_TxT_Becap[client] = 1;
				
				BEcap_QCores_Menu(client, 0);
			}
			else if (StrEqual(P_Item, "2"))
			{
				cor_a_mudar_becap[client] = _2B[client];
				Posicao_Trocar_Becap[client] = 1;
				Posicao_Trocar_TxT_Becap[client] = 2;
				
				BEcap_QCores_Menu(client, 0);
				
			}
			else if (StrEqual(P_Item, "3"))
			{
				cor_a_mudar_becap[client] = _3B[client];
				Posicao_Trocar_Becap[client] = 2;
				Posicao_Trocar_TxT_Becap[client] = 3;
				
				BEcap_QCores_Menu(client, 0);
				
			}
			else if (StrEqual(P_Item, "4"))
			{
				cor_a_mudar_becap[client] = _4B[client];
				Posicao_Trocar_Becap[client] = 3;
				Posicao_Trocar_TxT_Becap[client] = 4;
				
				BEcap_QCores_Menu(client, 0);
			}
			else if (StrEqual(P_Item, "5"))
			{
				cor_a_mudar_becap[client] = _5B[client];
				Posicao_Trocar_Becap[client] = 4;
				Posicao_Trocar_TxT_Becap[client] = 5;
				
				BEcap_QCores_Menu(client, 0);
			}
			else if (StrEqual(P_Item, "6"))
			{
				cor_a_mudar_becap[client] = _6B[client];
				Posicao_Trocar_Becap[client] = 5;
				Posicao_Trocar_TxT_Becap[client] = 6;
				
				BEcap_QCores_Menu(client, 0);
			}
			else if (StrEqual(P_Item, "7"))
			{
				cor_a_mudar_becap[client] = _7B[client];
				Posicao_Trocar_Becap[client] = 6;
				Posicao_Trocar_TxT_Becap[client] = 7;
				
				BEcap_QCores_Menu(client, 0);
			}
			else if (StrEqual(P_Item, "8"))
			{
				cor_a_mudar_becap[client] = _8B[client];
				Posicao_Trocar_Becap[client] = 7;
				Posicao_Trocar_TxT_Becap[client] = 8;
				
				BEcap_QCores_Menu(client, 0);
			}
			else if (StrEqual(P_Item, "9"))
			{
				cor_a_mudar_becap[client] = _9B[client];
				Posicao_Trocar_Becap[client] = 8;
				Posicao_Trocar_TxT_Becap[client] = 9;
				
				BEcap_QCores_Menu(client, 0);
			}
			else if (StrEqual(P_Item, "10"))
			{
				cor_a_mudar_becap[client] = _10B[client];
				Posicao_Trocar_Becap[client] = 9;
				Posicao_Trocar_TxT_Becap[client] = 10;
				
				BEcap_QCores_Menu(client, 0);
			}
			EBCaps_QCores_ESCL[client] = GetMenuSelectionPosition();
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				Editar_Becap(client);
			}
			if (Posicao == MenuCancel_Exit) {
				cor_a_mudar_becap[client] = "";
				Posicao_Trocar_Becap[client] = 0;
				Posicao_Trocar_TxT_Becap[client] = 0;
			}
		}
		else if (Accao == MenuAction_End)
		{
			delete menu;
		}
		
	}
	return 0;
}



//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ Escolher Cores ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈
void BEcap_QCores_Menu(int client, int Pagina)
{
	Menu menu = new Menu(BEcap_QCores_Menu_LIG);
	menu.SetTitle("#Darkness-CM - Lista de Cores\nEscolhe para substituires\n \nCor Atual: %s\nSituada na Posicão: %i\n \n", cor_a_mudar_becap[client], Posicao_Trocar_TxT_Becap[client]);
	menu.AddItem("1", "Vermelho Claro", StrEqual(cor_a_mudar_becap[client], "Vermelho Claro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("2", "Vermelho", StrEqual(cor_a_mudar_becap[client], "Vermelho") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("3", "Vermelho Escuro", StrEqual(cor_a_mudar_becap[client], "Vermelho Escuro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("4", "Normal", StrEqual(cor_a_mudar_becap[client], "Normal") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("5", "Azul Claro", StrEqual(cor_a_mudar_becap[client], "Azul Claro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("6", "Azul", StrEqual(cor_a_mudar_becap[client], "Azul") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("7", "Azul Escuro", StrEqual(cor_a_mudar_becap[client], "Azul Escuro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("8", "Roxo", StrEqual(cor_a_mudar_becap[client], "Roxo") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("9", "Violeta", StrEqual(cor_a_mudar_becap[client], "Violeta") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("10", "Amarelo", StrEqual(cor_a_mudar_becap[client], "Amarelo") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("11", "Dourado", StrEqual(cor_a_mudar_becap[client], "Dourado") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("12", "Verde Claro", StrEqual(cor_a_mudar_becap[client], "Verde Claro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("13", "Verde", StrEqual(cor_a_mudar_becap[client], "Verde") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("14", "Lima", StrEqual(cor_a_mudar_becap[client], "Lima") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("15", "Cinza Claro", StrEqual(cor_a_mudar_becap[client], "Cinza Claro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.AddItem("16", "Cinza Escuro", StrEqual(cor_a_mudar_becap[client], "Cinza Escuro") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	menu.ExitBackButton = true;
	menu.ExitButton = true;
	menu.DisplayAt(client, Pagina, MENU_TIME_FOREVER);
}
public int BEcap_QCores_Menu_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char _1[MAXPLAYERS + 1][128], _2[MAXPLAYERS + 1][128], _3[MAXPLAYERS + 1][128], _4[MAXPLAYERS + 1][128], _5[MAXPLAYERS + 1][128], _6[MAXPLAYERS + 1][128], _7[MAXPLAYERS + 1][128];
			char _8[MAXPLAYERS + 1][128], _9[MAXPLAYERS + 1][128], _10[MAXPLAYERS + 1][128], _11[MAXPLAYERS + 1][128], _12[MAXPLAYERS + 1][128], _13[MAXPLAYERS + 1][128];
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			if (StrEqual(P_Item, "1"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Vermelho Claro");
			}
			else if (StrEqual(P_Item, "2"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Vermelho");
			}
			
			else if (StrEqual(P_Item, "3"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Vermelho Escuro");
				
			}
			else if (StrEqual(P_Item, "4"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Normal");
				
			}
			else if (StrEqual(P_Item, "5"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Azul Claro");
				
			}
			else if (StrEqual(P_Item, "6"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Azul");
				
			}
			else if (StrEqual(P_Item, "7"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Azul Escuro");
				
			}
			else if (StrEqual(P_Item, "8"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Roxo");
			}
			else if (StrEqual(P_Item, "9"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Violeta");
			}
			else if (StrEqual(P_Item, "10"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Amarelo");
				
			}
			else if (StrEqual(P_Item, "11"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Dourado");
				
			}
			else if (StrEqual(P_Item, "12"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Verde Claro");
			}
			else if (StrEqual(P_Item, "13"))
			{
				
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Verde");
			}
			else if (StrEqual(P_Item, "14"))
			{
				
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Lima");
			}
			else if (StrEqual(P_Item, "15"))
			{
				
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Cinza Claro");
			}
			else if (StrEqual(P_Item, "16"))
			{
				Array_Passagem_Funcao[client].SetString(Posicao_Trocar_Becap[client], "Cinza Escuro");
			}
			char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
			GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
			Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
			Tag_Beca_KV_limpar[client] = new KeyValues("TAGS BECAP");
			if (Tag_Beca_KV_limpar[client].ImportFromFile(Senhor_Buffalo))
			{
				Tag_Beca_KV_limpar[client].Rewind();
				if (Tag_Beca_KV_limpar[client].GotoFirstSubKey())
				{
					do
					{
						Tag_Beca_KV_limpar[client].DeleteThis();
						Tag_Beca_KV_limpar[client].Rewind();
					}
					while (Tag_Beca_KV_limpar[client].GotoFirstSubKey());
				}
				Tag_Beca_KV_limpar[client].Rewind();
				Tag_Beca_KV_limpar[client].ExportToFile(Senhor_Buffalo);
				delete Tag_Beca_KV_limpar[client];
			}
			
			Tag_Beca_KV[client].Rewind();
			if (Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client]))
			{
				Tag_Beca_KV[client].DeleteThis();
				Tag_Beca_KV[client].Rewind();
			}
			Tag_Beca_KV[client].Rewind();
			int tamanho_array_arvore[MAXPLAYERS + 1];
			tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
			if (tamanho_array_arvore[client] == 5)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", "");
				Tag_Beca_KV[client].SetString("cor4", "");
				Tag_Beca_KV[client].SetString("cor5", "");
				Tag_Beca_KV[client].SetString("cor6", "");
				Tag_Beca_KV[client].SetString("cor7", "");
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _3[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _4[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _5[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 6)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", "");
				Tag_Beca_KV[client].SetString("cor5", "");
				Tag_Beca_KV[client].SetString("cor6", "");
				Tag_Beca_KV[client].SetString("cor7", "");
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _4[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _5[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _6[client]);
				Tag_Beca_KV[client].Rewind();
				
				
				
			}
			else if (tamanho_array_arvore[client] == 7)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", "");
				Tag_Beca_KV[client].SetString("cor6", "");
				Tag_Beca_KV[client].SetString("cor7", "");
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _5[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _6[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _7[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 8)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", "");
				Tag_Beca_KV[client].SetString("cor7", "");
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _6[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _7[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _8[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 9)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", _6[client]);
				Tag_Beca_KV[client].SetString("cor7", "");
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _7[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _8[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _9[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 10)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
				Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", _6[client]);
				Tag_Beca_KV[client].SetString("cor7", _7[client]);
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _8[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _9[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _10[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 11)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
				Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
				Array_Passagem_Funcao[client].GetString(10, _11[client], sizeof(_11[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", _6[client]);
				Tag_Beca_KV[client].SetString("cor7", _7[client]);
				Tag_Beca_KV[client].SetString("cor8", _8[client]);
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _9[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _10[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _11[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 12)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
				Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
				Array_Passagem_Funcao[client].GetString(10, _11[client], sizeof(_11[]));
				Array_Passagem_Funcao[client].GetString(11, _12[client], sizeof(_12[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", _6[client]);
				Tag_Beca_KV[client].SetString("cor7", _7[client]);
				Tag_Beca_KV[client].SetString("cor8", _8[client]);
				Tag_Beca_KV[client].SetString("cor9", _9[client]);
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _10[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _11[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _12[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 13)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
				Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
				Array_Passagem_Funcao[client].GetString(10, _11[client], sizeof(_11[]));
				Array_Passagem_Funcao[client].GetString(11, _12[client], sizeof(_12[]));
				Array_Passagem_Funcao[client].GetString(12, _13[client], sizeof(_13[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", _6[client]);
				Tag_Beca_KV[client].SetString("cor7", _7[client]);
				Tag_Beca_KV[client].SetString("cor8", _8[client]);
				Tag_Beca_KV[client].SetString("cor9", _9[client]);
				Tag_Beca_KV[client].SetString("cor10", _10[client]);
				Tag_Beca_KV[client].SetString("sequencia", _11[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _12[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _13[client]);
				Tag_Beca_KV[client].Rewind();
				
			}
			Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
			char hint_lig[399];
			Format(hint_lig, sizeof(hint_lig), "<pre class='fontSize-xl'><font color='#00EB42'>ALTERAÇÃO FEITA COM SUCESSO</font></pre>");
			PrintHintText(client, hint_lig);
			BEcap_Trocar_CoresM(client, EBCaps_QCores_ESCL[client]);
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				BEcap_Trocar_CoresM(client, EBCaps_QCores_ESCL[client]);
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
char cor_selecionada_trocar_becap[MAXPLAYERS + 1][68];
int posicao_a_trocar_becap[MAXPLAYERS + 1];
public void Becap_Trocar_QCores_SEL_MENU(int client, int Pagina)
{
	
	Menu menu = new Menu(Becap_Trocar_QCores_SEL_LIG);
	int tamanho_array_arvore[MAXPLAYERS + 1];
	tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
	if (tamanho_array_arvore[client] == 5)
	{
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s\n2 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do Becap: %s\n \n", _1B[client], _2B[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
	}
	else if (tamanho_array_arvore[client] == 6)
	{
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		
	}
	else if (tamanho_array_arvore[client] == 7)
	{
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
	}
	else if (tamanho_array_arvore[client] == 8)
	{
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
		menu.AddItem("5", "Trocar Posicao 5");
	}
	else if (tamanho_array_arvore[client] == 9)
	{
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client], _6B[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
		menu.AddItem("5", "Trocar Posicao 5");
		menu.AddItem("6", "Trocar Posicao 6");
	}
	else if (tamanho_array_arvore[client] == 10)
	{
		
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do Becap: %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client], _6B[client], _7B[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
		menu.AddItem("5", "Trocar Posicao 5");
		menu.AddItem("6", "Trocar Posicao 6");
		menu.AddItem("7", "Trocar Posicao 7");
	}
	else if (tamanho_array_arvore[client] == 11)
	{
		
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client], _6B[client], _7B[client], _8B[client]);
		menu.AddItem("1", "Trocar Posicao 1");
		menu.AddItem("2", "Trocar Posicao 2");
		menu.AddItem("3", "Trocar Posicao 3");
		menu.AddItem("4", "Trocar Posicao 4");
		menu.AddItem("5", "Trocar Posicao 5");
		menu.AddItem("6", "Trocar Posicao 6");
		menu.AddItem("7", "Trocar Posicao 7");
		menu.AddItem("8", "Trocar Posicao 8");
	}
	else if (tamanho_array_arvore[client] == 12)
	{
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client], _6B[client], _7B[client], _8B[client], _9B[client]);
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
	else if (tamanho_array_arvore[client] == 13)
	{
		menu.SetTitle("#Darkness-CM - Cores\n \nCores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \n", _1B[client], _2B[client], 
			_3B[client], _4B[client], _5B[client], _6B[client], _7B[client], _8B[client], _9B[client], _10B[client]);
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

public int Becap_Trocar_QCores_SEL_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			if (StrEqual(P_Item, "1"))
			{
				posicao_a_trocar_becap[client] = 0;
				cor_selecionada_trocar_becap[client] = S_Item;
				Becap_Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "2"))
			{
				posicao_a_trocar_becap[client] = 1;
				cor_selecionada_trocar_becap[client] = S_Item;
				Becap_Pela_QCores_SEL_MENU(client, 0);
				
			}
			else if (StrEqual(P_Item, "3"))
			{
				posicao_a_trocar_becap[client] = 2;
				cor_selecionada_trocar_becap[client] = S_Item;
				Becap_Pela_QCores_SEL_MENU(client, 0);
				
			}
			else if (StrEqual(P_Item, "4"))
			{
				posicao_a_trocar_becap[client] = 3;
				cor_selecionada_trocar_becap[client] = S_Item;
				Becap_Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "5"))
			{
				posicao_a_trocar_becap[client] = 4;
				cor_selecionada_trocar_becap[client] = S_Item;
				Becap_Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "6"))
			{
				posicao_a_trocar_becap[client] = 5;
				cor_selecionada_trocar_becap[client] = S_Item;
				Becap_Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "7"))
			{
				posicao_a_trocar_becap[client] = 6;
				cor_selecionada_trocar_becap[client] = S_Item;
				Becap_Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "8"))
			{
				posicao_a_trocar_becap[client] = 7;
				cor_selecionada_trocar_becap[client] = S_Item;
				Becap_Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "9"))
			{
				posicao_a_trocar_becap[client] = 8;
				cor_selecionada_trocar_becap[client] = S_Item;
				Becap_Pela_QCores_SEL_MENU(client, 0);
			}
			else if (StrEqual(P_Item, "10"))
			{
				posicao_a_trocar_becap[client] = 9;
				cor_selecionada_trocar_becap[client] = S_Item;
				Becap_Pela_QCores_SEL_MENU(client, 0);
			}
			RGB_TROCAR_QCores_ESCL[client] = GetMenuSelectionPosition();
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				BEcap_Trocar_CoresM(client, EBCaps_QCores_ESCL[client]);
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
public void Becap_Pela_QCores_SEL_MENU(int client, int Pagina)
{
	Menu menu = new Menu(Becap_Pela_QCores_SEL_LIG);
	int tamanho_array_arvore[MAXPLAYERS + 1];
	tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
	if (tamanho_array_arvore[client] == 5)
	{
		menu.SetTitle("#Darkness-CM - Seleciona Trocar Posicao 1\n1 ➠ %s\n2 ➠ %s\n \n", _1B[client], _2B[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		
	}
	else if (tamanho_array_arvore[client] == 6)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \n", _1B[client], _2B[client], _3B[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		
	}
	else if (tamanho_array_arvore[client] == 7)
	{
		
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \n", _1B[client], _2B[client], _3B[client], _4B[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (tamanho_array_arvore[client] == 8)
	{
		
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n \n", _1B[client], _2B[client], _3B[client], _4B[client], _5B[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (tamanho_array_arvore[client] == 9)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n \n", _1B[client], _2B[client], _3B[client], _4B[client], _5B[client], _6B[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Pela Posicao 6", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 6") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (tamanho_array_arvore[client] == 10)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n5 ➠ %s\n6 ➠ %s\n7 ➠ %s\n \n", _1B[client], _2B[client], _3B[client], _4B[client], _5B[client], _6B[client], _7B[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Pela Posicao 6", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 6") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("7", "Pela Posicao 7", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 7") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (tamanho_array_arvore[client] == 11)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \n", _1B[client], _2B[client], _3B[client], _4B[client], _5B[client], _6B[client], _7B[client], _8B[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Pela Posicao 6", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 6") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("7", "Pela Posicao 7", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 7") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("8", "Pela Posicao 8", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 8") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (tamanho_array_arvore[client] == 12)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \n", _1B[client], _2B[client], _3B[client], _4B[client], _5B[client], _6B[client], _7B[client], _8B[client], _9B[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Pela Posicao 6", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 6") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("7", "Pela Posicao 7", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 7") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("8", "Pela Posicao 8", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 8") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("9", "Pela Posicao 9", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 9") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	else if (tamanho_array_arvore[client] == 13)
	{
		menu.SetTitle("#Darkness-CM - Cores\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \n", _1B[client], _2B[client], _3B[client], _4B[client], _5B[client], _6B[client], _7B[client], _8B[client], _9B[client], _10B[client]);
		menu.AddItem("1", "Pela Posicao 1", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 1") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("2", "Pela Posicao 2", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 2") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("3", "Pela Posicao 3", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 3") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("4", "Pela Posicao 4", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 4") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("5", "Pela Posicao 5", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 5") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("6", "Pela Posicao 6", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 6") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("7", "Pela Posicao 7", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 7") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("8", "Pela Posicao 8", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 8") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("9", "Pela Posicao 9", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 9") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
		menu.AddItem("10", "Pela Posicao 10", StrEqual(cor_selecionada_trocar_becap[client], "Trocar Posicao 10") ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
	}
	menu.ExitBackButton = true;
	menu.ExitButton = true;
	menu.DisplayAt(client, Pagina, MENU_TIME_FOREVER);
}

public int Becap_Pela_QCores_SEL_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char _1[MAXPLAYERS + 1][128], _2[MAXPLAYERS + 1][128], _3[MAXPLAYERS + 1][128], _4[MAXPLAYERS + 1][128], _5[MAXPLAYERS + 1][128], _6[MAXPLAYERS + 1][128], _7[MAXPLAYERS + 1][128];
			char _8[MAXPLAYERS + 1][128], _9[MAXPLAYERS + 1][128], _10[MAXPLAYERS + 1][128], _11[MAXPLAYERS + 1][128], _12[MAXPLAYERS + 1][128], _13[MAXPLAYERS + 1][128];
			rgb_a_tag[client] = false; rgb_a_nome[client] = false; rgb_a_chat[client] = false;
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			if (StrEqual(P_Item, "1"))
			{
				Array_Passagem_Funcao[client].SwapAt(Posicao_Trocar_Becap[client], 0);
			}
			else if (StrEqual(P_Item, "2"))
			{
				Array_Passagem_Funcao[client].SwapAt(Posicao_Trocar_Becap[client], 1);
			}
			else if (StrEqual(P_Item, "3"))
			{
				Array_Passagem_Funcao[client].SwapAt(Posicao_Trocar_Becap[client], 2);
			}
			else if (StrEqual(P_Item, "4"))
			{
				Array_Passagem_Funcao[client].SwapAt(Posicao_Trocar_Becap[client], 3);
			}
			else if (StrEqual(P_Item, "5"))
			{
				Array_Passagem_Funcao[client].SwapAt(Posicao_Trocar_Becap[client], 4);
			}
			else if (StrEqual(P_Item, "6"))
			{
				Array_Passagem_Funcao[client].SwapAt(Posicao_Trocar_Becap[client], 5);
			}
			else if (StrEqual(P_Item, "7"))
			{
				Array_Passagem_Funcao[client].SwapAt(Posicao_Trocar_Becap[client], 6);
			}
			else if (StrEqual(P_Item, "8"))
			{
				Array_Passagem_Funcao[client].SwapAt(Posicao_Trocar_Becap[client], 7);
			}
			else if (StrEqual(P_Item, "9"))
			{
				Array_Passagem_Funcao[client].SwapAt(Posicao_Trocar_Becap[client], 8);
			}
			else if (StrEqual(P_Item, "10"))
			{
				Array_Passagem_Funcao[client].SwapAt(Posicao_Trocar_Becap[client], 9);
			}
			char Senhor_Buffalo[PLATFORM_MAX_PATH], steamid[300];
			GetClientAuthId(client, AuthId_Steam2, steamid, sizeof(steamid));
			Format(Senhor_Buffalo, sizeof(Senhor_Buffalo), "addons/sourcemod/TAGS_CORES_BECAP/%s.cfg", steamid);
			Tag_Beca_KV_limpar[client] = new KeyValues("TAGS BECAP");
			if (Tag_Beca_KV_limpar[client].ImportFromFile(Senhor_Buffalo))
			{
				Tag_Beca_KV_limpar[client].Rewind();
				if (Tag_Beca_KV_limpar[client].GotoFirstSubKey())
				{
					do
					{
						Tag_Beca_KV_limpar[client].DeleteThis();
						Tag_Beca_KV_limpar[client].Rewind();
					}
					while (Tag_Beca_KV_limpar[client].GotoFirstSubKey());
				}
				Tag_Beca_KV_limpar[client].Rewind();
				Tag_Beca_KV_limpar[client].ExportToFile(Senhor_Buffalo);
				delete Tag_Beca_KV_limpar[client];
			}
			
			Tag_Beca_KV[client].Rewind();
			if (Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client]))
			{
				Tag_Beca_KV[client].DeleteThis();
				Tag_Beca_KV[client].Rewind();
			}
			Tag_Beca_KV[client].Rewind();
			int tamanho_array_arvore[MAXPLAYERS + 1];
			tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
			if (tamanho_array_arvore[client] == 5)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", "");
				Tag_Beca_KV[client].SetString("cor4", "");
				Tag_Beca_KV[client].SetString("cor5", "");
				Tag_Beca_KV[client].SetString("cor6", "");
				Tag_Beca_KV[client].SetString("cor7", "");
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _3[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _4[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _5[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 6)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", "");
				Tag_Beca_KV[client].SetString("cor5", "");
				Tag_Beca_KV[client].SetString("cor6", "");
				Tag_Beca_KV[client].SetString("cor7", "");
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _4[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _5[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _6[client]);
				Tag_Beca_KV[client].Rewind();
				
				
				
			}
			else if (tamanho_array_arvore[client] == 7)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", "");
				Tag_Beca_KV[client].SetString("cor6", "");
				Tag_Beca_KV[client].SetString("cor7", "");
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _5[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _6[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _7[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 8)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", "");
				Tag_Beca_KV[client].SetString("cor7", "");
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _6[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _7[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _8[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 9)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", _6[client]);
				Tag_Beca_KV[client].SetString("cor7", "");
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _7[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _8[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _9[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 10)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
				Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", _6[client]);
				Tag_Beca_KV[client].SetString("cor7", _7[client]);
				Tag_Beca_KV[client].SetString("cor8", "");
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _8[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _9[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _10[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 11)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
				Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
				Array_Passagem_Funcao[client].GetString(10, _11[client], sizeof(_11[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", _6[client]);
				Tag_Beca_KV[client].SetString("cor7", _7[client]);
				Tag_Beca_KV[client].SetString("cor8", _8[client]);
				Tag_Beca_KV[client].SetString("cor9", "");
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _9[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _10[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _11[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 12)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
				Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
				Array_Passagem_Funcao[client].GetString(10, _11[client], sizeof(_11[]));
				Array_Passagem_Funcao[client].GetString(11, _12[client], sizeof(_12[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", _6[client]);
				Tag_Beca_KV[client].SetString("cor7", _7[client]);
				Tag_Beca_KV[client].SetString("cor8", _8[client]);
				Tag_Beca_KV[client].SetString("cor9", _9[client]);
				Tag_Beca_KV[client].SetString("cor10", "");
				Tag_Beca_KV[client].SetString("sequencia", _10[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _11[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _12[client]);
				Tag_Beca_KV[client].Rewind();
				
				
			}
			else if (tamanho_array_arvore[client] == 13)
			{
				//
				//
				Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
				Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
				Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
				Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
				Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
				Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
				Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
				Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
				Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
				Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
				Array_Passagem_Funcao[client].GetString(10, _11[client], sizeof(_11[]));
				Array_Passagem_Funcao[client].GetString(11, _12[client], sizeof(_12[]));
				Array_Passagem_Funcao[client].GetString(12, _13[client], sizeof(_13[]));
				//	
				Tag_Beca_KV[client].JumpToKey(salvar_nome_seccao[client], true);
				Tag_Beca_KV[client].SetString("cor1", _1[client]);
				Tag_Beca_KV[client].SetString("cor2", _2[client]);
				Tag_Beca_KV[client].SetString("cor3", _3[client]);
				Tag_Beca_KV[client].SetString("cor4", _4[client]);
				Tag_Beca_KV[client].SetString("cor5", _5[client]);
				Tag_Beca_KV[client].SetString("cor6", _6[client]);
				Tag_Beca_KV[client].SetString("cor7", _7[client]);
				Tag_Beca_KV[client].SetString("cor8", _8[client]);
				Tag_Beca_KV[client].SetString("cor9", _9[client]);
				Tag_Beca_KV[client].SetString("cor10", _10[client]);
				Tag_Beca_KV[client].SetString("sequencia", _11[client]);
				Tag_Beca_KV[client].SetString("numero_cores", _12[client]);
				Tag_Beca_KV[client].SetString("Data_Horas", _13[client]);
				Tag_Beca_KV[client].Rewind();
				
			}
			Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
			char hint_lig[399];
			Format(hint_lig, sizeof(hint_lig), "<pre class='fontSize-xl'><font color='#00EB42'>ALTERAÇÃO FEITA COM SUCESSO</font></pre>", salvar_nome_seccao[client]);
			PrintHintText(client, hint_lig);
			BEcap_Trocar_CoresM(client, EBCaps_QCores_ESCL[client]);
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				Becap_Trocar_QCores_SEL_MENU(client, RGB_TROCAR_QCores_ESCL[client]);
			}
			
		}
		else if (Accao == MenuAction_End)
		{
			delete menu;
		}
		
	}
	return 0;
}


////////////////////////////////////// sel ////////////////////////////

