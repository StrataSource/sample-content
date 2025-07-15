[ServerCommand("sv_firegameevent_server", "")]
void sv_firegameevent_server(const CommandArgs@ args)
{
    GameEvent@ event = global::GameEventManager.CreateEvent("player_spawn");

    event.SetBool("BoolValue", true);
    event.SetInt("IntValue", 42);
    event.SetUint64("UInt64Value", 18446744073709551615);
    event.SetFloat("FloatValue", 3.141592);
    event.SetString("StringValue", "suspicious imposter");

    global::GameEventManager.FireEvent(event);
}

[ServerCommand("sv_firegameevent_client", "")]
void sv_firegameevent_client(const CommandArgs@ args)
{
    GameEvent@ event = global::GameEventManager.CreateEvent("player_spawn");

    event.SetBool("BoolValue", true);
    event.SetInt("IntValue", 42);
    event.SetUint64("UInt64Value", 18446744073709551615);
    event.SetFloat("FloatValue", 3.141592);
    event.SetString("StringValue", "suspicious imposter");

    global::GameEventManager.FireEventClientSide(event);
}

[GameEvent("player_spawn")]
void OnPlayerSpawn(const GameEvent@ event)
{
	Msg("Player spawned got fired\n");

    Msg("We got bool value of: " + event.GetBool("BoolValue") + "\n");
    Msg("We got int value of: " + event.GetInt("IntValue") + "\n");
    Msg("We got uint64 value of: " + event.GetUint64("UInt64Value") + "\n");
    Msg("We got float value of: " + event.GetFloat("FloatValue") + "\n");
    Msg("We got string value of: " + event.GetString("StringValue") + "\n");


    Msg("Should be empty: " + event.IsEmpty("DoesNotExistAtAll") + "\n");
    Msg("Should be not empty: " + event.IsEmpty("BoolValue") + "\n");

    Msg("Is Reliable: " + event.IsReliable() + "\n");
    Msg("Is Local: " + event.IsLocal() + "\n");
}