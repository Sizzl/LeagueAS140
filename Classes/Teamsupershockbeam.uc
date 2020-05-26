//================================================================================
// Teamsupershockbeam.
//================================================================================
class Teamsupershockbeam extends supershockbeam;

var int TeamInfo;

replication
{
	unreliable if ( Role == 4 )
		TeamInfo;
}

simulated function PostNetBeginPlay ()
{

}

simulated function Timer ()
{
	local Teamsupershockbeam R;

}