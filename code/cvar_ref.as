// Demonstrates ConVar refs

[ClientCommand("my_cvarref_demo")]
void MyCvarRefDemo(const CommandArgs@ args)
{
	ConVarRef intensity("r_portal_light_intensity");

	Msg("is r_protal_light_intensity valid? " + intensity.GetBool() + "\n");
	Msg("current val: " + intensity.GetFloat() + "\n");

	intensity.SetValue(1);
	Msg("New val: " + intensity.GetFloat() + "\n");

	ConVarRef invalid("my_invalid_thingy");
	Msg("is my_invalid_thingy valid? " + invalid.IsValid() + "\n");
}

