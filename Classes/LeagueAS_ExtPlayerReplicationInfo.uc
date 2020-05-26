//================================================================================
// LeagueAS_ExtPlayerReplicationInfo.
//================================================================================

class LeagueAS_ExtPlayerReplicationInfo extends PlayerReplicationInfo;

var bool bMuteSay;
var bool bMuteAll;
var bool bModerator;
var bool bReadyToPlay;
var int NetSpeed;
var int Armour;
var int AmmoAmount;
var string AuthString;
var bool bMyMuteSay;
var bool bMyMuteAll;
var bool bMyShowTeamInfo;
var LeagueAS_CustomReplicationInfo cRI;
var int AuthState;

replication
{
  reliable if ( Role == 4 )
    NotifyStartMap,LoadOptionsFromFile,bMuteSay,bMuteAll,bModerator,bReadyToPlay,NetSpeed,Armour,AmmoAmount,AuthString,cRI;
  reliable if ( Role < 4 )
    CopyOptionsToServer;
}

simulated function LoadOptionsFromFile ()
{
  if ( Role == 4 )
  {
    return;
  }
}

function CopyOptionsToServer (bool bNewMuteSay, bool bNewMuteAll, bool bNewShowTeamInfo)
{
  bMyMuteSay = bNewMuteSay;
  bMyMuteAll = bNewMuteAll;
  bMyShowTeamInfo = bNewShowTeamInfo;
}

simulated function NotifyStartMap ()
{
  if ( Role == 4 )
  {
    return;
  }

}

defaultproperties
{
    RemoteRole=2

    NetUpdateFrequency=1.50

}
