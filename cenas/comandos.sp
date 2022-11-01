
//⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹
//															 COMANDOS
//⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹⊹⊱•••《 ✮ 》•••⊰⊹
public Action Chat_RGB_CMD(int client, int args)
{
	if (eusouvip(client, l_tipodevip[VIP]) || eusouvip(client, l_tipodevip[SPONSOR]) || eusouvip(client, l_tipodevip[STAFF]))
	{
		TAGS_MENU(client);
	}
	else
	{
		CReplyToCommand(client, "{default}| {grey}INFO {default}|{orchid} ➠{default} O chat {darkred}R{darkblue}G{green}B{default} é exclusivo a VIPS e SPONSOR!");
	}
	return Plugin_Handled;
}

public Action STAFF_Zona(int client, int args)
{
	STAFF_TAGS_MENU(client);
	return Plugin_Handled;
}
