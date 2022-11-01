#if defined _gRGB_included
#endinput
#endif
#define _gRGB_included

//Allow plugins to use chat-processor defines
#if !defined _chat_processor_included
#define MAXLENGTH_FLAG		32
#define MAXLENGTH_NAME		128
#define MAXLENGTH_MESSAGE	128
#define MAXLENGTH_BUFFER	255
#endif

public SharedPlugin __pl_gRGB =
{
	name = "Chat_RGB",
	file = "Chat_RGB.smx",
#if defined REQUIRE_PLUGIN
	required = 1,
#else
	required = 0,
#endif
};


#if !defined REQUIRE_PLUGIN
public void __pl_gRGB_SetNTVOptional()
{
	MarkNativeAsOptional("gRGN_PrintToChat");
	MarkNativeAsOptional("gRGN_PrintToChatALL");
}
#endif

native void gRGN_PrintToChat(int client, char[] Texto_NaoRGB, char[] Texto_RGB, int tipo_sequencia, char[] R_Cor1, char[] R_Cor2, char[] R_Cor3, char[] R_Cor4, char[] R_Cor5, char[] R_Cor6, char[] R_Cor7,
char[] R_Cor8, char[] R_Cor9, char[] R_Cor10, char[] receber_numero_Cores);
native void gRGN_PrintToChatALL(char[] Texto_NaoRGB, char[] Texto_RGB, int tipo_sequencia, char[] R_Cor1, char[] R_Cor2, char[] R_Cor3, char[] R_Cor4, char[] R_Cor5, char[] R_Cor6, char[] R_Cor7,
char[] R_Cor8, char[] R_Cor9, char[] R_Cor10, char[] receber_numero_Cores);