// Demonstrates the usage of the ServerCommand and ClientCommand attributes

[ServerCommand("sv_my_server_command", "A fun and awesome server command")]
void MyCommand(const CommandArgs@ args)
{
	Msg("This is my server command, called from the server\n");
}

[ClientCommand("cl_my_client_command", "A fun and awesome cheat client command", FCVAR_CHEAT)]
void MyClientCommand(const CommandArgs@ args)
{
	if (args.ArgC() < 2)
		Msg("Woah, pass more args to see something epic!");
	else
		Msg("Arg0 " + args.Arg(0) + ", Arg1 " + args.Arg(1));
}

