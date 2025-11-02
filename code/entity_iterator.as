//-----------------------------------------------------------------------------------------
// Purpose: Demonstrates entity iterators. This system is nearly identical to the VScript
//  system, except that the global object is named differently.
//
// SPDX-License-Identifier: MIT
//-----------------------------------------------------------------------------------------

[ServerCommand("sv_test_entity_iterator", "")]
void EntityIteratorExample(CommandArgs@ args)
{
    // Print a list of all func_brushes in the map
    Msg("All func_brushes in this map:\n");
    for (auto@ ent = gEntityList.First(); @ent != null; @ent = gEntityList.Next(ent)) {
        if (ent.GetClassname() != "func_brush")
            continue;
        Msg(" " + ent.GetEntityIndex() + ": " + ent.GetClassname() + " " + ent.GetDebugName() + "\n");
    }
    
    // Find the player entity to base our search on
    auto@ player = gEntityList.FindByClassname(null, "player");
    
    if (@player != null) {
        Msg("Entities within 128 units of the player:\n");

        // Search through all entities within 128 units of the player.
        // note that we're repeatedly calling FindInSphere, and not using Next()
        CBaseEntity@ ent = null;
        while ((@ent = gEntityList.FindInSphere(ent, player.GetAbsOrigin(), 128)) != null) {
            Msg("  " + ent.GetClassname() + " " + ent.GetDebugName() + "\n");
        }
        
        // Search for func_brush entities within 2048 units of the player
        Msg("func_brush entities within 2048 units of the player:\n");
        @ent = null;
        while ((@ent = gEntityList.FindByClassnameWithin(ent, "func_brush", player.GetAbsOrigin(), 2048)) != null) {
            Msg("  " + ent.GetClassname() + " " + ent.GetDebugName() + "\n");
        }
    }
    else {
        Msg("Unable to find player entity\n");
    }    
}
