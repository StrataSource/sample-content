// Demonstrates the init/shutdown events

[LevelInitPreEntity]
void OnLevelInitPreEntity()
{
	Msg("level init pre-entity\n");
}

[LevelInitPostEntity]
void OnLevelInitPostEntity()
{
	Msg("level init post-entity\n");
}

[LevelShutdownPreEntity]
void OnLevelShutdownPreEntity()
{
	Msg("Level shutdown pre-entity\n");
}

[LevelShutdownPostEntity]
void OnLevelShutdownPostEntity()
{
	Msg("Level shutdown post-entity\n");
}

