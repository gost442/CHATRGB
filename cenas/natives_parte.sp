public int Native_GPrintToChat(Handle plugin, int numParams)
{
	int client = GetNativeCell(1);
	
	if (client < 1 || client > MaxClients)
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Index de client invalido (%d)", client);
	}
	if (!IsClientConnected(client))
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Client %d ja não esta connectado", client);
	}
	char Texto_Normal[MAXLENGTH_MESSAGE];
	GetNativeString(2, Texto_Normal, sizeof(Texto_Normal));
	
	char Texto_RGB[MAXLENGTH_MESSAGE];
	GetNativeString(3, Texto_RGB, sizeof(Texto_RGB));
	int tipo_sequencia;
	tipo_sequencia = GetNativeCell(4);
	char c1[128], c2[128], c3[128], c4[128], c5[128], c6[128], c7[128], c8[128], c9[128], c10[128];
	char receber_numero_Cores[128];
	GetNativeString(5, c1, sizeof(c1)); GetNativeString(6, c2, sizeof(c2)); GetNativeString(7, c3, sizeof(c3));
	GetNativeString(8, c4, sizeof(c4)); GetNativeString(9, c5, sizeof(c5)); GetNativeString(10, c6, sizeof(c6));
	GetNativeString(11, c7, sizeof(c7)); GetNativeString(12, c8, sizeof(c8)); GetNativeString(13, c9, sizeof(c9));
	GetNativeString(14, c10, sizeof(c10)); GetNativeString(15, receber_numero_Cores, sizeof(receber_numero_Cores));
	
	if (!StrEqual(Texto_RGB, ""))
	{
		char mensagem_final_chat[MAXLENGTH_MESSAGE];
		int cor;
		char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
		int tamanho = strlen(Texto_RGB);
		for (int i = 0; i < tamanho; i++)
		{
			if (IsCharSpace(Texto_RGB[i]))
			{
				Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Texto_RGB[i]);
				continue;
			}
			
			int bites = GetCharBytes(Texto_RGB[i]) + 1;
			char[] c = new char[bites];
			strcopy(c, bites, Texto_RGB[i]);
			if (tipo_sequencia == 1)
			{
				Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, 
					Native_Cores_Respeitam_Sequencia(++cor, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, receber_numero_Cores), c);
			}
			if (tipo_sequencia == 2)
			{
				Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, 
					Native_Cores_Subindo_Sequencia(++cor, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, receber_numero_Cores), c);
			}
			if (tipo_sequencia == 3)
			{
				Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, 
					Native_Cores_Descendo_Sequencia(++cor, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, receber_numero_Cores), c);
			}
			if (tipo_sequencia == 4)
			{
				Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, 
					Native_Cores_Aleatorias(c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, receber_numero_Cores), c);
			}
			if (IsCharMB(Texto_RGB[i]))
				i += bites - 2;
		}
		Format(mensagem_final_chat, sizeof(mensagem_final_chat), "%s", Mensagem_Temporaria);
		if (!StrEqual(Texto_Normal, ""))
		{
			CPrintToChat(client, "%s%s", Texto_Normal, mensagem_final_chat);
		}
		else
		{
			CPrintToChat(client, "%s", mensagem_final_chat);
		}
	}
	else
	{
		CPrintToChat(client, "%s", Texto_Normal);
	}
	return 0;
}
public int Native_GPrintToChatALL(Handle plugin, int numParams)
{
	char Texto_Normal[MAXLENGTH_MESSAGE];
	GetNativeString(1, Texto_Normal, sizeof(Texto_Normal));
	
	char Texto_RGB[MAXLENGTH_MESSAGE];
	GetNativeString(2, Texto_RGB, sizeof(Texto_RGB));
	int tipo_sequencia;
	tipo_sequencia = GetNativeCell(3);
	char c1[128], c2[128], c3[128], c4[128], c5[128], c6[128], c7[128], c8[128], c9[128], c10[128];
	char receber_numero_Cores[128];
	GetNativeString(4, c1, sizeof(c1)); GetNativeString(5, c2, sizeof(c2)); GetNativeString(6, c3, sizeof(c3));
	GetNativeString(7, c4, sizeof(c4)); GetNativeString(8, c5, sizeof(c5)); GetNativeString(9, c6, sizeof(c6));
	GetNativeString(10, c7, sizeof(c7)); GetNativeString(11, c8, sizeof(c8)); GetNativeString(12, c9, sizeof(c9));
	GetNativeString(13, c10, sizeof(c10)); GetNativeString(14, receber_numero_Cores, sizeof(receber_numero_Cores));
	
	if (!StrEqual(Texto_RGB, ""))
	{
		char mensagem_final_chat[MAXLENGTH_MESSAGE];
		int cor;
		char Mensagem_Temporaria[MAXLENGTH_MESSAGE];
		int tamanho = strlen(Texto_RGB);
		for (int i = 0; i < tamanho; i++)
		{
			if (IsCharSpace(Texto_RGB[i]))
			{
				Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c", Mensagem_Temporaria, Texto_RGB[i]);
				continue;
			}
			
			int bites = GetCharBytes(Texto_RGB[i]) + 1;
			char[] c = new char[bites];
			strcopy(c, bites, Texto_RGB[i]);
			if (tipo_sequencia == 1)
			{
				Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, 
					Native_Cores_Respeitam_Sequencia(++cor, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, receber_numero_Cores), c);
			}
			if (tipo_sequencia == 2)
			{
				Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, 
					Native_Cores_Subindo_Sequencia(++cor, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, receber_numero_Cores), c);
			}
			if (tipo_sequencia == 3)
			{
				Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, 
					Native_Cores_Descendo_Sequencia(++cor, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, receber_numero_Cores), c);
			}
			if (tipo_sequencia == 4)
			{
				Format(Mensagem_Temporaria, sizeof(Mensagem_Temporaria), "%s%c%s", Mensagem_Temporaria, 
					Native_Cores_Aleatorias(c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, receber_numero_Cores), c);
			}
			if (IsCharMB(Texto_RGB[i]))
				i += bites - 2;
		}
		Format(mensagem_final_chat, sizeof(mensagem_final_chat), "%s", Mensagem_Temporaria);
		if (!StrEqual(Texto_Normal, ""))
		{
			CPrintToChatAll("%s%s", Texto_Normal, mensagem_final_chat);
		}
		else
		{
			CPrintToChatAll("%s", mensagem_final_chat);
		}
	}
	else
	{
		CPrintToChatAll("%s", Texto_Normal);
	}
	return 0;
}
public int Native_Cores_Respeitam_Sequencia(int cor, char[] R_Cor1, char[] R_Cor2, char[] R_Cor3, char[] R_Cor4, char[] R_Cor5, char[] R_Cor6, char[] R_Cor7, 
	char[] R_Cor8, char[] R_Cor9, char[] R_Cor10, char[] receber_numero_Cores)
{
	int Cor_Um, Cor_Dois, Cor_Tres, Cor_Quatro, Cor_Cinco, Cor_Seis, Cor_Sete, Cor_Oito, Cor_Nove, Cor_Dez;
	if (StringToInt(receber_numero_Cores) == 2)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		while (cor > 2)
			cor -= 2;
		switch (cor)
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			
		}
	}
	if (StringToInt(receber_numero_Cores) == 3)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		while (cor > 3)
			cor -= 3;
		switch (cor)
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
		}
	}
	if (StringToInt(receber_numero_Cores) == 4)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		while (cor > 4)
			cor -= 4;
		switch (cor)
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
		}
	}
	if (StringToInt(receber_numero_Cores) == 5)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		while (cor > 5)
			cor -= 5;
		switch (cor)
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
		}
	}
	if (StringToInt(receber_numero_Cores) == 6)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		while (cor > 6)
			cor -= 6;
		switch (cor)
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
			case 6:return Cor_Seis;
		}
	}
	if (StringToInt(receber_numero_Cores) == 7)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		while (cor > 7)
			cor -= 7;
		switch (cor)
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
			case 6:return Cor_Seis;
			case 7:return Cor_Sete;
		}
	}
	if (StringToInt(receber_numero_Cores) == 8)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		while (cor > 8)
			cor -= 8;
		switch (cor)
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
			case 6:return Cor_Seis;
			case 7:return Cor_Sete;
			case 8:return Cor_Oito;
		}
	}
	if (StringToInt(receber_numero_Cores) == 9)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		Cor_Nove = por_cores_bem(R_Cor9);
		while (cor > 9)
			cor -= 9;
		switch (cor)
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
			case 6:return Cor_Seis;
			case 7:return Cor_Sete;
			case 8:return Cor_Oito;
			case 9:return Cor_Nove;
		}
	}
	if (StringToInt(receber_numero_Cores) == 10)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		Cor_Nove = por_cores_bem(R_Cor9);
		Cor_Dez = por_cores_bem(R_Cor10);
		while (cor > 10)
			cor -= 10;
		switch (cor)
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
			case 6:return Cor_Seis;
			case 7:return Cor_Sete;
			case 8:return Cor_Oito;
			case 9:return Cor_Nove;
			case 10:return Cor_Dez;
		}
	}
	return '\x01';
}
public int Native_Cores_Subindo_Sequencia(int cor, char[] R_Cor1, char[] R_Cor2, char[] R_Cor3, char[] R_Cor4, char[] R_Cor5, char[] R_Cor6, char[] R_Cor7, 
	char[] R_Cor8, char[] R_Cor9, char[] R_Cor10, char[] receber_numero_Cores)
{
	int volta_sbr = 0;
	int Cor_Um, Cor_Dois, Cor_Tres, Cor_Quatro, Cor_Cinco, Cor_Seis, Cor_Sete, Cor_Oito, Cor_Nove, Cor_Dez;
	
	if (StringToInt(receber_numero_Cores) == 2)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		if (volta_sbr == 1)
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Um;
				
			}
			volta_sbr--;
		}
		else
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				
			}
			volta_sbr++;
		}
	}
	if (StringToInt(receber_numero_Cores) == 3)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		if (volta_sbr == 0)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Um;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 4)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		if (volta_sbr == 0)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Um;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 5) // Vamos fazer um trato que eu seu namorado <3
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		if (volta_sbr == 0)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Um;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
			} // um bebe como voce nao merece sofrer :/
			volta_sbr = 0; // quando chega ao 5 volta po 0 
		}
	}
	if (StringToInt(receber_numero_Cores) == 6) // e ela ta movimentando ;=)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		if (volta_sbr == 0)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
				case 6:return Cor_Seis;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Seis;
				case 6:return Cor_Um;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Seis;
				case 5:return Cor_Um;
				case 6:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Seis;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
				case 6:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				
				case 1:return Cor_Cinco;
				case 2:return Cor_Seis;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
				case 6:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 5)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Seis;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
				case 6:return Cor_Cinco;
				
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 7)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		if (volta_sbr == 0)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
				case 6:return Cor_Seis;
				case 7:return Cor_Sete;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Seis;
				case 6:return Cor_Sete;
				case 7:return Cor_Um;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Seis;
				case 5:return Cor_Sete;
				case 6:return Cor_Um;
				case 7:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Seis;
				case 4:return Cor_Sete;
				case 5:return Cor_Um;
				case 6:return Cor_Dois;
				case 7:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Seis;
				case 3:return Cor_Sete;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
				case 6:return Cor_Tres;
				case 7:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 5)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Seis;
				case 2:return Cor_Sete;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
				case 6:return Cor_Quatro;
				case 7:return Cor_Cinco;
			}
			volta_sbr++;
		}
		if (volta_sbr == 6)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Sete;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
				case 6:return Cor_Cinco;
				case 7:return Cor_Seis;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 8)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		if (volta_sbr == 0)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
				case 6:return Cor_Seis;
				case 7:return Cor_Sete;
				case 8:return Cor_Oito;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Seis;
				case 6:return Cor_Sete;
				case 7:return Cor_Oito;
				case 8:return Cor_Um;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Seis;
				case 5:return Cor_Sete;
				case 6:return Cor_Oito;
				case 7:return Cor_Um;
				case 8:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Seis;
				case 4:return Cor_Sete;
				case 5:return Cor_Oito;
				case 6:return Cor_Um;
				case 7:return Cor_Dois;
				case 8:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Seis;
				case 3:return Cor_Sete;
				case 4:return Cor_Oito;
				case 5:return Cor_Um;
				case 6:return Cor_Dois;
				case 7:return Cor_Tres;
				case 8:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 5) // quando ele me conheceu mudou se para o interior deixo o carro na garagem :&_&:
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Seis;
				case 2:return Cor_Sete;
				case 3:return Cor_Oito;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
				case 6:return Cor_Tres;
				case 7:return Cor_Quatro;
				case 8:return Cor_Cinco;
			}
			volta_sbr++;
		}
		if (volta_sbr == 6) // a maquilhagem virou poeira
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Sete;
				case 2:return Cor_Oito;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
				case 6:return Cor_Quatro;
				case 7:return Cor_Cinco;
				case 8:return Cor_Seis;
			}
			volta_sbr++;
		}
		if (volta_sbr == 7)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Oito;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
				case 6:return Cor_Cinco;
				case 7:return Cor_Seis;
				case 8:return Cor_Sete;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 9)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		Cor_Nove = por_cores_bem(R_Cor9);
		if (volta_sbr == 0)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
				case 6:return Cor_Seis;
				case 7:return Cor_Sete;
				case 8:return Cor_Oito;
				case 9:return Cor_Nove;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Seis;
				case 6:return Cor_Sete;
				case 7:return Cor_Oito;
				case 8:return Cor_Nove;
				case 9:return Cor_Um;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Seis;
				case 5:return Cor_Sete;
				case 6:return Cor_Oito;
				case 7:return Cor_Nove;
				case 8:return Cor_Um;
				case 9:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Seis;
				case 4:return Cor_Sete;
				case 5:return Cor_Oito;
				case 6:return Cor_Nove;
				case 7:return Cor_Um;
				case 8:return Cor_Dois;
				case 9:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Seis;
				case 3:return Cor_Sete;
				case 4:return Cor_Oito;
				case 5:return Cor_Nove;
				case 6:return Cor_Um;
				case 7:return Cor_Dois;
				case 8:return Cor_Tres;
				case 9:return Cor_Quatro;
			}
			volta_sbr++;
		} if (volta_sbr == 5)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Seis;
				case 2:return Cor_Sete;
				case 3:return Cor_Oito;
				case 4:return Cor_Nove;
				case 5:return Cor_Um;
				case 6:return Cor_Dois;
				case 7:return Cor_Tres;
				case 8:return Cor_Quatro;
				case 9:return Cor_Cinco;
			}
			volta_sbr++;
		}
		if (volta_sbr == 6)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Sete;
				case 2:return Cor_Oito;
				case 3:return Cor_Nove;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
				case 6:return Cor_Tres;
				case 7:return Cor_Quatro;
				case 8:return Cor_Cinco;
				case 9:return Cor_Seis;
			}
			volta_sbr++;
		}
		if (volta_sbr == 7)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Oito;
				case 2:return Cor_Nove;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
				case 6:return Cor_Quatro;
				case 7:return Cor_Cinco;
				case 8:return Cor_Seis;
				case 9:return Cor_Sete;
			}
			volta_sbr++;
		}
		if (volta_sbr == 8)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Nove;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
				case 6:return Cor_Cinco;
				case 7:return Cor_Seis;
				case 8:return Cor_Sete;
				case 9:return Cor_Oito;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 10)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		Cor_Nove = por_cores_bem(R_Cor9);
		Cor_Dez = por_cores_bem(R_Cor10);
		if (volta_sbr == 0)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
				case 6:return Cor_Seis;
				case 7:return Cor_Sete;
				case 8:return Cor_Oito;
				case 9:return Cor_Nove;
				case 10:return Cor_Dez;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Seis;
				case 6:return Cor_Sete;
				case 7:return Cor_Oito;
				case 8:return Cor_Nove;
				case 9:return Cor_Dez;
				case 10:return Cor_Um;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Seis;
				case 5:return Cor_Sete;
				case 6:return Cor_Oito;
				case 7:return Cor_Nove;
				case 8:return Cor_Dez;
				case 9:return Cor_Um;
				case 10:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Seis;
				case 4:return Cor_Sete;
				case 5:return Cor_Oito;
				case 6:return Cor_Nove;
				case 7:return Cor_Dez;
				case 8:return Cor_Um;
				case 9:return Cor_Dois;
				case 10:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Seis;
				case 3:return Cor_Sete;
				case 4:return Cor_Oito;
				case 5:return Cor_Nove;
				case 6:return Cor_Dez;
				case 7:return Cor_Um;
				case 8:return Cor_Dois;
				case 9:return Cor_Tres;
				case 10:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 5)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Seis;
				case 2:return Cor_Sete;
				case 3:return Cor_Oito;
				case 4:return Cor_Nove;
				case 5:return Cor_Dez;
				case 6:return Cor_Um;
				case 7:return Cor_Dois;
				case 8:return Cor_Tres;
				case 9:return Cor_Quatro;
				case 10:return Cor_Cinco;
			}
			volta_sbr++;
		}
		if (volta_sbr == 6)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Sete;
				case 2:return Cor_Oito;
				case 3:return Cor_Nove;
				case 4:return Cor_Dez;
				case 5:return Cor_Um;
				case 6:return Cor_Dois;
				case 7:return Cor_Tres;
				case 8:return Cor_Quatro;
				case 9:return Cor_Cinco;
				case 10:return Cor_Seis;
			}
			volta_sbr++;
		}
		if (volta_sbr == 7)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Oito;
				case 2:return Cor_Nove;
				case 3:return Cor_Dez;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
				case 6:return Cor_Tres;
				case 7:return Cor_Quatro;
				case 8:return Cor_Cinco;
				case 9:return Cor_Seis;
				case 10:return Cor_Sete;
			}
			volta_sbr++;
		}
		if (volta_sbr == 8)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Nove;
				case 2:return Cor_Dez;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
				case 6:return Cor_Quatro;
				case 7:return Cor_Cinco;
				case 8:return Cor_Seis;
				case 9:return Cor_Sete;
				case 10:return Cor_Oito;
			}
			volta_sbr++;
		}
		if (volta_sbr == 9)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dez;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
				case 6:return Cor_Cinco;
				case 7:return Cor_Seis;
				case 8:return Cor_Sete;
				case 9:return Cor_Oito;
				case 10:return Cor_Nove;
			}
			volta_sbr = 0;
		}
	}
	return '\x01';
}
//
public int Native_Cores_Descendo_Sequencia(int cor, char[] R_Cor1, char[] R_Cor2, char[] R_Cor3, char[] R_Cor4, char[] R_Cor5, char[] R_Cor6, char[] R_Cor7, 
	char[] R_Cor8, char[] R_Cor9, char[] R_Cor10, char[] receber_numero_Cores)
{
	int volta_sbr = 0;
	int Cor_Um, Cor_Dois, Cor_Tres, Cor_Quatro, Cor_Cinco, Cor_Seis, Cor_Sete, Cor_Oito, Cor_Nove, Cor_Dez;
	if (StringToInt(receber_numero_Cores) == 2)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		if (volta_sbr == 1)
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				
			}
			volta_sbr--;
		}
		else
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Um;
			}
			volta_sbr++;
		}
	}
	if (StringToInt(receber_numero_Cores) == 3)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		if (volta_sbr == 0)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 2:return Cor_Um;
				case 1:return Cor_Dois;
				case 3:return Cor_Tres;
				
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Um;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 4)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		if (volta_sbr == 0)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Um;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 5) // Vamos fazer um trato que eu seu namorado <3
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		if (volta_sbr == 0)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Um;
			} // um bebe como voce nao merece sofrer :/
			volta_sbr = 0; // quando chega ao 5 volta po 0 
		}
	}
	if (StringToInt(receber_numero_Cores) == 6) // e ela ta movimentando ;=)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		if (volta_sbr == 0)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
				case 6:return Cor_Seis;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Seis;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
				case 6:return Cor_Cinco;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Seis;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
				case 6:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Seis;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
				case 6:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Seis;
				case 5:return Cor_Um;
				case 6:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 5)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Seis;
				case 6:return Cor_Um;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 7)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		if (volta_sbr == 0)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
				case 6:return Cor_Seis;
				case 7:return Cor_Sete;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Sete;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
				case 6:return Cor_Cinco;
				case 7:return Cor_Seis;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Seis;
				case 2:return Cor_Sete;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
				case 6:return Cor_Quatro;
				case 7:return Cor_Cinco;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Seis;
				case 3:return Cor_Sete;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
				case 6:return Cor_Tres;
				case 7:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Seis;
				case 4:return Cor_Sete;
				case 5:return Cor_Um;
				case 6:return Cor_Dois;
				case 7:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 5)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Seis;
				case 5:return Cor_Sete;
				case 6:return Cor_Um;
				case 7:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 6)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Seis;
				case 6:return Cor_Sete;
				case 7:return Cor_Um;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 8)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		if (volta_sbr == 0)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
				case 6:return Cor_Seis;
				case 7:return Cor_Sete;
				case 8:return Cor_Oito;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Oito;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
				case 6:return Cor_Cinco;
				case 7:return Cor_Seis;
				case 8:return Cor_Sete;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Sete;
				case 2:return Cor_Oito;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
				case 6:return Cor_Quatro;
				case 7:return Cor_Cinco;
				case 8:return Cor_Seis;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Seis;
				case 2:return Cor_Sete;
				case 3:return Cor_Oito;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
				case 6:return Cor_Tres;
				case 7:return Cor_Quatro;
				case 8:return Cor_Cinco;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Seis;
				case 3:return Cor_Sete;
				case 4:return Cor_Oito;
				case 5:return Cor_Um;
				case 6:return Cor_Dois;
				case 7:return Cor_Tres;
				case 8:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 5) // quando ele me conheceu mudou se para o interior deixo o carro na garagem :&_&:
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Seis;
				case 4:return Cor_Sete;
				case 5:return Cor_Oito;
				case 6:return Cor_Um;
				case 7:return Cor_Dois;
				case 8:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 6) // a maquilhagem virou poeira
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Seis;
				case 5:return Cor_Sete;
				case 6:return Cor_Oito;
				case 7:return Cor_Um;
				case 8:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 7)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Seis;
				case 6:return Cor_Sete;
				case 7:return Cor_Oito;
				case 8:return Cor_Um;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 9)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		Cor_Nove = por_cores_bem(R_Cor9);
		if (volta_sbr == 0)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
				case 6:return Cor_Seis;
				case 7:return Cor_Sete;
				case 8:return Cor_Oito;
				case 9:return Cor_Nove;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Nove;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
				case 6:return Cor_Cinco;
				case 7:return Cor_Seis;
				case 8:return Cor_Sete;
				case 9:return Cor_Oito;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Oito;
				case 2:return Cor_Nove;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
				case 6:return Cor_Quatro;
				case 7:return Cor_Cinco;
				case 8:return Cor_Seis;
				case 9:return Cor_Sete;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Sete;
				case 2:return Cor_Oito;
				case 3:return Cor_Nove;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
				case 6:return Cor_Tres;
				case 7:return Cor_Quatro;
				case 8:return Cor_Cinco;
				case 9:return Cor_Seis;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Seis;
				case 2:return Cor_Sete;
				case 3:return Cor_Oito;
				case 4:return Cor_Nove;
				case 5:return Cor_Um;
				case 6:return Cor_Dois;
				case 7:return Cor_Tres;
				case 8:return Cor_Quatro;
				case 9:return Cor_Cinco;
			}
			volta_sbr++;
		} if (volta_sbr == 5)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Seis;
				case 3:return Cor_Sete;
				case 4:return Cor_Oito;
				case 5:return Cor_Nove;
				case 6:return Cor_Um;
				case 7:return Cor_Dois;
				case 8:return Cor_Tres;
				case 9:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 6)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Seis;
				case 4:return Cor_Sete;
				case 5:return Cor_Oito;
				case 6:return Cor_Nove;
				case 7:return Cor_Um;
				case 8:return Cor_Dois;
				case 9:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 7)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Seis;
				case 5:return Cor_Sete;
				case 6:return Cor_Oito;
				case 7:return Cor_Nove;
				case 8:return Cor_Um;
				case 9:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 8)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Seis;
				case 6:return Cor_Sete;
				case 7:return Cor_Oito;
				case 8:return Cor_Nove;
				case 9:return Cor_Um;
			}
			volta_sbr = 0;
		}
	}
	if (StringToInt(receber_numero_Cores) == 10)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		Cor_Nove = por_cores_bem(R_Cor9);
		Cor_Dez = por_cores_bem(R_Cor10);
		if (volta_sbr == 0)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Um;
				case 2:return Cor_Dois;
				case 3:return Cor_Tres;
				case 4:return Cor_Quatro;
				case 5:return Cor_Cinco;
				case 6:return Cor_Seis;
				case 7:return Cor_Sete;
				case 8:return Cor_Oito;
				case 9:return Cor_Nove;
				case 10:return Cor_Dez;
			}
			volta_sbr++;
		}
		if (volta_sbr == 1)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dez;
				case 2:return Cor_Um;
				case 3:return Cor_Dois;
				case 4:return Cor_Tres;
				case 5:return Cor_Quatro;
				case 6:return Cor_Cinco;
				case 7:return Cor_Seis;
				case 8:return Cor_Sete;
				case 9:return Cor_Oito;
				case 10:return Cor_Nove;
			}
			volta_sbr++;
		}
		if (volta_sbr == 2)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Nove;
				case 2:return Cor_Dez;
				case 3:return Cor_Um;
				case 4:return Cor_Dois;
				case 5:return Cor_Tres;
				case 6:return Cor_Quatro;
				case 7:return Cor_Cinco;
				case 8:return Cor_Seis;
				case 9:return Cor_Sete;
				case 10:return Cor_Oito;
			}
			volta_sbr++;
		}
		if (volta_sbr == 3)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Oito;
				case 2:return Cor_Nove;
				case 3:return Cor_Dez;
				case 4:return Cor_Um;
				case 5:return Cor_Dois;
				case 6:return Cor_Tres;
				case 7:return Cor_Quatro;
				case 8:return Cor_Cinco;
				case 9:return Cor_Seis;
				case 10:return Cor_Sete;
			}
			volta_sbr++;
		}
		if (volta_sbr == 4)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Sete;
				case 2:return Cor_Oito;
				case 3:return Cor_Nove;
				case 4:return Cor_Dez;
				case 5:return Cor_Um;
				case 6:return Cor_Dois;
				case 7:return Cor_Tres;
				case 8:return Cor_Quatro;
				case 9:return Cor_Cinco;
				case 10:return Cor_Seis;
			}
			volta_sbr++;
		}
		if (volta_sbr == 5)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Seis;
				case 2:return Cor_Sete;
				case 3:return Cor_Oito;
				case 4:return Cor_Nove;
				case 5:return Cor_Dez;
				case 6:return Cor_Um;
				case 7:return Cor_Dois;
				case 8:return Cor_Tres;
				case 9:return Cor_Quatro;
				case 10:return Cor_Cinco;
			}
			volta_sbr++;
		}
		if (volta_sbr == 6)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Cinco;
				case 2:return Cor_Seis;
				case 3:return Cor_Sete;
				case 4:return Cor_Oito;
				case 5:return Cor_Nove;
				case 6:return Cor_Dez;
				case 7:return Cor_Um;
				case 8:return Cor_Dois;
				case 9:return Cor_Tres;
				case 10:return Cor_Quatro;
			}
			volta_sbr++;
		}
		if (volta_sbr == 7)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Quatro;
				case 2:return Cor_Cinco;
				case 3:return Cor_Seis;
				case 4:return Cor_Sete;
				case 5:return Cor_Oito;
				case 6:return Cor_Nove;
				case 7:return Cor_Dez;
				case 8:return Cor_Um;
				case 9:return Cor_Dois;
				case 10:return Cor_Tres;
			}
			volta_sbr++;
		}
		if (volta_sbr == 8)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Tres;
				case 2:return Cor_Quatro;
				case 3:return Cor_Cinco;
				case 4:return Cor_Seis;
				case 5:return Cor_Sete;
				case 6:return Cor_Oito;
				case 7:return Cor_Nove;
				case 8:return Cor_Dez;
				case 9:return Cor_Um;
				case 10:return Cor_Dois;
			}
			volta_sbr++;
		}
		if (volta_sbr == 9)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dois;
				case 2:return Cor_Tres;
				case 3:return Cor_Quatro;
				case 4:return Cor_Cinco;
				case 5:return Cor_Seis;
				case 6:return Cor_Sete;
				case 7:return Cor_Oito;
				case 8:return Cor_Nove;
				case 9:return Cor_Dez;
				case 10:return Cor_Um;
			}
			volta_sbr = 0;
		}
	}
	return '\x01';
}
public int Native_Cores_Aleatorias(char[] R_Cor1, char[] R_Cor2, char[] R_Cor3, char[] R_Cor4, char[] R_Cor5, char[] R_Cor6, char[] R_Cor7, 
	char[] R_Cor8, char[] R_Cor9, char[] R_Cor10, char[] receber_numero_Cores)
{
	int Cor_Um, Cor_Dois, Cor_Tres, Cor_Quatro, Cor_Cinco, Cor_Seis, Cor_Sete, Cor_Oito, Cor_Nove, Cor_Dez;
	if (StringToInt(receber_numero_Cores) == 2)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		switch (GetRandomInt(1, 2))
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
		}
	}
	if (StringToInt(receber_numero_Cores) == 3)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		switch (GetRandomInt(1, 3))
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
		}
	}
	if (StringToInt(receber_numero_Cores) == 4)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		switch (GetRandomInt(1, 4))
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
		}
	}
	if (StringToInt(receber_numero_Cores) == 5)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		switch (GetRandomInt(1, 5))
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
		}
	}
	if (StringToInt(receber_numero_Cores) == 6)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		switch (GetRandomInt(1, 6))
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
			case 6:return Cor_Seis;
		}
	}
	if (StringToInt(receber_numero_Cores) == 7)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		switch (GetRandomInt(1, 7))
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
			case 6:return Cor_Seis;
			case 7:return Cor_Sete;
		}
	}
	if (StringToInt(receber_numero_Cores) == 8)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		switch (GetRandomInt(1, 8))
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
			case 6:return Cor_Seis;
			case 7:return Cor_Sete;
			case 8:return Cor_Oito;
		}
	}
	if (StringToInt(receber_numero_Cores) == 9)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		Cor_Nove = por_cores_bem(R_Cor9);
		switch (GetRandomInt(1, 9))
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
			case 6:return Cor_Seis;
			case 7:return Cor_Sete;
			case 8:return Cor_Oito;
			case 9:return Cor_Nove;
		}
	}
	if (StringToInt(receber_numero_Cores) == 10)
	{
		Cor_Um = por_cores_bem(R_Cor1);
		Cor_Dois = por_cores_bem(R_Cor2);
		Cor_Tres = por_cores_bem(R_Cor3);
		Cor_Quatro = por_cores_bem(R_Cor4);
		Cor_Cinco = por_cores_bem(R_Cor5);
		Cor_Seis = por_cores_bem(R_Cor6);
		Cor_Sete = por_cores_bem(R_Cor7);
		Cor_Oito = por_cores_bem(R_Cor8);
		Cor_Nove = por_cores_bem(R_Cor9);
		Cor_Dez = por_cores_bem(R_Cor10);
		switch (GetRandomInt(1, 10))
		{
			case 1:return Cor_Um;
			case 2:return Cor_Dois;
			case 3:return Cor_Tres;
			case 4:return Cor_Quatro;
			case 5:return Cor_Cinco;
			case 6:return Cor_Seis;
			case 7:return Cor_Sete;
			case 8:return Cor_Oito;
			case 9:return Cor_Nove;
			case 10:return Cor_Dez;
		}
	}
	return '\x01';
}
