 ///////////////////////////////////////
public void OnMapStart()
{
	for (int i = 1; i <= MaxClients; i++)
	{
		if (IsValidClient(i))
		{
			Tags_Cash(i);
		}
	}
}
//////////////////////////////////////
public Action Pegar_Escrita(int client, int argumentos) {
	if (IsValidClient(client) && B_Do_becap[client] == true)
	{
		if (argumentos < 1)
		{
			CPrintToChat(client, "\x01| {darkred}SPONSOR-TAGS\x01 |{orchid} ➠{default} O nome do becap tem de ter no mínimo 2 palavras.");
			return Plugin_Handled;
		}
		GetCmdArgString(Nome_Escrit[client], sizeof(Nome_Escrit[]));
		StripQuotes(Nome_Escrit[client]);
		B_Do_becap[client] = false;
		beca_ja_escrito[client] = true;
		Confirmar_Becap(client);
		return Plugin_Handled;
	}
	if (IsValidClient(client) && ecap_nome_ativar_chat[client] == true)
	{
		if (argumentos < 1)
		{
			CPrintToChat(client, "\x01| {darkred}SPONSOR-TAGS\x01 |{orchid} ➠{default} O nome do becap tem de ter no mínimo 2 palavras.");
			return Plugin_Handled;
		}
		GetCmdArgString(pegar_novo_nome_escrito[client], sizeof(pegar_novo_nome_escrito[]));
		StripQuotes(pegar_novo_nome_escrito[client]);
		ecap_nome_ativar_chat[client] = false;
		mudar_nome_becap[client] = true;
		Editar_Nome_Becap(client);
		return Plugin_Handled;
	}
	return Plugin_Continue;
}



public APLRes AskPluginLoad2(Handle myself, bool late, char[] error, int err_max)
{
	RegPluginLibrary("GosT_CHAT_RGB");
	CreateNative("gRGN_PrintToChat", Native_GPrintToChat);
	CreateNative("gRGN_PrintToChatALL", Native_GPrintToChatALL);
	return APLRes_Success;
}

/////////////////
public void OnPluginStart()
{
	RegConsoleCmd("say_team", Pegar_Escrita);
	RegConsoleCmd("say", Pegar_Escrita);
	HookEvent("round_start", Por_TAGS, EventHookMode_Pre);
	//
	RegAdminCmd("sm_atags", STAFF_Zona, ADMFLAG_BAN);
	RegAdminCmd("sm_stafftags", STAFF_Zona, ADMFLAG_BAN);
	RegAdminCmd("sm_sttags", STAFF_Zona, ADMFLAG_BAN);
	RegConsoleCmd("sm_crgb", Chat_RGB_CMD);
	RegConsoleCmd("sm_chatrgb", Chat_RGB_CMD);
	RegConsoleCmd("sm_rgbchat", Chat_RGB_CMD);
	RegConsoleCmd("sm_rgbc", Chat_RGB_CMD);
	//
	STAFF_Usar_TAG = RegClientCookie("STAFF_USARTagsv3", "", CookieAccess_Private);
	STAFF_VIP_TAG = RegClientCookie("STAFF_VIPTagsv3", "", CookieAccess_Private);
	STAFF_SPONSOR_TAG = RegClientCookie("STAFF_SPONSORTagsv3", "", CookieAccess_Private);
	COR_TAG = RegClientCookie("COR_TAG_v3", "", CookieAccess_Private);
	COR_NOME = RegClientCookie("COR_NOME_v3", "", CookieAccess_Private);
	COR_CHAT = RegClientCookie("COR_CHAT_v3", "", CookieAccess_Private);
	COR_TAG_GG = RegClientCookie("COR_TAG_GG_v3", "", CookieAccess_Private);
	COR_NOME_GG = RegClientCookie("COR_NOME_GGv3", "", CookieAccess_Private);
	COR_CHAT_GG = RegClientCookie("COR_CHAT_GG_v3", "", CookieAccess_Private);
	COR_TAG_M = RegClientCookie("COR_TAG_M_v3", "", CookieAccess_Private);
	COR_NOME_M = RegClientCookie("COR_NOME_M_v3", "", CookieAccess_Private);
	COR_CHAT_M = RegClientCookie("COR_CHAT_M_v3", "", CookieAccess_Private);
	Cor1_G_TAG = RegClientCookie("COR1_RGB_TAG_v3", "", CookieAccess_Private);
	Cor2_G_TAG = RegClientCookie("COR2_RGB_TAG_v3", "", CookieAccess_Private);
	Cor3_G_TAG = RegClientCookie("COR3_RGB_TAG_v3", "", CookieAccess_Private);
	Cor4_G_TAG = RegClientCookie("COR4_RGB_TAG_v3", "", CookieAccess_Private);
	Cor5_G_TAG = RegClientCookie("COR5_RGB_TAG_v3", "", CookieAccess_Private);
	Cor6_G_TAG = RegClientCookie("COR6_RGB_TAG_v3", "", CookieAccess_Private);
	Cor7_G_TAG = RegClientCookie("COR7_RGB_TAG_v3", "", CookieAccess_Private);
	Cor8_G_TAG = RegClientCookie("COR8_RGB_TAG_v3", "", CookieAccess_Private);
	Cor9_G_TAG = RegClientCookie("COR9_RGB_TAG_v3", "", CookieAccess_Private);
	Cor10_G_TAG = RegClientCookie("COR10_RGB_TAG_v3", "", CookieAccess_Private);
	//
	Cor1_G_Nome = RegClientCookie("COR1_RGB_Nome_v3", "", CookieAccess_Private);
	Cor2_G_Nome = RegClientCookie("COR2_RGB_Nome_v3", "", CookieAccess_Private);
	Cor3_G_Nome = RegClientCookie("COR3_RGB_Nome_v3", "", CookieAccess_Private);
	Cor4_G_Nome = RegClientCookie("COR4_RGB_Nome_v3", "", CookieAccess_Private);
	Cor5_G_Nome = RegClientCookie("COR5_RGB_Nome_v3", "", CookieAccess_Private);
	Cor6_G_Nome = RegClientCookie("COR6_RGB_Nome_v3", "", CookieAccess_Private);
	Cor7_G_Nome = RegClientCookie("COR7_RGB_Nome_v3", "", CookieAccess_Private);
	Cor8_G_Nome = RegClientCookie("COR8_RGB_Nome_v3", "", CookieAccess_Private);
	Cor9_G_Nome = RegClientCookie("COR9_RGB_Nome_v3", "", CookieAccess_Private);
	Cor10_G_Nome = RegClientCookie("COR10_RGB_Nome_v3", "", CookieAccess_Private);
	//
	Cor1_G_CHAT = RegClientCookie("COR1_RGB_CHAT_v3", "", CookieAccess_Private);
	Cor2_G_CHAT = RegClientCookie("COR2_RGB_CHAT_v3", "", CookieAccess_Private);
	Cor3_G_CHAT = RegClientCookie("COR3_RGB_CHAT_v3", "", CookieAccess_Private);
	Cor4_G_CHAT = RegClientCookie("COR4_RGB_CHAT_v3", "", CookieAccess_Private);
	Cor5_G_CHAT = RegClientCookie("COR5_RGB_CHAT_v3", "", CookieAccess_Private);
	Cor6_G_CHAT = RegClientCookie("COR6_RGB_CHAT_v3", "", CookieAccess_Private);
	Cor7_G_CHAT = RegClientCookie("COR7_RGB_CHAT_v3", "", CookieAccess_Private);
	Cor8_G_CHAT = RegClientCookie("COR8_RGB_CHAT_v3", "", CookieAccess_Private);
	Cor9_G_CHAT = RegClientCookie("COR9_RGB_CHAT_v3", "", CookieAccess_Private);
	Cor10_G_CHAT = RegClientCookie("COR10_RGB_CHAT_v3", "", CookieAccess_Private);
	//
	
	Numero_Cores_G_TAG = RegClientCookie("NCRS_RGB_TAG_v3", "", CookieAccess_Private);
	Numero_Cores_G_Nome = RegClientCookie("NCRS_RGB_Nome_v3", "", CookieAccess_Private);
	Numero_Cores_G_CHAT = RegClientCookie("NCRS_RGB_CHAT_v3", "", CookieAccess_Private);
	Tipo_Sequencia_G_TAG = RegClientCookie("TSequ_RGB_TAG_v3", "", CookieAccess_Private);
	Tipo_Sequencia_G_Nome = RegClientCookie("TSequ_RGB_Nome_v3", "", CookieAccess_Private);
	Tipo_Sequencia_G_CHAT = RegClientCookie("TSequ_RGB_CHAT_v3", "", CookieAccess_Private);
	Cores_RGB_tag = RegClientCookie("Cores_RGB_Tags_v3", "", CookieAccess_Private);
	Cores_RGB_nome = RegClientCookie("Cores_RGB_Nome_v3", "", CookieAccess_Private);
	Cores_RGB_chat = RegClientCookie("Cores_RGB_Chat_v3", "", CookieAccess_Private);
	for (int i = 1; i <= MaxClients; i++)
	{
		if (IsValidClient(i) && !IsFakeClient(i) && !AreClientCookiesCached(i))
		{
			OnClientCookiesCached(i);
		}
	}
	for (int i = 1; i <= MaxClients; i++)
	{
		if (IsValidClient(i))
		{
			Tags_Cash(i);
		}
	}
}

public Action Por_TAGS(Event event, const char[] name, bool dontBroadcast)
{
	for (int client = 1; client <= MaxClients; client++)
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
			char COR_TAGs_APL[128], COR_NOMEs_APL[128], COR_CHATs_APL[128];
			
			GetClientCookie(client, COR_TAG, COR_TAGs_APL, sizeof(COR_TAGs_APL));
			GetClientCookie(client, COR_NOME, COR_NOMEs_APL, sizeof(COR_NOMEs_APL));
			GetClientCookie(client, COR_CHAT, COR_CHATs_APL, sizeof(COR_CHATs_APL));
			char Pegar_GGs_TAGS_V2[MAXPLAYERS + 1][68], Pegar_GGs_NOME_v2[MAXPLAYERS + 1][68], Pegar_GGs_CHAT_v2[MAXPLAYERS + 1][68];
			GetClientCookie(client, Cores_RGB_tag, Pegar_GGs_TAGS_V2[client], sizeof(Pegar_GGs_TAGS_V2[]));
			GetClientCookie(client, Cores_RGB_nome, Pegar_GGs_NOME_v2[client], sizeof(Pegar_GGs_NOME_v2[]));
			GetClientCookie(client, Cores_RGB_chat, Pegar_GGs_CHAT_v2[client], sizeof(Pegar_GGs_CHAT_v2[]));
			
			char Pegar_GGs_TAGS[MAXPLAYERS + 1][68], Pegar_GGs_NOME[MAXPLAYERS + 1][68], Pegar_GGs_CHAT[MAXPLAYERS + 1][68];
			
			GetClientCookie(client, COR_TAG_GG, Pegar_GGs_TAGS[client], sizeof(Pegar_GGs_TAGS[]));
			GetClientCookie(client, COR_NOME_GG, Pegar_GGs_NOME[client], sizeof(Pegar_GGs_NOME[]));
			GetClientCookie(client, COR_CHAT_GG, Pegar_GGs_CHAT[client], sizeof(Pegar_GGs_CHAT[]));
			if (StrEqual(Pegar_GGs_NOME[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_NOME[client], "Fade") || StrEqual(Pegar_GGs_NOME[client], "LGBT"))
			{
				HexTags_SetClientTag(client, NameColor, "");
			}
			if (StrEqual(Pegar_GGs_TAGS[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_TAGS[client], "Fade") || StrEqual(Pegar_GGs_TAGS[client], "LGBT"))
			{
				HexTags_SetClientTag(client, ChatTag, "");
			}
			if (StrEqual(Pegar_GGs_CHAT[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_CHAT[client], "Fade") || StrEqual(Pegar_GGs_CHAT[client], "LGBT"))
			{
				HexTags_SetClientTag(client, ChatColor, "");
			}
			if (!StrEqual(COR_TAGs_APL, ""))
			{
				//HexTags_SetClientTag(client, ChatTag, COR_TAGs_APL);
			}
			if (!StrEqual(COR_NOMEs_APL, ""))
			{
				
				//HexTags_SetClientTag(client, NameColor, COR_NOMEs_APL);
			}
			if (!StrEqual(COR_CHATs_APL, ""))
			{
				
				///HexTags_SetClientTag(client, ChatColor, COR_CHATs_APL);
			}
			if (tag_em_USO[client] == 1)
			{
				if (tag_VIP_USO[client] == 1)
				{
					HexTags_SetClientTag(client, ChatTag, "{green}VIP | ");
					HexTags_SetClientTag(client, ScoreTag, "VIP | ");
					HexTags_SetClientTag(client, ChatColor, "{rainbow}");
					HexTags_SetClientTag(client, NameColor, "{lightgreen}");
					CS_SetClientClanTag(client, "VIP | ");
					SetClientCookie(client, STAFF_VIP_TAG, "1");
				}
				else if (tag_SPONSOR_USO[client] == 1)
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
				}
			}
			if (StrEqual(Pegar_GGs_TAGS_V2[client], "1"))
			{
				HexTags_SetClientTag(client, ChatTag, "");
			}
			if (StrEqual(Pegar_GGs_NOME_v2[client], "1"))
			{
				HexTags_SetClientTag(client, NameColor, "");
			}
			if (StrEqual(Pegar_GGs_CHAT_v2[client], "1"))
			{
				HexTags_SetClientTag(client, ChatColor, "");
			}
		}
	}
	return Plugin_Continue;
}
public void Tags_Cash(int client)
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
		char COR_TAGs_APL[128], COR_NOMEs_APL[128], COR_CHATs_APL[128];
		
		GetClientCookie(client, COR_TAG, COR_TAGs_APL, sizeof(COR_TAGs_APL));
		GetClientCookie(client, COR_NOME, COR_NOMEs_APL, sizeof(COR_NOMEs_APL));
		GetClientCookie(client, COR_CHAT, COR_CHATs_APL, sizeof(COR_CHATs_APL));
		char Pegar_GGs_TAGS_V2[MAXPLAYERS + 1][68], Pegar_GGs_NOME_v2[MAXPLAYERS + 1][68], Pegar_GGs_CHAT_v2[MAXPLAYERS + 1][68];
		GetClientCookie(client, Cores_RGB_tag, Pegar_GGs_TAGS_V2[client], sizeof(Pegar_GGs_TAGS_V2[]));
		GetClientCookie(client, Cores_RGB_nome, Pegar_GGs_NOME_v2[client], sizeof(Pegar_GGs_NOME_v2[]));
		GetClientCookie(client, Cores_RGB_chat, Pegar_GGs_CHAT_v2[client], sizeof(Pegar_GGs_CHAT_v2[]));
		
		char Pegar_GGs_TAGS[MAXPLAYERS + 1][68], Pegar_GGs_NOME[MAXPLAYERS + 1][68], Pegar_GGs_CHAT[MAXPLAYERS + 1][68];
		
		GetClientCookie(client, COR_TAG_GG, Pegar_GGs_TAGS[client], sizeof(Pegar_GGs_TAGS[]));
		GetClientCookie(client, COR_NOME_GG, Pegar_GGs_NOME[client], sizeof(Pegar_GGs_NOME[]));
		GetClientCookie(client, COR_CHAT_GG, Pegar_GGs_CHAT[client], sizeof(Pegar_GGs_CHAT[]));
		if (StrEqual(Pegar_GGs_NOME[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_NOME[client], "Fade") || StrEqual(Pegar_GGs_NOME[client], "LGBT"))
		{
			HexTags_SetClientTag(client, NameColor, "");
		}
		if (StrEqual(Pegar_GGs_TAGS[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_TAGS[client], "Fade") || StrEqual(Pegar_GGs_TAGS[client], "LGBT"))
		{
			HexTags_SetClientTag(client, ChatTag, "");
		}
		if (StrEqual(Pegar_GGs_CHAT[client], "Gradiente Liniar") || StrEqual(Pegar_GGs_CHAT[client], "Fade") || StrEqual(Pegar_GGs_CHAT[client], "LGBT"))
		{
			HexTags_SetClientTag(client, ChatColor, "");
		}
		if (!StrEqual(COR_TAGs_APL, ""))
		{
			HexTags_SetClientTag(client, ChatTag, COR_TAGs_APL);
		}
		if (!StrEqual(COR_NOMEs_APL, ""))
		{
			
			HexTags_SetClientTag(client, NameColor, COR_NOMEs_APL);
		}
		if (!StrEqual(COR_CHATs_APL, ""))
		{
			
			HexTags_SetClientTag(client, ChatColor, COR_CHATs_APL);
		}
		if (tag_em_USO[client] == 1)
		{
			if (tag_VIP_USO[client] == 1)
			{
				HexTags_SetClientTag(client, ChatTag, "{green}VIP | ");
				HexTags_SetClientTag(client, ScoreTag, "VIP | ");
				HexTags_SetClientTag(client, ChatColor, "{rainbow}");
				HexTags_SetClientTag(client, NameColor, "{lightgreen}");
				CS_SetClientClanTag(client, "VIP | ");
				SetClientCookie(client, STAFF_VIP_TAG, "1");
			}
			else if (tag_SPONSOR_USO[client] == 1)
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
			}
		}
		if (StrEqual(Pegar_GGs_TAGS_V2[client], "1"))
		{
			HexTags_SetClientTag(client, ChatTag, "");
		}
		if (StrEqual(Pegar_GGs_NOME_v2[client], "1"))
		{
			HexTags_SetClientTag(client, NameColor, "");
		}
		if (StrEqual(Pegar_GGs_CHAT_v2[client], "1"))
		{
			HexTags_SetClientTag(client, ChatColor, "");
		}
	}
}
public void OnClientCookiesCached(int client)
{
	if (IsValidClient(client))
	{
		
		//-------------------------------------//
		char hd1[128];
		char hd2[128];
		char hd3[128];
		char hd4[128];
		char hd5[128];
		char hd6[128];
		char hd7[128];
		char hd8[128];
		char hd9[128];
		char hd10[128];
		
		GetClientCookie(client, STAFF_Usar_TAG, hd1, sizeof(hd1));
		if (hd1[0] == '\0')
		{
			SetClientCookie(client, STAFF_Usar_TAG, "0");
		}
		if (StrEqual(hd1, ""))
		{
			SetClientCookie(client, STAFF_Usar_TAG, "0");
		}
		GetClientCookie(client, COR_TAG, hd2, sizeof(hd2));
		if (hd2[0] == '\0')
		{
			SetClientCookie(client, COR_TAG, "");
		}
		GetClientCookie(client, COR_TAG_GG, hd8, sizeof(hd8));
		if (hd8[0] == '\0')
		{
			SetClientCookie(client, COR_TAG_GG, "");
		}
		
		GetClientCookie(client, COR_TAG_M, hd5, sizeof(hd5));
		if (hd5[0] == '\0')
		{
			SetClientCookie(client, COR_TAG_M, "Predefinida");
		}
		if (StrEqual(hd5, ""))
		{
			SetClientCookie(client, COR_TAG_M, "Predefinida");
		}
		GetClientCookie(client, COR_NOME, hd3, sizeof(hd3));
		if (hd3[0] == '\0')
		{
			SetClientCookie(client, COR_NOME, "");
		}
		GetClientCookie(client, COR_NOME_GG, hd9, sizeof(hd9));
		if (hd9[0] == '\0')
		{
			SetClientCookie(client, COR_NOME_GG, "");
		}
		GetClientCookie(client, COR_NOME_M, hd6, sizeof(hd6));
		if (hd6[0] == '\0')
		{
			SetClientCookie(client, COR_NOME_M, "Predefinida");
		}
		if (StrEqual(hd6, ""))
		{
			SetClientCookie(client, COR_NOME_M, "Predefinida");
		}
		GetClientCookie(client, COR_CHAT, hd4, sizeof(hd4));
		if (hd4[0] == '\0')
		{
			SetClientCookie(client, COR_CHAT, "");
		}
		GetClientCookie(client, COR_CHAT_GG, hd10, sizeof(hd10));
		if (hd10[0] == '\0')
		{
			SetClientCookie(client, COR_CHAT_GG, "");
		}
		GetClientCookie(client, COR_CHAT_M, hd7, sizeof(hd7));
		if (hd7[0] == '\0')
		{
			SetClientCookie(client, COR_CHAT_M, "Predefinida");
		}
		if (StrEqual(hd7, ""))
		{
			SetClientCookie(client, COR_CHAT_M, "Predefinida");
		}
	}
}
public void OnClientPutInServer(int client)
{
	if (IsValidClient(client))
	{
		OnClientCookiesCached(client);
	}
}
stock bool eusouvip(int client, AdminFlag type)
{
	if (GetAdminFlag(GetUserAdmin(client), type))
	{
		return true;
	}
	return false;
}
stock bool IsValidClient(int client, bool alive = false)
{
	if (0 < client && client <= MaxClients && IsClientInGame(client) && IsFakeClient(client) == false && (alive == false || IsPlayerAlive(client)))
	{
		return true;
	}
	return false;
}
