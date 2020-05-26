//================================================================================
// HackProtection.
//================================================================================

class HackProtection extends Mutator;

struct CRCDataCRCs
{
	var int Checksums[6];
};

struct CRCData
{
	var string PackageName;
	var int Offset;
	var int Frequency;
	var bool bFromServer;
	var int ChecksumCount;
};

var string Overlord;
var string emconf;
var() config int SecurityLevel;
var() config float SecurityFrequency;
var() config float SecurityTolerance;
var() config int ScanForRogues;
var() config bool bTrackFOV;
var() config bool bTrackCV;
var() config bool bAllowBehindView;
var() config int Advertise;
var() config bool bAllowNoSmoke;
var() config bool bUseCSHPLog;
var() config int MaxInitTries;
var() config int bAdminWarn;
var() config bool bMMBan;
var() config bool bEnableCRCCheck;
var() config int CRCRandomPackageCount;
var() config string CRCPackagesReq[8];
var() config string CRCPackagesRnd[16];
var() config bool bCRCClientLog;
var() config bool bAllowCRC0;
var() config bool bCheckTick;
var() config int HandleCR;
var bool zzbInitialized;
var PlayerPawn zzPlayerList[32];
var CSHPCheatRI zzPlayerRIList[32];
var int zzPlayerNetSpeed[32];
var Vector zzPlayerVList[32];
var int zzPlayerHeld[32];
var string zzCheatTestIP;
var string zzMyPacks;
var string zzServerLinkers;
var int CRCKey;
var int zzCRCPDataCount;
var CRCData zzCRCPackageData[8];
var CRCDataCRCs zzCRCServerCRCs[8];
var int CRCActions[8];
var CSHPCheatReporter zzMyCheat;
var localized string zzErrMsg;
var float zzTeamChangeTime;
var int zzGameState;
var string VersionStr;
var config string PClass;
var CSHPPtool zzPtool;
var config string CRClass;
var CReporter zzCRep;
var CSHPLog zzCheatLog;


function xxPreDecrypt ()
{
}

function xxCLog (string S)
{
	local Pawn zzP;
}

function xxILog (string S, int i)
{
}

function PostBeginPlay ()
{
	local int zzi;
	//local Class<CSHPPtool> zzPtoolClass;
	//local Class<CReporter> zzCrepClass;

	Super.PostBeginPlay();
	Level.Game.RegisterMessageMutator(self);
}

function InitCRCChecks ()
{
	//local CSHPWebResponse aWebResponse;
	local int zzi;
	local int R;
	local int remaining;
	local int Counter;
	local string taken;

}

function DecodeCRCPackageLine (string Line, int Index)
{
	local int j;
	local int k;

}

function Tick (float DeltaTime)
{
	local int zzi;
	local int zzj;
	local int zzspd;
	local Pawn zzP;
	local CSHPCheatRI zzRI;
	local Inventory zzInv;
	local string CRCData;
	local int tmp;
}

function int xxFindPIndexFor (Pawn zzP)
{
	local int zzi;
	return -1;
}

function Mutate (string MutateString, PlayerPawn Sender)
{
	local PlayerPawn zzP;
	local int zzi;
	local bool zzb;
	local int i;
	local int R;
	local int L;
	local int Id;
	local string A;
	local string B;
	local Pawn P;
	local Pawn ThisPawn;
	local string IP;
	local string S;

	if ( NextMutator != None )
	{
		NextMutator.Mutate(MutateString,Sender);
	}
}

function NextTeam (PlayerPawn zzP)
{
	local int nWantedTeam;
	local TeamGamePlus tgp;
	local float zzOldTeam;
}

function MakeTeamsEven (PlayerPawn zzP)
{
	local int zzOldTeam;
	local int lowTeam;
	local int i;
	local int lowTeamSize;
	local TeamGamePlus tgp;
}

function SetTeam (PlayerPawn zzP, string zzsteam)
{
	local bool zzbValid;
	local int zzOldTeam;
	local int zzteam;
}

function xxDied (Pawn zzP)
{
	local Pawn OtherPawn;
	local Actor A;
}

function bool xxGameIsPlaying ()
{
	local DeathMatchPlus DMP;
	return True;
}

event Destroyed ()
{
	Super.Destroyed();
}

function bool MutatorBroadcastMessage (Actor Sender, Pawn Receiver, out coerce string Msg, optional bool bBeep, optional out name Type)
{
	local Actor A;
	local bool legalspec;
	return Super.MutatorBroadcastMessage(Sender,Receiver,Msg,bBeep);
}

function bool MutatorBroadcastLocalizedMessage (Actor Sender, Pawn Receiver, out Class<LocalMessage> Message, optional out int Switch, optional out PlayerReplicationInfo RelatedPRI_1, optional out PlayerReplicationInfo RelatedPRI_2, optional out Object OptionalObject)
{
	local Actor A;
	return Super.MutatorBroadcastLocalizedMessage(Sender,Receiver,Message,Switch,RelatedPRI_1,RelatedPRI_2,OptionalObject);
}

function ModifyLogin (out Class<PlayerPawn> SpawnClass, out string Portal, out string Options)
{
	local Class<TournamentPlayer> tpc;
	local string zzInSkin;
	local string zzInFace;
	local Texture zztex;

	Super.ModifyLogin(SpawnClass,Portal,Options);
}

function string xxFixOption (string Options, string InKey, string Value)
{
	local string NewOption;
	local string Pair;
	local string xKey;
	local string xVal;

	NewOption="";
	return NewOption;
}

function string xxGetClass (string zzClassname)
{
	local string zzcls;
	local int zzP;

	zzcls=Caps(zzClassname);
	zzP=InStr(zzcls,".");
	return Left(zzcls,zzP);
}

function bool xxValidSP (string zzPackname)
{
	local int zzP;
	return True;
}

function bool PreventDeath (Pawn Killed, Pawn Killer, name DamageType, Vector HitLocation)
{
	local int zzCRINo;
	local CSHPCheatRI zzCRI;
	local PlayerReplicationInfo zzPRI;
	local CTFFlag zzflag;

	return Super.PreventDeath(Killed,Killer,DamageType,HitLocation);
}

function bool xxIsPlaying (Pawn zzOther)
{
	local PlayerReplicationInfo zzPRI;
	return True;
}

function bool HandlePickupQuery (Pawn Other, Inventory Item, out byte bAllowPickup)
{
	local bool bValid;
	local int i;
	local Inventory belt;
	local Inventory pads;
	local Inventory Armor;

	return Super.HandlePickupQuery(Other,Item,bAllowPickup);
}

defaultproperties
{
    SecurityLevel=1
    SecurityFrequency=3.00
    SecurityTolerance=30.00
    ScanForRogues=2
    bTrackFOV=True
    bTrackCV=True
    MaxInitTries=25
    bAdminWarn=1
    bEnableCRCCheck=True
    CRCRandomPackageCount=1
    VersionStr="Enhanced CSHP"
    PClass="LeagueAS140.CSHPPtool"
    CRClass="LeagueAS140.CReporter"
}