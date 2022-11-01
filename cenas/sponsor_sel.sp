
//◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆
//														 Sponsor
//◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆◇☆★☆★☆★☆◆
//◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ TAG COR ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈◈ ━━━━━━━━ ◆ ━━━━━━━━ ◈

public void CORs_SPONSOR_TAGS_MENU(int client, int Pagina)
{
	a_geral[client] = false;
	a_tag[client] = false;
	a_nome[client] = false;
	a_chat[client] = false;
	SPONSOR_Ja_Apliquei[client] = false;
	SPONSOR_Cor_Selecionada[client] = "";
	char COR_TAGs[128], COR_NOMEs[128], COR_CHATs[128];
	GetClientCookie(client, COR_TAG_M, COR_TAGs, sizeof(COR_TAGs));
	GetClientCookie(client, COR_NOME_M, COR_NOMEs, sizeof(COR_NOMEs));
	GetClientCookie(client, COR_CHAT_M, COR_CHATs, sizeof(COR_CHATs));
	Menu menu = new Menu(CORs_SPONSOR_TAGS_LIG);
	menu.SetTitle("#Darkness-CM - Lista de Cores\nSeleciona uma cor\n \nCor Atual:\nTAG ➠ %s\nNOME ➠ %s\nCHAT ➠ %s\n \n", COR_TAGs, COR_NOMEs, COR_CHATs);
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
	menu.AddItem("18", "Aleatórias");
	menu.AddItem("19", "Gradiente Liniar");
	menu.AddItem("20", "Fade");
	menu.AddItem("21", "LGBT");
	if (SPONSOR_escolher_nova_cor[client] == false)
	{
		menu.AddItem("22", "Criar RGB");
	}
	
	menu.ExitBackButton = true;
	menu.ExitButton = true;
	menu.DisplayAt(client, Pagina, MENU_TIME_FOREVER);
}

public int CORs_SPONSOR_TAGS_LIG(Menu menu, MenuAction Accao, int client, int Posicao)
{
	if (IsValidClient(client))
	{
		if (Accao == MenuAction_Select)
		{
			char P_Item[32], S_Item[64]; int estilo;
			menu.GetItem(Posicao, P_Item, sizeof(P_Item), estilo, S_Item, sizeof(S_Item));
			
			if (StrEqual(P_Item, "1"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "2"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "3"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "4"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "5"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "6"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "7"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "8"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "9"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "10"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "11"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "12"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "13"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "14"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "15"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "16"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "17"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "18"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "19"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "20"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "21"))
			{
				SPONSOR_Cor_Selecionada[client] = S_Item;
				Decisao_Final_Sponsor_MENU(client);
			}
			else if (StrEqual(P_Item, "22"))
			{
				Que_Cores[client] = new ArrayList(ByteCountToCells(666));
				Menu_Principal_RGB(client);
			}
			Posicao_Escolhida_1SPONSOR[client] = GetMenuSelectionPosition();
			
		}
		else if (Accao == MenuAction_Cancel)
		{
			if (Posicao == MenuCancel_ExitBack) {
				a_geral[client] = false;
				a_tag[client] = false;
				a_nome[client] = false;
				a_chat[client] = false;
				SPONSOR_Ja_Apliquei[client] = false;
				SPONSOR_Cor_Selecionada[client] = "";
				TAGS_MENU(client);
				
			}
			else if (Posicao == MenuCancel_Interrupted) {
				a_geral[client] = false;
				a_tag[client] = false;
				a_nome[client] = false;
				a_chat[client] = false;
				SPONSOR_Ja_Apliquei[client] = false;
				SPONSOR_Cor_Selecionada[client] = "";
				
			}
			else if (Posicao == MenuCancel_Exit) {
				a_geral[client] = false;
				a_tag[client] = false;
				a_nome[client] = false;
				a_chat[client] = false;
				SPONSOR_Ja_Apliquei[client] = false;
				SPONSOR_Cor_Selecionada[client] = "";
				delete menu;
			}
		}
		else if (Accao == MenuAction_End)
		{
		}
		
	}
	return 0;
}
