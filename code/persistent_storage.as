// Demonstration of the persistent storage API
// This implementation closely mirrors the VScript API, except there is no ScriptStorageScopeMgr

[ClientCommand("cl_example_storage_show", "Example of how to show script storage data")]
void ShowScriptStorage(CommandArgs@ args)
{
	// Create a storage scope that references "myTest"
	StorageScope s("myTest");

	// Display the values
	Msg("int " + s.GetInt("int") + "\n");
	Msg("float " + s.GetFloat("float") + "\n");
	Msg("string " + s.GetString("string") + "\n");
}

[ClientCommand("cl_example_storage_set", "Example of how to set script storage")]
void SetScriptStroage(CommandArgs@ args)
{
	// Set the values. These will persist across map loads and game restarts, until set or cleared again
	StorageScope s("myTest");
	s.SetInt("int", 1234);
	s.SetFloat("float", 21.25);
	s.SetString("string", "Hello world");
}

[ClientCommand("cl_example_storage_clear", "Clear stuff")]
void ScriptStorageClear(CommandArgs@ args)
{
	// Clear all entries in the myTest storage scope
	StorageScope s("myTest");
	s.ClearAll();
}
