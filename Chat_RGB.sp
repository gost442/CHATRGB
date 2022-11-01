#include <sourcemod>
#include <cstrike>
#include <sdktools>
#include <sdkhooks>
#include <multicolors>
#include <clientprefs>
#include <hextags>
#include <gRGB>
#pragma semicolon 1
#pragma newdecls required
#define LoopClientes(%1) for(int %1 = 1;%1 <= MaxClients;%1++) if(IsValidClient(%1))
//-- Cookies
Handle STAFF_Usar_TAG;
Handle STAFF_VIP_TAG;
Handle STAFF_SPONSOR_TAG;
Handle COR_TAG_M;
Handle COR_TAG_GG;
Handle COR_TAG;
Handle COR_NOME_GG;
Handle COR_NOME;
Handle COR_NOME_M;
Handle COR_CHAT_GG;
Handle COR_CHAT;
Handle COR_CHAT_M;

//----cookies do rgb tag--//
Handle Cor1_G_TAG;
Handle Cor2_G_TAG;
Handle Cor3_G_TAG;
Handle Cor4_G_TAG;
Handle Cor5_G_TAG;
Handle Cor6_G_TAG;
Handle Cor7_G_TAG;
Handle Cor8_G_TAG;
Handle Cor9_G_TAG;
Handle Cor10_G_TAG;
Handle Numero_Cores_G_TAG;
Handle Tipo_Sequencia_G_TAG;
//----cookies do rgb NOME--//
Handle Cor1_G_Nome;
Handle Cor2_G_Nome;
Handle Cor3_G_Nome;
Handle Cor4_G_Nome;
Handle Cor5_G_Nome;
Handle Cor6_G_Nome;
Handle Cor7_G_Nome;
Handle Cor8_G_Nome;
Handle Cor9_G_Nome;
Handle Cor10_G_Nome;
Handle Numero_Cores_G_Nome;
Handle Tipo_Sequencia_G_Nome;
//----cookies do rgb CHAT--//
Handle Cor1_G_CHAT;
Handle Cor2_G_CHAT;
Handle Cor3_G_CHAT;
Handle Cor4_G_CHAT;
Handle Cor5_G_CHAT;
Handle Cor6_G_CHAT;
Handle Cor7_G_CHAT;
Handle Cor8_G_CHAT;
Handle Cor9_G_CHAT;
Handle Cor10_G_CHAT;
Handle Numero_Cores_G_CHAT;
Handle Tipo_Sequencia_G_CHAT;
//
Handle Cores_RGB_tag;
Handle Cores_RGB_nome;
Handle Cores_RGB_chat;
//----//
CustomTags TAGS_da_CFG[MAXPLAYERS + 1];
int Posicao_Escolhida_1SPONSOR[MAXPLAYERS + 1];
int Posicao_Escolhida_Itens[MAXPLAYERS + 1];
int Posicao_Escolhida_Cores[MAXPLAYERS + 1];
int RGB_QCores_ESCL[MAXPLAYERS + 1];
int RGB_TROCAR_QCores_ESCL[MAXPLAYERS + 1];
char cor_selecionada[MAXPLAYERS + 1][64];
bool ja_apliquei[MAXPLAYERS + 1] = { false, ... };
//Becap das TAGS

KeyValues Tag_Beca_KV[MAXPLAYERS + 1];
KeyValues Tag_Beca_KV_limpar[MAXPLAYERS + 1];
ArrayList Array_Passagem_Funcao[MAXPLAYERS + 1];
ArrayList Array_temporaria[MAXPLAYERS + 1];
StringMap Arvore_Do_BEcap[MAXPLAYERS + 1];
bool B_Do_becap[MAXPLAYERS + 1];
bool beca_ja_escrito[MAXPLAYERS + 1];
char Nome_Escrit[MAXPLAYERS + 1][128];
//
enum
{
	VIP, 
	SPONSOR, 
	STAFF
};
AdminFlag l_tipodevip[3] = { Admin_Custom1, Admin_Custom5, Admin_Ban };

enum struct Guardar_Dados
{
	char numero_cores_txt[128];
	int numero_cores;
	int numero_cores_salvar;
	int numero_cores_m;
	char numero_coresV2[128];
	int como_queres;
	int cores_Seq_Esc;
	char nome_da_formatacao[128];
}
Guardar_Dados Dados_Selecionados[MAXPLAYERS + 1];
ArrayList Que_Cores[MAXPLAYERS + 1];
char salvar_nome_seccao[MAXPLAYERS + 1][300];
bool ja_vi_isto[MAXPLAYERS + 1];
char cor1_v2[MAXPLAYERS + 1][68], cor2_v2[MAXPLAYERS + 1][68], cor3_v2[MAXPLAYERS + 1][68], cor4_v2[MAXPLAYERS + 1][68], cor5_v2[MAXPLAYERS + 1][68], cor6_v2[MAXPLAYERS + 1][68], cor7_v2[MAXPLAYERS + 1][68], cor8_v2[MAXPLAYERS + 1][68], cor9_v2[MAXPLAYERS + 1][68], cor10_v2[MAXPLAYERS + 1][68];
bool veio_da_verf[MAXPLAYERS + 1];
int Posicao_Trocar[MAXPLAYERS + 1];
int Posicao_Trocar_TxT[MAXPLAYERS + 1];
//--VIP PARTE--//
bool VIP_Ja_Apliquei[MAXPLAYERS + 1];
char VIP_cor_selecionada[MAXPLAYERS + 1][64];
int POS_COR_VIP_Escolhida[MAXPLAYERS + 1];
bool repor_chat_VIP[MAXPLAYERS + 1];
//--//
//--SPONSOR N RGB PARTE--//
bool a_geral[MAXPLAYERS + 1], a_tag[MAXPLAYERS + 1], a_nome[MAXPLAYERS + 1], a_chat[MAXPLAYERS + 1];
bool SPONSOR_Ja_Apliquei[MAXPLAYERS + 1], SPONSOR_escolher_nova_cor[MAXPLAYERS + 1];
char SPONSOR_Cor_Selecionada[MAXPLAYERS + 1][128];
//-SPONSOR RGB PARTE-//
bool Alterar_Cores_Parte_Final[MAXPLAYERS + 1];
bool Alterar_Formatacao_Parte_Final[MAXPLAYERS + 1];
char cor_a_mudar[MAXPLAYERS + 1][128];
bool rgb_a_tag[MAXPLAYERS + 1], rgb_a_nome[MAXPLAYERS + 1], rgb_a_chat[MAXPLAYERS + 1];
bool fazer_becap[MAXPLAYERS + 1];
//-- BEcap Parte--/
int Posicao_Escolhida_Becaps[MAXPLAYERS + 1];
bool bcp_tag_apl[MAXPLAYERS + 1];
bool bcp_nome_apl[MAXPLAYERS + 1];
bool bcp_chat_apl[MAXPLAYERS + 1];
bool repor_apl_becap[MAXPLAYERS + 1];
bool mudar_nome_becap[MAXPLAYERS + 1];
bool ecap_nome_ativar_chat[MAXPLAYERS + 1];
char pegar_novo_nome_escrito[MAXPLAYERS + 1][128];
char cor_a_mudar_becap[MAXPLAYERS + 1][128];
int Posicao_Trocar_Becap[MAXPLAYERS + 1];
int Posicao_Trocar_TxT_Becap[MAXPLAYERS + 1];
int EBCaps_QCores_ESCL[MAXPLAYERS + 1];


#include "cenas/alterar_cores_becap.sp"
#include "cenas/becap_parte.sp"
#include "cenas/comandos.sp"
#include "cenas/editar_becap.sp"
#include "cenas/menu_principal.sp"
#include "cenas/eventos_parte.sp"
#include "cenas/natives_parte.sp"
#include "cenas/processador_chat.sp"
#include "cenas/repor_parte.sp"
#include "cenas/rgb_parte.sp"
#include "cenas/rgb_parte_total.sp"
#include "cenas/sponsor_menu_naorgb.sp"
#include "cenas/sponsor_sel.sp"
#include "cenas/staff_parte.sp"
#include "cenas/vip_parte.sp"