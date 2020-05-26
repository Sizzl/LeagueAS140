//================================================================================
// ut_Teamsuperring.
//================================================================================
class ut_Teamsuperring extends UT_Superring2;

var int TeamInfo;

replication
{
	unreliable if ( Role == 4 )
		TeamInfo;
}

simulated function SpawnExtraEffects ()
{
	local Actor A;
}

simulated event PostNetBeginPlay ()
{
}