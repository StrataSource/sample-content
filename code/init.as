//-----------------------------------------------------------------------------------------
// Purpose: Init code for server and client.
//
// SPDX-License-Identifier: MIT
//-----------------------------------------------------------------------------------------

// Only print this message once, on the server :)
#if SERVER
Msg("Sample content has been loaded in this game session\n");
#endif

// Include our server-side only scripts
#if SERVER
#include "server/entity_iterator.as"
#include "server/entity_remove.as"
#include "server/game_event_system.as"
#include "server/physics_object.as"
#endif

// Include our client-side only scripts
#if CLIENT
#include "client/cvar_ref.as"
#include "client/persistent_storage.as"
#endif

// Shared code
#include "shared/custom_commands.as"
#include "shared/init_events.as"
