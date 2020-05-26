//================================================================================
// LeagueAS_CustomReplicationInfo.
//================================================================================

class LeagueAS_CustomReplicationInfo extends ReplicationInfo;

var string PlayerName[5];
var int Health[5];
var string Location[5];
var string WeaponName[5];

replication
{
  reliable if ( Role == 4 )
    KillTriggeredTextures,PlayerName,Health,Location,WeaponName;
}

simulated function KillTriggeredTextures ()
{
  local TriggeredTexture A;

}

defaultproperties
{
    bAlwaysRelevant=False

    NetUpdateFrequency=1.10

}
