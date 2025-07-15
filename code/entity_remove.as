[Entity("prop_remove_self")]
class PropRemoveSelf : CBaseAnimating
{
    string m_szModelName = "models/gibs/airboat_broken_engine.mdl";

    void Precache() override
    {
        PrecacheModel( m_szModelName );
    }

    void Spawn() override
    {
        Precache();
        SetModel( m_szModelName );

        SetSolid( SOLID_BBOX );

        Vector vBounds = Vector( 20, 20, 20 );
        SetCollisionBounds( -vBounds, vBounds );
    }

    [Input("UtilRemove")]
    void InputUtilRemove( const InputData &in data )
    {
        Msg("Removing ourselves\n");

        CBaseAnimating@ anim = cast<CBaseAnimating@>(this);
        CBaseEntity@ ent = cast<CBaseEntity@>(anim);
        util::Remove(ent);
    }

    [Input("ClassRemove")]
    void InputClassRemove( const InputData &in data )
    {
        Msg("Removing ourselves\n");

        Remove();
    }
}