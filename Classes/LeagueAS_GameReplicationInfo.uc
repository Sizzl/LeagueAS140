//================================================================================
// LeagueAS_GameReplicationInfo.
//================================================================================

class LeagueAS_GameReplicationInfo extends TournamentGameReplicationInfo;

var int StartTimeRemaining;
var int TimeElapsed;
var int TimeRemaining;
var string FortName[20];
var string FortCompleted[20];
var string MatchScore;
var bool bMatchModeEnabled;
var LeagueAS_ExtPlayerReplicationInfo ePRIArray[32];
var bool bAuthEnabled;

replication
{
  unreliable if ( Role == 4 )
    StartTimeRemaining,TimeElapsed,TimeRemaining,FortName,FortCompleted,MatchScore,bMatchModeEnabled,ePRIArray;
}

function Timer ();

