public void Ver_BECAPS_Menu(int client, int Pagina)
{
	bcp_tag_apl[client] = false;
	bcp_nome_apl[client] = false;
	bcp_chat_apl[client] = false;
	repor_apl_becap[client] = false;
	Menu menu = new Menu(Ver_BECAPS_LIG);
	menu.SetTitle("#Darkness-CM - Lista de Backup\n \n");
	for (int i = 0; i < Arvore_Do_BEcap[client].Snapshot().Length; i++)
	{
		char Receber_Cena[MAXLENGTH_MESSAGE];
		int tamanho_do_Bfalo = Arvore_Do_BEcap[client].Snapshot().KeyBufferSize(i);
		char[] vada_grande = new char[tamanho_do_Bfalo];
		Arvore_Do_BEcap[client].Snapshot().GetKey(i, Receber_Cena, tamanho_do_Bfalo);
		strcopy(vada_grande, tamanho_do_Bfalo, Receber_Cena);
		menu.AddItem(vada_grande, vada_grande);
		
	}
	menu.ExitBackButton = true;
	menu.ExitButton = true;
	menu.DisplayAt(client, Pagina, MENU_TIME_FOREVER);
}
public int Ver_BECAPS_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char P_Item[300], S_Item[300]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			char sequencia_kv[MAXPLAYERS + 1][32], numeroo_cores_kv[MAXPLAYERS + 1][32], data_horas_kv[MAXPLAYERS + 1][100];
			char cor_kv_1[MAXPLAYERS + 1][128], cor_kv_2[MAXPLAYERS + 1][128], cor_kv_3[MAXPLAYERS + 1][128], cor_kv_4[MAXPLAYERS + 1][128], cor_kv_5[MAXPLAYERS + 1][128];
			char cor_kv_6[MAXPLAYERS + 1][128], cor_kv_7[MAXPLAYERS + 1][128], cor_kv_8[MAXPLAYERS + 1][128], cor_kv_9[MAXPLAYERS + 1][128], cor_kv_10[MAXPLAYERS + 1][128];
			Array_Passagem_Funcao[client] = new ArrayList(ByteCountToCells(666));
			salvar_nome_seccao[client] = S_Item;
			Tag_Beca_KV[client].JumpToKey(S_Item);
			Tag_Beca_KV[client].GetString("cor1", cor_kv_1[client], sizeof(cor_kv_1[]), "");
			Tag_Beca_KV[client].GetString("cor2", cor_kv_2[client], sizeof(cor_kv_2[]), "");
			Tag_Beca_KV[client].GetString("cor3", cor_kv_3[client], sizeof(cor_kv_3[]), "");
			Tag_Beca_KV[client].GetString("cor4", cor_kv_4[client], sizeof(cor_kv_4[]), "");
			Tag_Beca_KV[client].GetString("cor5", cor_kv_5[client], sizeof(cor_kv_5[]), "");
			Tag_Beca_KV[client].GetString("cor6", cor_kv_6[client], sizeof(cor_kv_6[]), "");
			Tag_Beca_KV[client].GetString("cor7", cor_kv_7[client], sizeof(cor_kv_7[]), "");
			Tag_Beca_KV[client].GetString("cor8", cor_kv_8[client], sizeof(cor_kv_8[]), "");
			Tag_Beca_KV[client].GetString("cor9", cor_kv_9[client], sizeof(cor_kv_9[]), "");
			Tag_Beca_KV[client].GetString("cor10", cor_kv_10[client], sizeof(cor_kv_10[]), "");
			Tag_Beca_KV[client].GetString("sequencia", sequencia_kv[client], sizeof(sequencia_kv[]), "1");
			Tag_Beca_KV[client].GetString("numero_cores", numeroo_cores_kv[client], sizeof(numeroo_cores_kv[]), "1");
			Tag_Beca_KV[client].GetString("Data_Horas", data_horas_kv[client], sizeof(data_horas_kv[]), "Não Definido");
			if (!StrEqual(cor_kv_1[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(cor_kv_1[client]);
			}
			if (!StrEqual(cor_kv_2[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(cor_kv_2[client]);
			}
			if (!StrEqual(cor_kv_3[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(cor_kv_3[client]);
			}
			if (!StrEqual(cor_kv_4[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(cor_kv_4[client]);
			}
			if (!StrEqual(cor_kv_5[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(cor_kv_5[client]);
			}
			if (!StrEqual(cor_kv_6[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(cor_kv_6[client]);
			}
			if (!StrEqual(cor_kv_7[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(cor_kv_7[client]);
			}
			if (!StrEqual(cor_kv_8[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(cor_kv_8[client]);
			}
			if (!StrEqual(cor_kv_9[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(cor_kv_9[client]);
			}
			if (!StrEqual(cor_kv_10[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(cor_kv_10[client]);
			}
			if (!StrEqual(sequencia_kv[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(sequencia_kv[client]);
			}
			if (!StrEqual(numeroo_cores_kv[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(numeroo_cores_kv[client]);
			}
			if (!StrEqual(data_horas_kv[client], ""))
			{
				Array_Passagem_Funcao[client].PushString(data_horas_kv[client]);
			}
			Funcoes_Becap_RGB(client);
			Posicao_Escolhida_Becaps[client] = GetMenuSelectionPosition();
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				Menu_Principal_RGB(client);
			}
		}
		else if (Accao == MenuAction_End)
		{
			delete menu;
		}
		
	}
	return 0;
}

public void Funcoes_Becap_RGB(int client)
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
	Painel.SetTitle("#Darkness-CM - RGB");
	Format(nome_becap, sizeof(nome_becap), "Nome do backup: %s\n \n", salvar_nome_seccao[client]);
	Painel.DrawText(nome_becap);
	Painel.DrawText(Texto_PNL_LIG);
	SetPanelCurrentKey(Painel, 3);
	Painel.DrawItem("Usar Backup");
	SetPanelCurrentKey(Painel, 4);
	Painel.DrawItem("Editar Backup");
	SetPanelCurrentKey(Painel, 5);
	Painel.DrawItem("Apagar Backup\n \n");
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Funcoes_Becap_LIG, MENU_TIME_FOREVER);
}

public int Funcoes_Becap_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		if (action == MenuAction_Select)
		{
			switch (Teclas)
			{
				case 3:
				{
					Usar_Becap(client);
				}
				case 4:
				{
					Editar_Becap(client);
				}
				case 5:
				{
					Arvore_Do_BEcap[client].Remove(salvar_nome_seccao[client]);
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
					
					Tag_Beca_KV[client].ExportToFile(Senhor_Buffalo);
					delete(Array_Passagem_Funcao[client]);
					char hint_lig[399];
					Format(hint_lig, sizeof(hint_lig), "<pre class='fontSize-xl'>       <font color='#FF0000'>BACKUP %s</font>\n<font color='#00EB42'>APAGADO COM SUCESSO</font></pre>", salvar_nome_seccao[client]);
					PrintHintText(client, hint_lig);
					int tmanho_armvore[MAXPLAYERS + 1];
					tmanho_armvore[client] = Arvore_Do_BEcap[client].Snapshot().Length;
					if (tmanho_armvore[client] < 1)
					{
						Menu_Principal_RGB(client);
					}
					else
					{
						Ver_BECAPS_Menu(client, 0);
					}
				}
				
				case 7:
				{
					delete(Array_Passagem_Funcao[client]);
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

///////////////////////////////////////////////////////////////////// USAR BECAP
public void Usar_Becap(int client)
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_4[client], _3[client], _5[client]);
	}
	else if (tamanho_array_arvore[client] == 6)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _5[client], _4[client], _6[client]);
		
	}
	else if (tamanho_array_arvore[client] == 7)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s\n2 ➠ %s\n3 ➠ %s\n4 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _6[client], _5[client], _7[client]);
	}
	else if (tamanho_array_arvore[client] == 8)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _8[client], _7[client], _9[client]);
	}
	else if (tamanho_array_arvore[client] == 10)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _9[client], _8[client], _10[client]);
	}
	else if (tamanho_array_arvore[client] == 11)
	{
		int numero_passagem[MAXPLAYERS + 1];
		Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
		Format(Texto_PNL_LIG, sizeof(Texto_PNL_LIG), "Cores:\n1 ➠ %s ░ 2 ➠ %s\n3 ➠ %s ░ 4 ➠ %s\n5 ➠ %s ░ 6 ➠ %s\n7 ➠ %s ░ 8 ➠ %s\n9 ➠ %s ░ 10 ➠ %s\n \nTotal de cores: %s \nFormação: %s\nData do backup: %s\n \n", _1[client], _2[client], 
			_3[client], _4[client], _5[client], _6[client], _7[client], _8[client], _9[client], _10[client], _12[client], _11[client], _13[client]);
	}
	
	char nome_becap[128];
	Panel Painel = new Panel();
	Painel.SetTitle("#Darkness-CM - RGB");
	Format(nome_becap, sizeof(nome_becap), "Nome do backup: %s\n \n", salvar_nome_seccao[client]);
	Painel.DrawText(nome_becap);
	Painel.DrawText(Texto_PNL_LIG);
	SetPanelCurrentKey(Painel, 1);
	Painel.DrawItem("Testar backup");
	if (!bcp_tag_apl[client] && !bcp_nome_apl[client] && !bcp_chat_apl[client])
	{
		SetPanelCurrentKey(Painel, 2);
		Painel.DrawItem("Aplicar em Tudo");
	}
	else
	{
		Painel.DrawText("2. Aplicar em Tudo");
	}
	if (!bcp_tag_apl[client])
	{
		SetPanelCurrentKey(Painel, 3);
		Painel.DrawItem("Apenas na Tag");
	}
	else
	{
		Painel.DrawText("3. Apenas na Tag");
	}
	if (!bcp_nome_apl[client])
	{
		SetPanelCurrentKey(Painel, 4);
		Painel.DrawItem("Apenas no Nome");
	}
	else
	{
		Painel.DrawText("4. Apenas no Nome");
	}
	if (!bcp_chat_apl[client])
	{
		SetPanelCurrentKey(Painel, 5);
		Painel.DrawItem("Apenas no Chat");
	}
	else
	{
		Painel.DrawText("5. Apenas no Chat");
	}
	if (bcp_tag_apl[client] || bcp_nome_apl[client] || bcp_chat_apl[client])
	{
		SetPanelCurrentKey(Painel, 6);
		Painel.DrawItem("Remover Aplicação\n \n");
	}
	else
	{
		Painel.DrawText("6. Remover Aplicação\n \n");
	}
	SetPanelCurrentKey(Painel, 7);
	Painel.DrawItem("Voltar");
	SetPanelCurrentKey(Painel, 9);
	Painel.DrawItem("Sair");
	Painel.Send(client, Usar_Becap_LIG, MENU_TIME_FOREVER);
}

public int Usar_Becap_LIG(Menu menu, MenuAction action, int client, int Teclas)
{
	if (IsValidClient(client))
	{
		//voltaaki
		if (action == MenuAction_Select)
		{
			char _1[MAXPLAYERS + 1][128], _2[MAXPLAYERS + 1][128], _3[MAXPLAYERS + 1][128], _4[MAXPLAYERS + 1][128], _5[MAXPLAYERS + 1][128], _6[MAXPLAYERS + 1][128], _7[MAXPLAYERS + 1][128];
			char _8[MAXPLAYERS + 1][128], _9[MAXPLAYERS + 1][128], _10[MAXPLAYERS + 1][128], _11[MAXPLAYERS + 1][128], _12[MAXPLAYERS + 1][128], _13[MAXPLAYERS + 1][128];
			switch (Teclas)
			{
				case 1:
				{
					int tamanho_array_arvore[MAXPLAYERS + 1];
					tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
					if (tamanho_array_arvore[client] == 5)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						gRGN_PrintToChat(client, "\x01| \x09BACKUP TESTE \x01| \x0E➠\x01 ", "Este é o formato do backup guardado", StringToInt(_3[client]), _1[client], _2[client], "", "", "", "", "", 
							"", "", "", _4[client]);
					}
					else if (tamanho_array_arvore[client] == 6)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						gRGN_PrintToChat(client, "\x01| \x09BACKUP TESTE \x01| \x0E➠\x01 ", "Este é o formato do backup guardado", StringToInt(_4[client]), _1[client], _2[client], _3[client], "", "", "", "", 
							"", "", "", _5[client]);
					}
					else if (tamanho_array_arvore[client] == 7)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						gRGN_PrintToChat(client, "\x01| \x09BACKUP TESTE \x01| \x0E➠\x01 ", "Este é o formato do backup guardado", StringToInt(_5[client]), _1[client], _2[client], _3[client], _4[client], "", "", "", 
							"", "", "", _6[client]);
					}
					else if (tamanho_array_arvore[client] == 8)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						gRGN_PrintToChat(client, "\x01| \x09BACKUP TESTE \x01| \x0E➠\x01 ", "Este é o formato do backup guardado", StringToInt(_6[client]), _1[client], _2[client], _3[client], _4[client], _5[client], "", "", 
							"", "", "", _7[client]);
					}
					else if (tamanho_array_arvore[client] == 9)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						gRGN_PrintToChat(client, "\x01| \x09BACKUP TESTE \x01| \x0E➠\x01 ", "Este é o formato do backup guardado", StringToInt(_7[client]), _1[client], _2[client], _3[client], _4[client], _5[client], _6[client], "", 
							"", "", "", _8[client]);
					}
					else if (tamanho_array_arvore[client] == 10)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
						gRGN_PrintToChat(client, "\x01| \x09BACKUP TESTE \x01| \x0E➠\x01 ", "Este é o formato do backup guardado", StringToInt(_8[client]), _1[client], _2[client], _3[client], _4[client], _5[client], _6[client], _7[client], 
							"", "", "", _9[client]);
						
					}
					else if (tamanho_array_arvore[client] == 11)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
						Array_Passagem_Funcao[client].GetString(10, _11[client], sizeof(_11[]));
						gRGN_PrintToChat(client, "\x01| \x09BACKUP TESTE \x01| \x0E➠\x01 ", "Este é o formato do backup guardado", StringToInt(_9[client]), _1[client], _2[client], _3[client], _4[client], _5[client], _6[client], _7[client], 
							_8[client], "", "", _10[client]);
					}
					else if (tamanho_array_arvore[client] == 12)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						gRGN_PrintToChat(client, "\x01| \x09BACKUP TESTE \x01| \x0E➠\x01 ", "Este é o formato do backup guardado", StringToInt(_10[client]), _1[client], _2[client], _3[client], _4[client], _5[client], _6[client], _7[client], 
							_8[client], _9[client], "", _11[client]);
					}
					else if (tamanho_array_arvore[client] == 13)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						gRGN_PrintToChat(client, "\x01| \x09BACKUP TESTE \x01| \x0E➠\x01 ", "Este é o formato do backup guardado", StringToInt(_11[client]), _1[client], _2[client], _3[client], _4[client], _5[client], _6[client], _7[client], 
							_8[client], _9[client], _10[client], _12[client]);
					}
					Usar_Becap(client);
				}
				case 2:
				{
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
					int tamanho_array_arvore[MAXPLAYERS + 1];
					tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
					if (tamanho_array_arvore[client] == 5)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, "");
						SetClientCookie(client, Cor4_G_TAG, "");
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, "");
						SetClientCookie(client, Cor4_G_Nome, "");
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, "");
						SetClientCookie(client, Cor4_G_CHAT, "");
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _3[client]);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _3[client]);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _3[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _4[client]);
						SetClientCookie(client, Numero_Cores_G_Nome, _4[client]);
						SetClientCookie(client, Numero_Cores_G_CHAT, _4[client]);
					}
					else if (tamanho_array_arvore[client] == 6)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, "");
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, "");
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, "");
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _4[client]);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _4[client]);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _4[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _5[client]);
						SetClientCookie(client, Numero_Cores_G_Nome, _5[client]);
						SetClientCookie(client, Numero_Cores_G_CHAT, _5[client]);
					}
					else if (tamanho_array_arvore[client] == 7)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _5[client]);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _5[client]);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _5[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _6[client]);
						SetClientCookie(client, Numero_Cores_G_Nome, _6[client]);
						SetClientCookie(client, Numero_Cores_G_CHAT, _6[client]);
					}
					else if (tamanho_array_arvore[client] == 8)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _6[client]);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _6[client]);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _6[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _7[client]);
						SetClientCookie(client, Numero_Cores_G_Nome, _7[client]);
						SetClientCookie(client, Numero_Cores_G_CHAT, _7[client]);
					}
					else if (tamanho_array_arvore[client] == 9)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, _6[client]);
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, _6[client]);
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, _6[client]);
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _7[client]);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _7[client]);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _7[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _8[client]);
						SetClientCookie(client, Numero_Cores_G_Nome, _8[client]);
						SetClientCookie(client, Numero_Cores_G_CHAT, _8[client]);
					}
					else if (tamanho_array_arvore[client] == 10)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, _6[client]);
						SetClientCookie(client, Cor7_G_TAG, _7[client]);
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, _6[client]);
						SetClientCookie(client, Cor7_G_Nome, _7[client]);
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, _6[client]);
						SetClientCookie(client, Cor7_G_CHAT, _7[client]);
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _8[client]);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _8[client]);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _8[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _9[client]);
						SetClientCookie(client, Numero_Cores_G_Nome, _9[client]);
						SetClientCookie(client, Numero_Cores_G_CHAT, _9[client]);
						
					}
					else if (tamanho_array_arvore[client] == 11)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
						Array_Passagem_Funcao[client].GetString(10, _11[client], sizeof(_11[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, _6[client]);
						SetClientCookie(client, Cor7_G_TAG, _7[client]);
						SetClientCookie(client, Cor8_G_TAG, _8[client]);
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, _6[client]);
						SetClientCookie(client, Cor7_G_Nome, _7[client]);
						SetClientCookie(client, Cor8_G_Nome, _8[client]);
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, _6[client]);
						SetClientCookie(client, Cor7_G_CHAT, _7[client]);
						SetClientCookie(client, Cor8_G_CHAT, _8[client]);
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _9[client]);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _9[client]);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _9[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _10[client]);
						SetClientCookie(client, Numero_Cores_G_Nome, _10[client]);
						SetClientCookie(client, Numero_Cores_G_CHAT, _10[client]);
					}
					else if (tamanho_array_arvore[client] == 12)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, _6[client]);
						SetClientCookie(client, Cor7_G_TAG, _7[client]);
						SetClientCookie(client, Cor8_G_TAG, _8[client]);
						SetClientCookie(client, Cor9_G_TAG, _9[client]);
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, _6[client]);
						SetClientCookie(client, Cor7_G_Nome, _7[client]);
						SetClientCookie(client, Cor8_G_Nome, _8[client]);
						SetClientCookie(client, Cor9_G_Nome, _9[client]);
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, _6[client]);
						SetClientCookie(client, Cor7_G_CHAT, _7[client]);
						SetClientCookie(client, Cor8_G_CHAT, _8[client]);
						SetClientCookie(client, Cor9_G_CHAT, _9[client]);
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _10[client]);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _10[client]);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _10[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _11[client]);
						SetClientCookie(client, Numero_Cores_G_Nome, _11[client]);
						SetClientCookie(client, Numero_Cores_G_CHAT, _11[client]);
					}
					else if (tamanho_array_arvore[client] == 13)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, _6[client]);
						SetClientCookie(client, Cor7_G_TAG, _7[client]);
						SetClientCookie(client, Cor8_G_TAG, _8[client]);
						SetClientCookie(client, Cor9_G_TAG, _9[client]);
						SetClientCookie(client, Cor10_G_TAG, _10[client]);
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, _6[client]);
						SetClientCookie(client, Cor7_G_Nome, _7[client]);
						SetClientCookie(client, Cor8_G_Nome, _8[client]);
						SetClientCookie(client, Cor9_G_Nome, _9[client]);
						SetClientCookie(client, Cor10_G_Nome, _10[client]);
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, _6[client]);
						SetClientCookie(client, Cor7_G_CHAT, _7[client]);
						SetClientCookie(client, Cor8_G_CHAT, _8[client]);
						SetClientCookie(client, Cor9_G_CHAT, _9[client]);
						SetClientCookie(client, Cor10_G_CHAT, _10[client]);
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _11[client]);
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _11[client]);
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _11[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _12[client]);
						SetClientCookie(client, Numero_Cores_G_Nome, _12[client]);
						SetClientCookie(client, Numero_Cores_G_CHAT, _12[client]);
					}
					SetClientCookie(client, Cores_RGB_tag, "1");
					SetClientCookie(client, Cores_RGB_nome, "1");
					SetClientCookie(client, Cores_RGB_chat, "1");
					char hint_lig[399];
					Format(hint_lig, sizeof(hint_lig), "<pre class='fontSize-xl'>       <font color='#FF0000'>BACKUP %s</font>\n<font color='#00EB42'>APLICADO NO GERAL COM SUCESSO</font></pre>", salvar_nome_seccao[client]);
					PrintHintText(client, hint_lig);
					bcp_tag_apl[client] = true;
					bcp_nome_apl[client] = true;
					bcp_chat_apl[client] = true;
					Usar_Becap(client);
				}
				case 3:
				{
					HexTags_SetClientTag(client, ChatTag, "");
					SetClientCookie(client, COR_TAG_GG, "");
					SetClientCookie(client, COR_TAG, "");
					SetClientCookie(client, COR_TAG_M, "RBG");
					int tamanho_array_arvore[MAXPLAYERS + 1];
					tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
					if (tamanho_array_arvore[client] == 5)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, "");
						SetClientCookie(client, Cor4_G_TAG, "");
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _3[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _4[client]);
					}
					else if (tamanho_array_arvore[client] == 6)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, "");
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _4[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _5[client]);
					}
					else if (tamanho_array_arvore[client] == 7)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, "");
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _5[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _6[client]);
					}
					else if (tamanho_array_arvore[client] == 8)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, "");
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _6[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _7[client]);
					}
					else if (tamanho_array_arvore[client] == 9)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, _6[client]);
						SetClientCookie(client, Cor7_G_TAG, "");
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _7[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _8[client]);
					}
					else if (tamanho_array_arvore[client] == 10)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, _6[client]);
						SetClientCookie(client, Cor7_G_TAG, _7[client]);
						SetClientCookie(client, Cor8_G_TAG, "");
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _8[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _9[client]);
						
					}
					else if (tamanho_array_arvore[client] == 11)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
						Array_Passagem_Funcao[client].GetString(10, _11[client], sizeof(_11[]));
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, _6[client]);
						SetClientCookie(client, Cor7_G_TAG, _7[client]);
						SetClientCookie(client, Cor8_G_TAG, _8[client]);
						SetClientCookie(client, Cor9_G_TAG, "");
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _9[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _10[client]);
					}
					else if (tamanho_array_arvore[client] == 12)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, _6[client]);
						SetClientCookie(client, Cor7_G_TAG, _7[client]);
						SetClientCookie(client, Cor8_G_TAG, _8[client]);
						SetClientCookie(client, Cor9_G_TAG, _9[client]);
						SetClientCookie(client, Cor10_G_TAG, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _10[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _11[client]);
					}
					else if (tamanho_array_arvore[client] == 13)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						SetClientCookie(client, Cor1_G_TAG, _1[client]);
						SetClientCookie(client, Cor2_G_TAG, _2[client]);
						SetClientCookie(client, Cor3_G_TAG, _3[client]);
						SetClientCookie(client, Cor4_G_TAG, _4[client]);
						SetClientCookie(client, Cor5_G_TAG, _5[client]);
						SetClientCookie(client, Cor6_G_TAG, _6[client]);
						SetClientCookie(client, Cor7_G_TAG, _7[client]);
						SetClientCookie(client, Cor8_G_TAG, _8[client]);
						SetClientCookie(client, Cor9_G_TAG, _9[client]);
						SetClientCookie(client, Cor10_G_TAG, _10[client]);
						//
						SetClientCookie(client, Tipo_Sequencia_G_TAG, _11[client]);
						//
						SetClientCookie(client, Numero_Cores_G_TAG, _12[client]);
					}
					SetClientCookie(client, Cores_RGB_tag, "1");
					char hint_lig[399];
					Format(hint_lig, sizeof(hint_lig), "<pre class='fontSize-xl'>       <font color='#FF0000'BACKUP %s</font>\n<font color='#00EB42'>APLICADO NA TAG COM SUCESSO</font></pre>", salvar_nome_seccao[client]);
					PrintHintText(client, hint_lig);
					bcp_tag_apl[client] = true;
					Usar_Becap(client);
				}
				case 4:
				{
					HexTags_SetClientTag(client, NameColor, "");
					SetClientCookie(client, COR_NOME_GG, "");
					SetClientCookie(client, COR_NOME, "");
					SetClientCookie(client, COR_NOME_M, "RBG");
					int tamanho_array_arvore[MAXPLAYERS + 1];
					tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
					if (tamanho_array_arvore[client] == 5)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, "");
						SetClientCookie(client, Cor4_G_Nome, "");
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _3[client]);
						//
						SetClientCookie(client, Numero_Cores_G_Nome, _4[client]);
					}
					else if (tamanho_array_arvore[client] == 6)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, "");
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _4[client]);
						//
						SetClientCookie(client, Numero_Cores_G_Nome, _5[client]);
					}
					else if (tamanho_array_arvore[client] == 7)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, "");
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _5[client]);
						//
						SetClientCookie(client, Numero_Cores_G_Nome, _6[client]);
					}
					else if (tamanho_array_arvore[client] == 8)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, "");
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _6[client]);
						//
						SetClientCookie(client, Numero_Cores_G_Nome, _7[client]);
					}
					else if (tamanho_array_arvore[client] == 9)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, _6[client]);
						SetClientCookie(client, Cor7_G_Nome, "");
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//	
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _7[client]);
						//
						SetClientCookie(client, Numero_Cores_G_Nome, _8[client]);
					}
					else if (tamanho_array_arvore[client] == 10)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
						//
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, _6[client]);
						SetClientCookie(client, Cor7_G_Nome, _7[client]);
						SetClientCookie(client, Cor8_G_Nome, "");
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _8[client]);
						//
						SetClientCookie(client, Numero_Cores_G_Nome, _9[client]);
					}
					else if (tamanho_array_arvore[client] == 11)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, _6[client]);
						SetClientCookie(client, Cor7_G_Nome, _7[client]);
						SetClientCookie(client, Cor8_G_Nome, _8[client]);
						SetClientCookie(client, Cor9_G_Nome, "");
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _9[client]);
						//
						SetClientCookie(client, Numero_Cores_G_Nome, _10[client]);
					}
					else if (tamanho_array_arvore[client] == 12)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, _6[client]);
						SetClientCookie(client, Cor7_G_Nome, _7[client]);
						SetClientCookie(client, Cor8_G_Nome, _8[client]);
						SetClientCookie(client, Cor9_G_Nome, _9[client]);
						SetClientCookie(client, Cor10_G_Nome, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _10[client]);
						//
						SetClientCookie(client, Numero_Cores_G_Nome, _11[client]);
					}
					else if (tamanho_array_arvore[client] == 13)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						SetClientCookie(client, Cor1_G_Nome, _1[client]);
						SetClientCookie(client, Cor2_G_Nome, _2[client]);
						SetClientCookie(client, Cor3_G_Nome, _3[client]);
						SetClientCookie(client, Cor4_G_Nome, _4[client]);
						SetClientCookie(client, Cor5_G_Nome, _5[client]);
						SetClientCookie(client, Cor6_G_Nome, _6[client]);
						SetClientCookie(client, Cor7_G_Nome, _7[client]);
						SetClientCookie(client, Cor8_G_Nome, _8[client]);
						SetClientCookie(client, Cor9_G_Nome, _9[client]);
						SetClientCookie(client, Cor10_G_Nome, _10[client]);
						//
						SetClientCookie(client, Tipo_Sequencia_G_Nome, _11[client]);
						//
						SetClientCookie(client, Numero_Cores_G_Nome, _12[client]);
					}
					SetClientCookie(client, Cores_RGB_nome, "1");
					char hint_lig[399];
					Format(hint_lig, sizeof(hint_lig), "<pre class='fontSize-xl'>       <font color='#FF0000'>BACKUP %s</font>\n<font color='#00EB42'>APLICADO NO NOME COM SUCESSO</font></pre>", salvar_nome_seccao[client]);
					PrintHintText(client, hint_lig);
					bcp_nome_apl[client] = true;
					Usar_Becap(client);
				}
				case 5:
				{
					HexTags_SetClientTag(client, ChatColor, "");
					SetClientCookie(client, COR_CHAT_GG, "");
					SetClientCookie(client, COR_CHAT, "");
					SetClientCookie(client, COR_CHAT_M, "RBG");
					int tamanho_array_arvore[MAXPLAYERS + 1];
					tamanho_array_arvore[client] = Array_Passagem_Funcao[client].Length;
					if (tamanho_array_arvore[client] == 5)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, "");
						SetClientCookie(client, Cor4_G_CHAT, "");
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _3[client]);
						//
						SetClientCookie(client, Numero_Cores_G_CHAT, _4[client]);
					}
					else if (tamanho_array_arvore[client] == 6)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, "");
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _4[client]);
						//
						SetClientCookie(client, Numero_Cores_G_CHAT, _5[client]);
					}
					else if (tamanho_array_arvore[client] == 7)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, "");
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//					
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _5[client]);
						//
						SetClientCookie(client, Numero_Cores_G_CHAT, _6[client]);
					}
					else if (tamanho_array_arvore[client] == 8)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, "");
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _6[client]);
						//
						SetClientCookie(client, Numero_Cores_G_CHAT, _7[client]);
					}
					else if (tamanho_array_arvore[client] == 9)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, _6[client]);
						SetClientCookie(client, Cor7_G_CHAT, "");
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _7[client]);
						//
						SetClientCookie(client, Numero_Cores_G_CHAT, _8[client]);
					}
					else if (tamanho_array_arvore[client] == 10)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(2, _3[client], sizeof(_3[]));
						Array_Passagem_Funcao[client].GetString(3, _4[client], sizeof(_4[]));
						Array_Passagem_Funcao[client].GetString(4, _5[client], sizeof(_5[]));
						Array_Passagem_Funcao[client].GetString(5, _6[client], sizeof(_6[]));
						Array_Passagem_Funcao[client].GetString(6, _7[client], sizeof(_7[]));
						Array_Passagem_Funcao[client].GetString(7, _8[client], sizeof(_8[]));
						Array_Passagem_Funcao[client].GetString(8, _9[client], sizeof(_9[]));
						Array_Passagem_Funcao[client].GetString(9, _10[client], sizeof(_10[]));
						//
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, _6[client]);
						SetClientCookie(client, Cor7_G_CHAT, _7[client]);
						SetClientCookie(client, Cor8_G_CHAT, "");
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _8[client]);
						//
						SetClientCookie(client, Numero_Cores_G_CHAT, _9[client]);
						
					}
					else if (tamanho_array_arvore[client] == 11)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, _6[client]);
						SetClientCookie(client, Cor7_G_CHAT, _7[client]);
						SetClientCookie(client, Cor8_G_CHAT, _8[client]);
						SetClientCookie(client, Cor9_G_CHAT, "");
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _9[client]);
						//
						SetClientCookie(client, Numero_Cores_G_CHAT, _10[client]);
					}
					else if (tamanho_array_arvore[client] == 12)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, _6[client]);
						SetClientCookie(client, Cor7_G_CHAT, _7[client]);
						SetClientCookie(client, Cor8_G_CHAT, _8[client]);
						SetClientCookie(client, Cor9_G_CHAT, _9[client]);
						SetClientCookie(client, Cor10_G_CHAT, "");
						//
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _10[client]);
						//
						SetClientCookie(client, Numero_Cores_G_CHAT, _11[client]);
					}
					else if (tamanho_array_arvore[client] == 13)
					{
						Array_Passagem_Funcao[client].GetString(0, _1[client], sizeof(_1[]));
						Array_Passagem_Funcao[client].GetString(1, _2[client], sizeof(_1[]));
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
						SetClientCookie(client, Cor1_G_CHAT, _1[client]);
						SetClientCookie(client, Cor2_G_CHAT, _2[client]);
						SetClientCookie(client, Cor3_G_CHAT, _3[client]);
						SetClientCookie(client, Cor4_G_CHAT, _4[client]);
						SetClientCookie(client, Cor5_G_CHAT, _5[client]);
						SetClientCookie(client, Cor6_G_CHAT, _6[client]);
						SetClientCookie(client, Cor7_G_CHAT, _7[client]);
						SetClientCookie(client, Cor8_G_CHAT, _8[client]);
						SetClientCookie(client, Cor9_G_CHAT, _9[client]);
						SetClientCookie(client, Cor10_G_CHAT, _10[client]);
						//
						SetClientCookie(client, Tipo_Sequencia_G_CHAT, _11[client]);
						//
						SetClientCookie(client, Numero_Cores_G_CHAT, _12[client]);
					}
					SetClientCookie(client, Cores_RGB_chat, "1");
					char hint_lig[399];
					Format(hint_lig, sizeof(hint_lig), "<pre class='fontSize-xl'>       <font color='#FF0000'>BACKUP %s</font>\n<font color='#00EB42'>APLICADO NO CHAT COM SUCESSO</font></pre>", salvar_nome_seccao[client]);
					PrintHintText(client, hint_lig);
					Usar_Becap(client);
					bcp_chat_apl[client] = true;
					
				}
				case 6:
				{
					repor_apl_becap[client] = true;
					Repor_TAGS_MAIN_Menu(client);
					
				}
				case 7:
				{
					repor_apl_becap[client] = false;
					Funcoes_Becap_RGB(client);
					
				}
				case 9:
				{
					repor_apl_becap[client] = false;
					delete menu;
				}
			}
		}
		else if (action == MenuAction_Cancel)
		{
			if (Teclas == MenuCancel_Interrupted) {
				repor_apl_becap[client] = false;
				
			}
		}
		else if (action == MenuAction_End)
		{
			delete menu;
		}
	}
	return 0;
}
