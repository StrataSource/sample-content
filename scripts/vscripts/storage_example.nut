// Demonstrates the persistent storage API

// NOTE: This storage is not networked. The values set by the client are stored separately
// from the server's.

// Create a new storage scope for our data. The scope name should be sufficiently unique
// to avoid conflicts with other addons.
local scope = Storage.CreateScope("my-cool-and-unique-adodn");

// Set some values
scope.SetString("test1", "Hello, world!");
scope.SetInt("test2", 123);
scope.SetFloat("test3", 32.32333);
scope.SetVector("test4", Vector(1,2,3));

// Get some values
printl("test1: " + scope.GetString("test1"));
printl("test2: " + scope.GetInt("test2"));
printl("test3: " + scope.GetFloat("test3"));
printl("test4: " + scope.GetVector("test4"));

// View the results of this with script_storage_dump and/or script_client_storage_dump 

