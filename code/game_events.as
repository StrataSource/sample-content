// Demonstrates the usage of the game event attribute

[GameEvent("player_hurt")]
void OnPlayerHurt(GameEvent@ event)
{
	Msg("Player with id " + event.GetInt("userid") + " now has " + event.GetInt("health") + " health!\n");
}
