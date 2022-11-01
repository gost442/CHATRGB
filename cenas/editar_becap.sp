
public void Editar_Becap(int client)
{
	mudar_nome_becap[client] = false;
	char Texto_PNL_LIG[666];
	char _1[MAXPLAYERS + 1][128], _2[MAXPLAYERS + 1][128], _3[MAXPLAYERS + 1][128], _4[MAXPLAYERS + 1][128], _5[MAXPLAYERS + 1][128], _6[MAXPLAYERS + 1][128], _7[MAXPLAYERS + 1][128];
	char _8[MAXPLAYERS + 1][128], _9[MAXPLAYERS + 1][128], _10[MAXPLAYERS + 1][128], _11[MAXPLAYERS + 1][128], _12[MAXPLAYERS + 1][128], _13[MAXPLAYERS + 1][128];
	int tamanho_array_arvore[MAXPLAYERS + 1];
	tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
	if (tamanho_array_arvore[client] == 5)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		numero_passagem[client] = StringToInt(_3[client]);
		if (numero_passagem[client] == 1)
		{
			_3[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_3[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_3[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_3[client] = "Cores Descendo Sequencialmente";
		}
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_4[client], _3[client], _5[client]);
	}
	else if (tamanho_array_arvore[client] == 6)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		numero_passagem[client] = StringToInt(_4[client]);
		if (numero_passagem[client] == 1)
		{
			_4[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_4[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_4[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_4[client] = "Cores Descendo Sequencialmente";
		}
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _5[client], _4[client], _6[client]);
		
	}
	else if (tamanho_array_arvore[client] == 7)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
		numero_passagem[client] = StringToInt(_5[client]);
		if (numero_passagem[client] == 1)
		{
			_5[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_5[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_5[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_5[client] = "Cores Descendo Sequencialmente";
		}
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _6[client], _5[client], _7[client]);
	}
	else if (tamanho_array_arvore[client] == 8)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
		Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
		numero_passagem[client] = StringToInt(_6[client]);
		if (numero_passagem[client] == 1)
		{
			_6[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_6[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_6[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_6[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _7[client], _6[client], _8[client]);
	}
	else if (tamanho_array_arvore[client] == 9)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
		Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
		Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
		numero_passagem[client] = StringToInt(_7[client]);
		if (numero_passagem[client] == 1)
		{
			_7[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_7[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_7[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_7[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _8[client], _7[client], _9[client]);
	}
	else if (tamanho_array_arvore[client] == 10)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_8[client]);
		if (numero_passagem[client] == 1)
		{
			_8[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_8[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_8[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_8[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _9[client], _8[client], _10[client]);
	}
	else if (tamanho_array_arvore[client] == 11)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_9[client]);
		if (numero_passagem[client] == 1)
		{
			_9[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_9[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_9[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_9[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _8[client], _10[client], _9[client], _11[client]);
	}
	else if (tamanho_array_arvore[client] == 12)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_10[client]);
		if (numero_passagem[client] == 1)
		{
			_10[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_10[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_10[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_10[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _8[client], _9[client], _11[client], _10[client], _12[client]);
	}
	else if (tamanho_array_arvore[client] == 13)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_11[client]);
		if (numero_passagem[client] == 1)
		{
			_11[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_11[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_11[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_11[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _8[client], _9[client], _10[client], _12[client], _11[client], _13[client]);
	}
	
	char nome_becap[128];
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - EDITOR BECAP");
	Format(nome_becap, sizeof(nome_becap), "Nome do backup: %s\n \n", salvar_nome_seccao[client]);
	Painel.DrawText(nome_becap);
	Painel.DrawText(Texto_PNL_LIG);
	SetPanelCurrentKey(Painel, 3);
	Painel.DrawItem("Mudar Nome backup");
	SetPanelCurrentKey(Painel, 4);
	Painel.DrawItem("Alterar Formatação");
	SetPanelCurrentKey(Painel, 5);
	Painel.DrawItem("Alterar Cores\n \n");
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Editar_Becap_LIG, MENU_TIME_FOREVER);
}

public int Editar_Becap_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					pegar_novo_nome_escrito[client] = "";
					mudar_nome_becap[client] = false;
					ecap_nome_ativar_chat[client] = true;
					Editar_Nome_Becap(client);
				}
				case 4:
				{
					Editar_Formatacao_Becap(client);
				}
				case 5:
				{
					BEcap_Trocar_CoresM(client, 0);
				}
				case 7:
				{
					Ver_BECAPS_Menu(client, Posicao_Escolhida_Becaps[client]);
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



///////// formatação /////////////


//// editar nome parte ////////////////7

public void Editar_Formatacao_Becap(int client)
{
	char Texto_PNL_LIG[666];
	char _1[MAXPLAYERS + 1][128], _2[MAXPLAYERS + 1][128], _3[MAXPLAYERS + 1][128], _4[MAXPLAYERS + 1][128], _5[MAXPLAYERS + 1][128], _6[MAXPLAYERS + 1][128], _7[MAXPLAYERS + 1][128];
	char _8[MAXPLAYERS + 1][128], _9[MAXPLAYERS + 1][128], _10[MAXPLAYERS + 1][128], _11[MAXPLAYERS + 1][128], _12[MAXPLAYERS + 1][128], _13[MAXPLAYERS + 1][128];
	int tamanho_array_arvore[MAXPLAYERS + 1];
	tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
	if (tamanho_array_arvore[client] == 5)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		numero_passagem[client] = StringToInt(_3[client]);
		if (numero_passagem[client] == 1)
		{
			_3[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_3[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_3[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_3[client] = "Cores Descendo Sequencialmente";
		}
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_4[client], _3[client], _5[client]);
	}
	else if (tamanho_array_arvore[client] == 6)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		numero_passagem[client] = StringToInt(_4[client]);
		if (numero_passagem[client] == 1)
		{
			_4[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_4[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_4[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_4[client] = "Cores Descendo Sequencialmente";
		}
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _5[client], _4[client], _6[client]);
		
	}
	else if (tamanho_array_arvore[client] == 7)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
		numero_passagem[client] = StringToInt(_5[client]);
		if (numero_passagem[client] == 1)
		{
			_5[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_5[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_5[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_5[client] = "Cores Descendo Sequencialmente";
		}
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _6[client], _5[client], _7[client]);
	}
	else if (tamanho_array_arvore[client] == 8)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
		Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
		numero_passagem[client] = StringToInt(_6[client]);
		if (numero_passagem[client] == 1)
		{
			_6[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_6[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_6[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_6[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _7[client], _6[client], _8[client]);
	}
	else if (tamanho_array_arvore[client] == 9)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
		Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
		Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
		numero_passagem[client] = StringToInt(_7[client]);
		if (numero_passagem[client] == 1)
		{
			_7[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_7[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_7[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_7[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _8[client], _7[client], _9[client]);
	}
	else if (tamanho_array_arvore[client] == 10)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_8[client]);
		if (numero_passagem[client] == 1)
		{
			_8[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_8[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_8[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_8[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _9[client], _8[client], _10[client]);
	}
	else if (tamanho_array_arvore[client] == 11)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_9[client]);
		if (numero_passagem[client] == 1)
		{
			_9[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_9[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_9[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_9[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _8[client], _10[client], _9[client], _11[client]);
	}
	else if (tamanho_array_arvore[client] == 12)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_10[client]);
		if (numero_passagem[client] == 1)
		{
			_10[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_10[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_10[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_10[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _8[client], _9[client], _11[client], _10[client], _12[client]);
	}
	else if (tamanho_array_arvore[client] == 13)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_11[client]);
		if (numero_passagem[client] == 1)
		{
			_11[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_11[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_11[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_11[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _8[client], _9[client], _10[client], _12[client], _11[client], _13[client]);
	}
	
	char nome_becap[128];
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - EDITOR BECAP");
	Format(nome_becap, sizeof(nome_becap), "Nome do Becap: %s\n \n", salvar_nome_seccao[client]);
	Painel.DrawText(nome_becap);
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
	Painel.Send(client, Editar_Formatacao_Becap_LIG, MENU_TIME_FOREVER);
}

public int Editar_Formatacao_Becap_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		if (action == MenuAction_Select)
		{
			
			char _1[MAXPLAYERS + 1][128], _2[MAXPLAYERS + 1][128], _3[MAXPLAYERS + 1][128], _4[MAXPLAYERS + 1][128], _5[MAXPLAYERS + 1][128], _6[MAXPLAYERS + 1][128], _7[MAXPLAYERS + 1][128];
			char _8[MAXPLAYERS + 1][128], _9[MAXPLAYERS + 1][128], _10[MAXPLAYERS + 1][128], _11[MAXPLAYERS + 1][128], _12[MAXPLAYERS + 1][128], _13[MAXPLAYERS + 1][128];
			switch (Teclas)
			{
				case 3:
				{
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
						Array_Passagem_Funcao[client].SetString(2, "1");
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
						Array_Passagem_Funcao[client].SetString(3, "1");
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
						Array_Passagem_Funcao[client].SetString(4, "1");
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
						Array_Passagem_Funcao[client].SetString(5, "1");
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
						Array_Passagem_Funcao[client].SetString(6, "1");
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
						Array_Passagem_Funcao[client].SetString(7, "1");
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
						Array_Passagem_Funcao[client].SetString(8, "1");
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
						Array_Passagem_Funcao[client].SetString(9, "1");
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
						Array_Passagem_Funcao[client].SetString(10, "1");
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
					Editar_Becap(client);
				}
				
				//////////////////////
				case 4:
				{
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
						Array_Passagem_Funcao[client].SetString(2, "2");
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
						Array_Passagem_Funcao[client].SetString(3, "2");
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
						Array_Passagem_Funcao[client].SetString(4, "2");
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
						Array_Passagem_Funcao[client].SetString(5, "2");
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
						Array_Passagem_Funcao[client].SetString(6, "2");
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
						Array_Passagem_Funcao[client].SetString(7, "2");
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
						Array_Passagem_Funcao[client].SetString(8, "2");
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
						Array_Passagem_Funcao[client].SetString(9, "2");
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
						Array_Passagem_Funcao[client].SetString(10, "2");
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
					Editar_Becap(client);
				}
				
				
				//////////////////////
				case 5:
				{
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
						Array_Passagem_Funcao[client].SetString(2, "3");
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
						Array_Passagem_Funcao[client].SetString(3, "3");
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
						Array_Passagem_Funcao[client].SetString(4, "3");
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
						Array_Passagem_Funcao[client].SetString(5, "3");
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
						Array_Passagem_Funcao[client].SetString(6, "3");
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
						Array_Passagem_Funcao[client].SetString(7, "3");
						
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
						
						Array_Passagem_Funcao[client].SetString(8, "3");
						
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
						
						Array_Passagem_Funcao[client].SetString(9, "3");
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
						Array_Passagem_Funcao[client].SetString(10, "3");
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
					Editar_Becap(client);
				}
				
				
				//////////////////////
				case 6:
				{
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
						
						Array_Passagem_Funcao[client].SetString(2, "4");
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
						
						Array_Passagem_Funcao[client].SetString(3, "4");
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
						
						Array_Passagem_Funcao[client].SetString(4, "4");
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
						
						Array_Passagem_Funcao[client].SetString(5, "4");
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
						
						Array_Passagem_Funcao[client].SetString(6, "4");
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
						
						Array_Passagem_Funcao[client].SetString(7, "4");
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
						Array_Passagem_Funcao[client].SetString(8, "4");
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
						Array_Passagem_Funcao[client].SetString(9, "4");
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
						Array_Passagem_Funcao[client].SetString(10, "4");
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
					Editar_Becap(client);
				}
				case 7:
				{
					Editar_Becap(client);
				}
				case 9:
				{
				}
			}
		}
		else if (action == MenuAction_Cancel)
		{
			if (Teclas == MenuCancel_Interrupted) {
				mudar_nome_becap[client] = false;
				ecap_nome_ativar_chat[client] = false;
				pegar_novo_nome_escrito[client] = "";
				
			}
		}
		else if (action == MenuAction_End)
		{
			delete menu;
		}
	}
	return 0;
}











































//// editar nome parte ////////////////7

public void Editar_Nome_Becap(int client)
{
	char Texto_PNL_LIG[666];
	char _1[MAXPLAYERS + 1][128], _2[MAXPLAYERS + 1][128], _3[MAXPLAYERS + 1][128], _4[MAXPLAYERS + 1][128], _5[MAXPLAYERS + 1][128], _6[MAXPLAYERS + 1][128], _7[MAXPLAYERS + 1][128];
	char _8[MAXPLAYERS + 1][128], _9[MAXPLAYERS + 1][128], _10[MAXPLAYERS + 1][128], _11[MAXPLAYERS + 1][128], _12[MAXPLAYERS + 1][128], _13[MAXPLAYERS + 1][128];
	int tamanho_array_arvore[MAXPLAYERS + 1];
	tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
	if (tamanho_array_arvore[client] == 5)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		numero_passagem[client] = StringToInt(_3[client]);
		if (numero_passagem[client] == 1)
		{
			_3[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_3[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_3[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_3[client] = "Cores Descendo Sequencialmente";
		}
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_4[client], _3[client], _5[client]);
	}
	else if (tamanho_array_arvore[client] == 6)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		numero_passagem[client] = StringToInt(_4[client]);
		if (numero_passagem[client] == 1)
		{
			_4[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_4[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_4[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_4[client] = "Cores Descendo Sequencialmente";
		}
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _5[client], _4[client], _6[client]);
		
	}
	else if (tamanho_array_arvore[client] == 7)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
		numero_passagem[client] = StringToInt(_5[client]);
		if (numero_passagem[client] == 1)
		{
			_5[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_5[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_5[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_5[client] = "Cores Descendo Sequencialmente";
		}
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _6[client], _5[client], _7[client]);
	}
	else if (tamanho_array_arvore[client] == 8)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
		Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
		numero_passagem[client] = StringToInt(_6[client]);
		if (numero_passagem[client] == 1)
		{
			_6[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_6[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_6[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_6[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _7[client], _6[client], _8[client]);
	}
	else if (tamanho_array_arvore[client] == 9)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_2[]));
		Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
		Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
		Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
		Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
		Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
		Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
		Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
		numero_passagem[client] = StringToInt(_7[client]);
		if (numero_passagem[client] == 1)
		{
			_7[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_7[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_7[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_7[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _8[client], _7[client], _9[client]);
	}
	else if (tamanho_array_arvore[client] == 10)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_8[client]);
		if (numero_passagem[client] == 1)
		{
			_8[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_8[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_8[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_8[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _9[client], _8[client], _10[client]);
	}
	else if (tamanho_array_arvore[client] == 11)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_9[client]);
		if (numero_passagem[client] == 1)
		{
			_9[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_9[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_9[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_9[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _8[client], _10[client], _9[client], _11[client]);
	}
	else if (tamanho_array_arvore[client] == 12)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_10[client]);
		if (numero_passagem[client] == 1)
		{
			_10[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_10[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_10[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_10[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _8[client], _9[client], _11[client], _10[client], _12[client]);
	}
	else if (tamanho_array_arvore[client] == 13)
	{
		int numero_passagem[MAXPLAYERS + 1];
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
		numero_passagem[client] = StringToInt(_11[client]);
		if (numero_passagem[client] == 1)
		{
			_11[client] = "As cores respeitam a sequência";
		}
		if (numero_passagem[client] == 2)
		{
			_11[client] = "Cores Tornam-se Aleatorias";
		}
		if (numero_passagem[client] == 3)
		{
			_11[client] = "Cores Subindo sequencialmente";
		}
		if (numero_passagem[client] == 4)
		{
			_11[client] = "Cores Descendo Sequencialmente";
		}
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \nTotal de cores: %s\nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _8[client], _9[client], _10[client], _12[client], _11[client], _13[client]);
	}
	
	char nome_becap[128];
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - EDITOR BECAP");
	Painel.DrawText(Texto_PNL_LIG);
	if (mudar_nome_becap[client])
	{
		Format(nome_becap, sizeof(nome_becap), "Novo Nome do Becap: %s\n \n", pegar_novo_nome_escrito[client]);
		Painel.DrawText(nome_becap);
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawItem("Confirmar");
		
	}
	else
	{
		Format(nome_becap, sizeof(nome_becap), "Escreve o nome do becap no chat\n \n");
		Painel.DrawText(nome_becap);
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawText("3. Confirmar");
		PrintHintText(client, "<pre><font color='#eb4034' class='fontSize-xl'>Escreve no chat o novo nome do becap</font></pre>");
		
	}
	SetPanelCurrentKey(Painel, 4);
	Painel.DrawItem("Cancelar\n \n");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Editar_Nome_Becap_LIG, MENU_TIME_FOREVER);
}

public int Editar_Nome_Becap_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					Arvore_Do_BEcap[client].Remove(salvar_nome_seccao[client]);
					Arvore_Do_BEcap[client].SetString(pegar_novo_nome_escrito[client], pegar_novo_nome_escrito[client]);
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
						Tag_Beca_KV[client].SetSectionName(pegar_novo_nome_escrito[client]);
						Tag_Beca_KV[client].Rewind();
					}
					Tag_Beca_KV[client].Rewind();
					
					Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
					char hint_lig[399];
					Format(hint_lig, sizeof(hint_lig), "<pre class='fontSize-xl'>       <font color='#FF0000'>BECAP %s</font>\n<font color='#00EB42'>APAGADO COM SUCESSO</font></pre>", salvar_nome_seccao[client]);
					PrintHintText(client, hint_lig);
					mudar_nome_becap[client] = false;
					ecap_nome_ativar_chat[client] = false;
					salvar_nome_seccao[client] = pegar_novo_nome_escrito[client];
					Editar_Becap(client);
				}
				case 4:
				{
					mudar_nome_becap[client] = false;
					ecap_nome_ativar_chat[client] = false;
					pegar_novo_nome_escrito[client] = "";
					Editar_Becap(client);
				}
				case 9:
				{
					mudar_nome_becap[client] = false;
					ecap_nome_ativar_chat[client] = false;
					pegar_novo_nome_escrito[client] = "";
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