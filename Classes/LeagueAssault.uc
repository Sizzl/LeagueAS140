class LeagueAssault extends Assault;
var bool bDisableTIW;
var() config bool bngStatsCompatibility;
var() config bool bEnableCSHP;
var() config bool bAttackOnly;
var() config bool bMatchMode;
var() config bool bPracticeMode;
var() config bool bStandardise;
var() config bool bAuthorisePlayers;
var() config bool bAdminNameScore;
var() config bool bServerNameScore;
var() config bool bServerNameGameType;
var() config bool bCheckServername;
var() config bool bAutoPausing;
var() config bool bNoSuicidePenalties;
var() config int MaxPauseTime;
var() config int PauseTimeRemaining[2];
var() config int MaxPauseCount;
var() config int PauseCountRemaining[2];
var() config int MaxPausePerMapCount;
var() config int PauseLeadInOutTime;
var() config int TeamScore[2];
var() config int MapsLeft;
var() config int MatchLength;
var() config int FirstMapStartTime;
var() config int SubsequentMapStartTime;
var() config string TeamNameRed;
var() config string TeamNameBlue;
var() config string MapsWon[2];
var() config string Matchlog;
var() config private string ModeratorPassword;
var() config private string MatchPasswordRed;
var() config private string MatchPasswordBlue;
var() config private string MatchPasswordSpec;
var() config string PrivateString;
var() config string PublicString;
var() config string AuthModuleClass;
var() config string AntiBanPasswords;
var() config bool bCleanShutdown;
var() config bool brecovering;
var() config string recallmutatorlist;
var() config string recallmap;
var() config int lastobjcompletiontime;
var() config string nextexpectedmap;
var() config bool bcrashrecovery;
var() config bool bPreventMapChangeKick;
var() config int PreventMapChangeKickTime;
var() config bool bIPsCollected;
var() config int SavedPlayerCount;
var() config int SavedSpecCount;
var int FreePlayerSlots;
var int FreeSpecSlots;
var() config string SavedPlayerIPs[16];
var() config string SavedSpecIPs[4];
var() config bool bImprovedTeamBalance;
var() config int TeamBalanceDelayTime;
var() config bool bRemoveMW;
var string ECString;
var string VersionStr;
var string SubVersionStr;
var string OldServerName;
var string PackageName;
var bool bMapStarted;
var bool bMapEnded;
var bool ServerHasPass;
var float TeamChangeTime;
var() config string EntryActorClassString;

function PEFForceMatchStart ()
{

}

event PreLogin (string Options, string Address, out string Error, out string FailCode)
{
}