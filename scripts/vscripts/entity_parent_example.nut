/**
 * Example of how to use SetMoveType and entity parenting from VScript
 * This creates a weighted cube that is 32 units in front of the player, and then parents it to the player.
 */

local keyValues = {
	NewSkins = "1"
}
local hChild = CreateEntityByName("prop_weighted_cube", keyValues)

local hPlayer = GetPlayer()

hChild.SetAbsOrigin(hPlayer.GetOrigin() + (hPlayer.GetForwardVector() * 128) + Vector(0,0,16))

// Spawn the cube
hChild.Spawn()

// Set the collision group such that we do not collide with the player
hChild.SetCollisionGroup(COLLISION_GROUP_PLAYER_HELD);

// Parent it to the player
hChild.SetParent(hPlayer)

