public int Cores_Respeitam_Sequencia_TAG(int client, int cor)
{
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_TAG, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_TAG, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_TAG, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_TAG, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_TAG, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_TAG, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_TAG, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_TAG, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_TAG, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_TAG, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_TAG, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		while (cor > 2)
			cor -= 2;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		while (cor > 3)
			cor -= 3;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		while (cor > 4)
			cor -= 4;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		while (cor > 5)
			cor -= 5;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		while (cor > 6)
			cor -= 6;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		while (cor > 7)
			cor -= 7;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		while (cor > 8)
			cor -= 8;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		while (cor > 9)
			cor -= 9;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		while (cor > 10)
			cor -= 10;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
			case 10:return Cor_Dez[client];
		}
	}
	return '\x01';
}
public int Cores_Subindo_Sequencia_TAG(int client, int cor)
{
	int volta_sbr[MAXPLAYERS + 1] = { 0, ... };
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_TAG, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_TAG, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_TAG, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_TAG, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_TAG, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_TAG, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_TAG, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_TAG, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_TAG, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_TAG, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_TAG, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		if (volta_sbr[client] == 1)
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Um[client];
				
			}
			volta_sbr[client]--;
		}
		else
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				
			}
			volta_sbr[client]++;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5) // Vamos fazer um trato que eu seu namorado <3
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
			} // um bebe como voce nao merece sofrer :/
			volta_sbr[client] = 0; // quando chega ao 5 volta po 0 
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6) // e ela ta movimentando ;=)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5) // quando ele me conheceu mudou se para o interior deixo o carro na garagem :&_&:
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6) // a maquilhagem virou poeira
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		} if (volta_sbr[client] == 5)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
				case 10:return Cor_Dez[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Dez[client];
				case 10:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Dez[client];
				case 9:return Cor_Um[client];
				case 10:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Dez[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
				case 10:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Dez[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
				case 10:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Dez[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
				case 10:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Dez[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
				case 10:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Dez[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
				case 10:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Dez[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
				case 10:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 9)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dez[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
				case 10:return Cor_Nove[client];
			}
			volta_sbr[client] = 0;
		}
	}
	return '\x01';
}
//
public int Cores_Descendo_Sequencia_TAG(int client, int cor)
{
	int volta_sbr[MAXPLAYERS + 1] = { 0, ... }
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_TAG, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_TAG, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_TAG, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_TAG, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_TAG, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_TAG, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_TAG, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_TAG, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_TAG, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_TAG, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_TAG, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		if (volta_sbr[client] == 1)
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				
			}
			volta_sbr[client]--;
		}
		else
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 2:return Cor_Um[client];
				case 1:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5) // Vamos fazer um trato que eu seu namorado <3
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Um[client];
			} // um bebe como voce nao merece sofrer :/
			volta_sbr[client] = 0; // quando chega ao 5 volta po 0 
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6) // e ela ta movimentando ;=)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5) // quando ele me conheceu mudou se para o interior deixo o carro na garagem :&_&:
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6) // a maquilhagem virou poeira
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		} if (volta_sbr[client] == 5)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
				case 10:return Cor_Dez[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dez[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
				case 10:return Cor_Nove[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Dez[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
				case 10:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Dez[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
				case 10:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Dez[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
				case 10:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Dez[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
				case 10:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Dez[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
				case 10:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Dez[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
				case 10:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Dez[client];
				case 9:return Cor_Um[client];
				case 10:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 9)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Dez[client];
				case 10:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	return '\x01';
}
public int Cores_Aleatorias_TAG(int client)
{
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_TAG, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_TAG, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_TAG, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_TAG, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_TAG, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_TAG, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_TAG, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_TAG, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_TAG, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_TAG, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_TAG, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		switch (GetRandomInt(1, 2))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		switch (GetRandomInt(1, 3))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		switch (GetRandomInt(1, 4))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		switch (GetRandomInt(1, 5))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		switch (GetRandomInt(1, 6))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		switch (GetRandomInt(1, 7))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		switch (GetRandomInt(1, 8))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		switch (GetRandomInt(1, 9))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		switch (GetRandomInt(1, 10))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
			case 10:return Cor_Dez[client];
		}
	}
	return '\x01';
}
////////////////////////////// FIM DA TAG INICIO DO NOME //////
public int Cores_Respeitam_Sequencia_Nome(int client, int cor)
{
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_Nome, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_Nome, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_Nome, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_Nome, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_Nome, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_Nome, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_Nome, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_Nome, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_Nome, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_Nome, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_Nome, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		while (cor > 2)
			cor -= 2;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		while (cor > 3)
			cor -= 3;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		while (cor > 4)
			cor -= 4;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		while (cor > 5)
			cor -= 5;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		while (cor > 6)
			cor -= 6;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		while (cor > 7)
			cor -= 7;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		while (cor > 8)
			cor -= 8;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		while (cor > 9)
			cor -= 9;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		while (cor > 10)
			cor -= 10;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
			case 10:return Cor_Dez[client];
		}
	}
	return '\x01';
}
public int Cores_Subindo_Sequencia_Nome(int client, int cor)
{
	int volta_sbr[MAXPLAYERS + 1] = { 0, ... };
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_Nome, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_Nome, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_Nome, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_Nome, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_Nome, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_Nome, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_Nome, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_Nome, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_Nome, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_Nome, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_Nome, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		if (volta_sbr[client] == 1)
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Um[client];
				
			}
			volta_sbr[client]--;
		}
		else
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				
			}
			volta_sbr[client]++;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5) // Vamos fazer um trato que eu seu namorado <3
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
			} // um bebe como voce nao merece sofrer :/
			volta_sbr[client] = 0; // quando chega ao 5 volta po 0 
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6) // e ela ta movimentando ;=)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5) // quando ele me conheceu mudou se para o interior deixo o carro na garagem :&_&:
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6) // a maquilhagem virou poeira
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		} if (volta_sbr[client] == 5)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
				case 10:return Cor_Dez[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Dez[client];
				case 10:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Dez[client];
				case 9:return Cor_Um[client];
				case 10:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Dez[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
				case 10:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Dez[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
				case 10:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Dez[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
				case 10:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Dez[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
				case 10:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Dez[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
				case 10:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Dez[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
				case 10:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 9)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dez[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
				case 10:return Cor_Nove[client];
			}
			volta_sbr[client] = 0;
		}
	}
	return '\x01';
}
//
public int Cores_Descendo_Sequencia_Nome(int client, int cor)
{
	int volta_sbr[MAXPLAYERS + 1] = { 0, ... };
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_Nome, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_Nome, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_Nome, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_Nome, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_Nome, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_Nome, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_Nome, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_Nome, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_Nome, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_Nome, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_Nome, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		if (volta_sbr[client] == 1)
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				
			}
			volta_sbr[client]--;
		}
		else
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 2:return Cor_Um[client];
				case 1:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5) // Vamos fazer um trato que eu seu namorado <3
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Um[client];
			} // um bebe como voce nao merece sofrer :/
			volta_sbr[client] = 0; // quando chega ao 5 volta po 0 
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6) // e ela ta movimentando ;=)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5) // quando ele me conheceu mudou se para o interior deixo o carro na garagem :&_&:
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6) // a maquilhagem virou poeira
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		} if (volta_sbr[client] == 5)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
				case 10:return Cor_Dez[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dez[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
				case 10:return Cor_Nove[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Dez[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
				case 10:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Dez[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
				case 10:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Dez[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
				case 10:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Dez[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
				case 10:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Dez[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
				case 10:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Dez[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
				case 10:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Dez[client];
				case 9:return Cor_Um[client];
				case 10:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 9)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Dez[client];
				case 10:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	return '\x01';
}
public int Cores_Aleatorias_Nome(int client)
{
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_Nome, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_Nome, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_Nome, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_Nome, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_Nome, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_Nome, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_Nome, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_Nome, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_Nome, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_Nome, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_Nome, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		switch (GetRandomInt(1, 2))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		switch (GetRandomInt(1, 3))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		switch (GetRandomInt(1, 4))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		switch (GetRandomInt(1, 5))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		switch (GetRandomInt(1, 6))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		switch (GetRandomInt(1, 7))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		switch (GetRandomInt(1, 8))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		switch (GetRandomInt(1, 9))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		switch (GetRandomInt(1, 10))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
			case 10:return Cor_Dez[client];
		}
	}
	return '\x01';
}






/// Inicio do Chat

public int Cores_Respeitam_Sequencia_CHAT(int client, int cor)
{
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_CHAT, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_CHAT, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_CHAT, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_CHAT, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_CHAT, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_CHAT, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_CHAT, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_CHAT, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_CHAT, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_CHAT, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_CHAT, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		while (cor > 2)
			cor -= 2;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		while (cor > 3)
			cor -= 3;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		while (cor > 4)
			cor -= 4;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		while (cor > 5)
			cor -= 5;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		while (cor > 6)
			cor -= 6;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		while (cor > 7)
			cor -= 7;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		while (cor > 8)
			cor -= 8;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		while (cor > 9)
			cor -= 9;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		while (cor > 10)
			cor -= 10;
		switch (cor)
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
			case 10:return Cor_Dez[client];
		}
	}
	return '\x01';
}
public int Cores_Subindo_Sequencia_CHAT(int client, int cor)
{
	int volta_sbr[MAXPLAYERS + 1] = { 0, ... };
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_CHAT, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_CHAT, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_CHAT, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_CHAT, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_CHAT, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_CHAT, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_CHAT, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_CHAT, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_CHAT, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_CHAT, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_CHAT, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		if (volta_sbr[client] == 1)
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Um[client];
				
			}
			volta_sbr[client]--;
		}
		else
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				
			}
			volta_sbr[client]++;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5) // Vamos fazer um trato que eu seu namorado <3
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
			} // um bebe como voce nao merece sofrer :/
			volta_sbr[client] = 0; // quando chega ao 5 volta po 0 
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6) // e ela ta movimentando ;=)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5) // quando ele me conheceu mudou se para o interior deixo o carro na garagem :&_&:
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6) // a maquilhagem virou poeira
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		} if (volta_sbr[client] == 5)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
				case 10:return Cor_Dez[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Dez[client];
				case 10:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Dez[client];
				case 9:return Cor_Um[client];
				case 10:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Dez[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
				case 10:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Dez[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
				case 10:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Dez[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
				case 10:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Dez[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
				case 10:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Dez[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
				case 10:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Dez[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
				case 10:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 9)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dez[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
				case 10:return Cor_Nove[client];
			}
			volta_sbr[client] = 0;
		}
	}
	return '\x01';
}
//
public int Cores_Descendo_Sequencia_CHAT(int client, int cor)
{
	int volta_sbr[MAXPLAYERS + 1] = { 0, ... };
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_CHAT, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_CHAT, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_CHAT, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_CHAT, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_CHAT, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_CHAT, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_CHAT, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_CHAT, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_CHAT, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_CHAT, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_CHAT, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		if (volta_sbr[client] == 1)
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				
			}
			volta_sbr[client]--;
		}
		else
		{
			while (cor > 2)
				cor -= 2;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Um[client];
			}
			volta_sbr[client]++;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 2:return Cor_Um[client];
				case 1:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 3)
				cor -= 3;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 4)
				cor -= 4;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5) // Vamos fazer um trato que eu seu namorado <3
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 5)
				cor -= 5;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Um[client];
			} // um bebe como voce nao merece sofrer :/
			volta_sbr[client] = 0; // quando chega ao 5 volta po 0 
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6) // e ela ta movimentando ;=)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 6)
				cor -= 6;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 7)
				cor -= 7;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5) // quando ele me conheceu mudou se para o interior deixo o carro na garagem :&_&:
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6) // a maquilhagem virou poeira
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 8)
				cor -= 8;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		} if (volta_sbr[client] == 5)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 9)
				cor -= 9;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		if (volta_sbr[client] == 0)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Um[client];
				case 2:return Cor_Dois[client];
				case 3:return Cor_Tres[client];
				case 4:return Cor_Quatro[client];
				case 5:return Cor_Cinco[client];
				case 6:return Cor_Seis[client];
				case 7:return Cor_Sete[client];
				case 8:return Cor_Oito[client];
				case 9:return Cor_Nove[client];
				case 10:return Cor_Dez[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 1)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dez[client];
				case 2:return Cor_Um[client];
				case 3:return Cor_Dois[client];
				case 4:return Cor_Tres[client];
				case 5:return Cor_Quatro[client];
				case 6:return Cor_Cinco[client];
				case 7:return Cor_Seis[client];
				case 8:return Cor_Sete[client];
				case 9:return Cor_Oito[client];
				case 10:return Cor_Nove[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 2)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Nove[client];
				case 2:return Cor_Dez[client];
				case 3:return Cor_Um[client];
				case 4:return Cor_Dois[client];
				case 5:return Cor_Tres[client];
				case 6:return Cor_Quatro[client];
				case 7:return Cor_Cinco[client];
				case 8:return Cor_Seis[client];
				case 9:return Cor_Sete[client];
				case 10:return Cor_Oito[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 3)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Oito[client];
				case 2:return Cor_Nove[client];
				case 3:return Cor_Dez[client];
				case 4:return Cor_Um[client];
				case 5:return Cor_Dois[client];
				case 6:return Cor_Tres[client];
				case 7:return Cor_Quatro[client];
				case 8:return Cor_Cinco[client];
				case 9:return Cor_Seis[client];
				case 10:return Cor_Sete[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 4)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Sete[client];
				case 2:return Cor_Oito[client];
				case 3:return Cor_Nove[client];
				case 4:return Cor_Dez[client];
				case 5:return Cor_Um[client];
				case 6:return Cor_Dois[client];
				case 7:return Cor_Tres[client];
				case 8:return Cor_Quatro[client];
				case 9:return Cor_Cinco[client];
				case 10:return Cor_Seis[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 5)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Seis[client];
				case 2:return Cor_Sete[client];
				case 3:return Cor_Oito[client];
				case 4:return Cor_Nove[client];
				case 5:return Cor_Dez[client];
				case 6:return Cor_Um[client];
				case 7:return Cor_Dois[client];
				case 8:return Cor_Tres[client];
				case 9:return Cor_Quatro[client];
				case 10:return Cor_Cinco[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 6)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Cinco[client];
				case 2:return Cor_Seis[client];
				case 3:return Cor_Sete[client];
				case 4:return Cor_Oito[client];
				case 5:return Cor_Nove[client];
				case 6:return Cor_Dez[client];
				case 7:return Cor_Um[client];
				case 8:return Cor_Dois[client];
				case 9:return Cor_Tres[client];
				case 10:return Cor_Quatro[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 7)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Quatro[client];
				case 2:return Cor_Cinco[client];
				case 3:return Cor_Seis[client];
				case 4:return Cor_Sete[client];
				case 5:return Cor_Oito[client];
				case 6:return Cor_Nove[client];
				case 7:return Cor_Dez[client];
				case 8:return Cor_Um[client];
				case 9:return Cor_Dois[client];
				case 10:return Cor_Tres[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 8)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Tres[client];
				case 2:return Cor_Quatro[client];
				case 3:return Cor_Cinco[client];
				case 4:return Cor_Seis[client];
				case 5:return Cor_Sete[client];
				case 6:return Cor_Oito[client];
				case 7:return Cor_Nove[client];
				case 8:return Cor_Dez[client];
				case 9:return Cor_Um[client];
				case 10:return Cor_Dois[client];
			}
			volta_sbr[client]++;
		}
		if (volta_sbr[client] == 9)
		{
			while (cor > 10)
				cor -= 10;
			switch (cor)
			{
				case 1:return Cor_Dois[client];
				case 2:return Cor_Tres[client];
				case 3:return Cor_Quatro[client];
				case 4:return Cor_Cinco[client];
				case 5:return Cor_Seis[client];
				case 6:return Cor_Sete[client];
				case 7:return Cor_Oito[client];
				case 8:return Cor_Nove[client];
				case 9:return Cor_Dez[client];
				case 10:return Cor_Um[client];
			}
			volta_sbr[client] = 0;
		}
	}
	return '\x01';
}
public int Cores_Aleatorias_CHAT(int client)
{
	char R_Cor1[MAXPLAYERS + 1][128], R_Cor2[MAXPLAYERS + 1][128], R_Cor3[MAXPLAYERS + 1][128], R_Cor4[MAXPLAYERS + 1][128], R_Cor5[MAXPLAYERS + 1][128], R_Cor6[MAXPLAYERS + 1][128], R_Cor7[MAXPLAYERS + 1][128], R_Cor8[MAXPLAYERS + 1][128], R_Cor9[MAXPLAYERS + 1][128], R_Cor10[MAXPLAYERS + 1][128];
	int Cor_Um[MAXPLAYERS + 1], Cor_Dois[MAXPLAYERS + 1], Cor_Tres[MAXPLAYERS + 1], Cor_Quatro[MAXPLAYERS + 1], Cor_Cinco[MAXPLAYERS + 1], Cor_Seis[MAXPLAYERS + 1], Cor_Sete[MAXPLAYERS + 1], Cor_Oito[MAXPLAYERS + 1], Cor_Nove[MAXPLAYERS + 1], Cor_Dez[MAXPLAYERS + 1];
	char receber_numero_Cores[MAXPLAYERS + 1][32];
	GetClientCookie(client, Numero_Cores_G_CHAT, receber_numero_Cores[client], sizeof(receber_numero_Cores[]));
	GetClientCookie(client, Cor1_G_CHAT, R_Cor1[client], sizeof(R_Cor1[]));
	GetClientCookie(client, Cor2_G_CHAT, R_Cor2[client], sizeof(R_Cor2[]));
	GetClientCookie(client, Cor3_G_CHAT, R_Cor3[client], sizeof(R_Cor3[]));
	GetClientCookie(client, Cor4_G_CHAT, R_Cor4[client], sizeof(R_Cor4[]));
	GetClientCookie(client, Cor5_G_CHAT, R_Cor5[client], sizeof(R_Cor5[]));
	GetClientCookie(client, Cor6_G_CHAT, R_Cor6[client], sizeof(R_Cor6[]));
	GetClientCookie(client, Cor7_G_CHAT, R_Cor7[client], sizeof(R_Cor7[]));
	GetClientCookie(client, Cor8_G_CHAT, R_Cor8[client], sizeof(R_Cor8[]));
	GetClientCookie(client, Cor9_G_CHAT, R_Cor9[client], sizeof(R_Cor9[]));
	GetClientCookie(client, Cor10_G_CHAT, R_Cor10[client], sizeof(R_Cor10[]));
	if (StringToInt(receber_numero_Cores[client]) == 2)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		switch (GetRandomInt(1, 2))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 3)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		switch (GetRandomInt(1, 3))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 4)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		switch (GetRandomInt(1, 4))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 5)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		switch (GetRandomInt(1, 5))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 6)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		switch (GetRandomInt(1, 6))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 7)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		switch (GetRandomInt(1, 7))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 8)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		switch (GetRandomInt(1, 8))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 9)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		switch (GetRandomInt(1, 9))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
		}
	}
	if (StringToInt(receber_numero_Cores[client]) == 10)
	{
		Cor_Um[client] = por_cores_bem(R_Cor1[client]);
		Cor_Dois[client] = por_cores_bem(R_Cor2[client]);
		Cor_Tres[client] = por_cores_bem(R_Cor3[client]);
		Cor_Quatro[client] = por_cores_bem(R_Cor4[client]);
		Cor_Cinco[client] = por_cores_bem(R_Cor5[client]);
		Cor_Seis[client] = por_cores_bem(R_Cor6[client]);
		Cor_Sete[client] = por_cores_bem(R_Cor7[client]);
		Cor_Oito[client] = por_cores_bem(R_Cor8[client]);
		Cor_Nove[client] = por_cores_bem(R_Cor9[client]);
		Cor_Dez[client] = por_cores_bem(R_Cor10[client]);
		switch (GetRandomInt(1, 10))
		{
			case 1:return Cor_Um[client];
			case 2:return Cor_Dois[client];
			case 3:return Cor_Tres[client];
			case 4:return Cor_Quatro[client];
			case 5:return Cor_Cinco[client];
			case 6:return Cor_Seis[client];
			case 7:return Cor_Sete[client];
			case 8:return Cor_Oito[client];
			case 9:return Cor_Nove[client];
			case 10:return Cor_Dez[client];
		}
	}
	return '\x01';
}

//// FIM DAS CORES










public int Gradiente_Liniar(int cor)
{
	while (cor > 12)
		cor -= 12;
	
	switch (cor)
	{
		case 1:return '\x02';
		case 2:return '\x07';
		case 3:return '\x0F';
		case 4:return '\x0E';
		case 5:return '\x03';
		case 6:return '\x0C';
		case 7:return '\x0B';
		case 8:return '\x05';
		case 9:return '\x06';
		case 10:return '\x04';
		case 11:return '\x09';
		case 12:return '\x10';
	}
	return '\x01';
}
/*
silva
\x01 = #F4F8F8
\x02 = #FB0202
\x03 = #8D03B6
\x04 = #13EA2B
\x05 = #71CE6F
\x06 = #76C949
\x07 = #C82128
\x08 = #D6E4D8
\x09 = #D8E22D
\x0A = #E5F8F3
\x0B = #53BAF8
\x0C = #3561F8
\x0D = #D2D4DD
\x0E = #CC3BD8
\x0F = #E43939
\x10 = #ECD21F
*/
public int Fade(int cor)
{
	while (cor > 9)
		cor -= 9;
	
	switch (cor)
	{
		case 1:return '\x0E';
		case 2:return '\x0E';
		case 3:return '\x0E';
		case 4:return '\x03';
		case 5:return '\x03';
		case 6:return '\x0B';
		case 7:return '\x0B';
		case 8:return '\x0B';
		case 9:return '\x0B';
	}
	return '\x01';
}
public int LGBT(int cor)
{
	while (cor > 6)
		cor -= 6;
	
	switch (cor)
	{
		case 1:return '\x02';
		case 2:return '\x10';
		case 3:return '\x09';
		case 4:return '\x04';
		case 5:return '\x0C';
		case 6:return '\x0E';
	}
	return '\x01';
}
int ArcoIris(int color)
{
	while (color > 7)
		color -= 7;
	
	switch (color)
	{
		case 1:return '\x02';
		case 2:return '\x10';
		case 3:return '\x09';
		case 4:return '\x06';
		case 5:return '\x0B';
		case 6:return '\x0C';
		case 7:return '\x0E';
	}
	return '\x01';
}
int Aleatorias()
{
	switch (GetRandomInt(1, 16))
	{
		case 1:return '\x01';
		case 2:return '\x02';
		case 3:return '\x03';
		case 4:return '\x03';
		case 5:return '\x04';
		case 6:return '\x05';
		case 7:return '\x06';
		case 8:return '\x07';
		case 9:return '\x08';
		case 10:return '\x09';
		case 11:return '\x10';
		case 12:return '\x0A';
		case 13:return '\x0B';
		case 14:return '\x0C';
		case 15:return '\x0E';
		case 16:return '\x0F';
	}
	return '\x01';
}

public int por_cores_bem(char[] Cor_Transformar)
{
	if (StrEqual(Cor_Transformar, "Vermelho Claro"))
	{
		return '\x0F'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Vermelho"))
	{
		return '\x07'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Vermelho Escuro"))
	{
		return '\x02'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Normal"))
	{
		return '\x01'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Azul Claro"))
	{
		return '\x0D'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Azul"))
	{
		return '\x0B'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Azul Escuro"))
	{
		return '\x0C'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Roxo"))
	{
		return '\x03'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Violeta"))
	{
		return '\x0E'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Amarelo"))
	{
		return '\x09'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Dourado"))
	{
		return '\x10'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Verde Claro"))
	{
		return '\x05'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Verde"))
	{
		return '\x04'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Lima"))
	{
		return '\x06'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Cinza Claro"))
	{
		return '\x08'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, "Cinza Escuro"))
	{
		return '\x0A'; // verifica estas cores shani pff
	}
	if (StrEqual(Cor_Transformar, ""))
	{
		return '\x01'; // verifica estas cores shani pff
	}
	return '\x01';
}
//////////////////