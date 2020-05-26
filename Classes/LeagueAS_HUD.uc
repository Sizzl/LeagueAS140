//================================================================================
// LeagueAS_HUD.
//================================================================================
class LeagueAS_HUD extends AssaultHUD
	Config(User);

enum ERenderStatus {
	ERS_None,
	ERS_pre,
	ERS_rover,
	ERS_post
};

enum EFontScheme {
	FS_Manual,
	FS_Auto,
	FS_AutoSmallest,
	FS_AutoSmall,
	FS_AutoMedium,
	FS_AutoBig,
	FS_AutoHuge
};

var string Overlord;
var string emconf;
var LeagueAS_GameReplicationInfo LeagueASGameReplicationInfo;
var config int MaxSizeEmotes;
var config bool bNoOffensiveEmotes;
var config bool bOnlyTeamSayEmotes;
var config bool bNoFormatting;
var config bool bRemoveColors;
var config bool bRemoveNonTeamColors;
var config bool bRemoveEmotes;
var config bool bRemoveUndisplayedEmotes;
var config int loadgroups[6];
var config bool bDontAnimateEmotes;
var config bool bSqueezeEmotesWhenChatFull;
var config bool bSqueezeBeforeExpand;
var config bool bChatboxFastExpand;
var config bool bNoCutLines;
var config int DefaultExpandChatboxMidgame;
var config int DefaultExpandChatboxEndgame;
var config int MaxExpandChatboxMidgame;
var config int MaxExpandChatboxEndgame;
var config bool bCriticalMessageFix;
var config int CriticalMessageLifetime;
var config bool bRemoveProgMsgsOnMapsStart;
var config bool bShowAuthInfo;
var config int FortStandardMode;
var config bool bFirstRun;
var config bool bAutoAdjustDefaultChatboxSizeToResolution;
var config float CHairScale;
var config bool bCHairResIndependent;
var config bool bAdvancedCrosshairs;
var config int CrossHairGroup[11];
var globalconfig string OpaqueCrossHairs[20];
var config bool bSaved;
var Texture OpaqueCrossHairTextures[20];
var int lastsumyl;
var bool bReinitAllMsgs;
var bool bFortModeIsOn;
var bool buntweakdone;
var bool buntweakclassesdone;
var bool bremdrawmuzzle;
var CSHPEntryActor EntryAct;
var bool bEmoticonMenuCreated;
//var EmoteWindow EmotWindow;
var config EFontScheme FontScheme;
var config ERenderStatus ERStatus;
var NewMsg Newmsgqueue[128];
var int currentchatboxsize;
var int targetchatboxsize;
var int sstime;
var int sscount;

function xxPreDecrypt ()
{
}

function FirstRunOfLeagueAS ()
{

}

function PreBeginPlay ()
{
	local name SavedWP[50];
	local bool bFoundOne;
	local bool bFound;
	local int i;
	local int j;
	local int k;
	local Light Alight;
	local ZoneInfo Azoneinfo;

	Super.PreBeginPlay();
}

function bool ProcessKeyEvent (int Key, int Action, float Delta)
{

}

function DoShowFortStandards (Canvas Canvas)
{
	local FortStandard F;


}

function DoResetFortStandards ()
{
	local FortStandard F;


}

function float DistanceFrom (Pawn P1, Pawn P2)
{

}

simulated function DrawAmmo (Canvas Canvas)
{

}

simulated function PreRender (Canvas Canvas)
{

}

simulated event RenderOverlays (Canvas Canvas)
{

}

simulated event PostRender (Canvas C)
{

}

simulated function DoPostRender (Canvas Canvas)
{
	local float XL;
	local float YL;
	local float XPos;
	local float YPos;
	local float FadeValue;
	local string Message;
	local int M;
	local int i;
	local int j;
	local int k;
	local int XOverflow;
	local float OldOriginX;
	local Weapon myweap;
	local int TeamSize0;
	local int TeamSize1;
	local int Y;
	local int StartTop;
	local int ownerTeam;
	local int minsleft;
	local int secsleft;
	local int SelectedTime;
	local int lastmsg;
	local int firstmsg;
	local int prevmsg;
	local float FontHeight;
	local float StartRight;
	local float SumYL;
	local float cy;
	local Font CanvasFont;
	local PlayerReplicationInfo PRI;
	local LeagueAS_ExtPlayerReplicationInfo epri;
	local LeagueAS_CustomReplicationInfo cRI;
	local string OwnerName;
	local string TeamSizes;
	local string SelectedTimeString;
	local int msgspace[10];
	local int maxchatsize;
	local int defaultchatsize;
	local bool bfromtop;
	local Pawn P;
	local Actor A;
	local bool bdrawnyet;
	local bool bv;
	local int pos;
	local int Index;

}

simulated exec function ToggleExtendedHUD ()
{

}

function string RS (Actor A)
{
	local string S;

	S=string(A);
	return Mid(S,InStr(S,"."),15);
}

simulated function DrawStatus (Canvas Canvas)
{
	local float StatScale;
	local float ChestAmount;
	local float ThighAmount;
	local float H1;
	local float H2;
	local float X;
	local float Y;
	local float DamageTime;
	local int ArmorAmount;
	local int CurAbs;
	local int i;
	local Inventory Inv;
	local Inventory BestArmor;
	local bool bChestArmor;
	local bool bShieldbelt;
	local bool bThighArmor;
	local bool bJumpBoots;
	local bool bHasDoll;
	local Bot BotOwner;
	local TournamentPlayer TPOwner;
	local Texture Doll;
	local Texture DollBelt;

}

simulated function Message (PlayerReplicationInfo PRI, coerce string Msg, name MsgType)
{
	local int i;
	local int pos;
	local NewMsg MessageObj;
	local string tmp;
	local Object pemote;


}

simulated function LocalizedMessage (Class<LocalMessage> Message, optional int Switch, optional PlayerReplicationInfo RelatedPRI_1, optional PlayerReplicationInfo RelatedPRI_2, optional Object OptionalObject, optional string CriticalString)
{
	local int i;
	local NewMsg MessageObj;

}

simulated function Timer ()
{
	local int i;
	local int j;
	local Actor A;
	local FortStandard F;


}

simulated function DrawCrossHair (Canvas Canvas, int X, int Y)
{
	local float XScale;
	local float PickDiff;
	local float XLength;
	local float cx;
	local float cy;
	local Texture t;
	local int curweap;
	local int Ch;

}

simulated function ChangeCrosshair (int D)
{
	local int curweap;

}

simulated function Texture LoadCrosshair (int C)
{

}

function bool DrawSpeechArea (Canvas Canvas, float XL, float YL)
{
	local float YPos;
	local float Yadj;
	local float WackNumber;
	local int paneltype;
	local int secondypos;

}

simulated function DrawTypingPrompt (Canvas Canvas, Console Console)
{
	local string TypingPrompt;
	local float XL;
	local float YL;
	local float YPos;
	local float XOffset;
	local float MyOldClipX;
	local float OldClipY;
	local float OldOrgX;
	local float OldOrgY;

}

simulated function Tick (float DeltaTime)
{

	Super.Tick(DeltaTime);
}

function int modifycolor (int pcol, string opt, string varname, bool Advertise)
{
	local int ix;
	local emoticon ecolor;

}

exec function SShot ()
{
	local float B;
	local CSHPCheatRI aCRI;
}

simulated function bool TraceIdentify (Canvas Canvas)
{
	local Actor Other;
	local Vector HitLocation;
	local Vector HitNormal;
	local Vector StartTrace;
	local Vector EndTrace;
	local bool bDontDraw;
	local bool ParentTI;
	local CSHPCheatRI aCRI;

}

simulated function DrawTwoColorID (Canvas Canvas, string TitleString, string ValueString, int YStart)
{
	local float XL;
	local float YL;
	local float XOffset;
	local float X1;

}

simulated function bool DrawIdentifyInfo (Canvas Canvas)
{
	local CSHPCheatRI aCRI;
	local Font oldfont;

	return True;
}

exec function GetWeapon (Class<Weapon> nwc)
{

}

exec function HUDtoggle (string Command)
{
	local int SpacePos;
	local int i;
	local int clientresx;
	local int clientresy;
	local string comm1;
	local string comm2;
	local string comm3;
	local string FSstringvar;

}

static function LoadPresetA ()
{
	local string fixedsay;
	local string fixedteamsay;
	local string fixedstring;


}

static function LoadPresetB ()
{
	local string fixedsay;
	local string fixedteamsay;
	local string fixedstring;


}

static function LoadPresetC (int clientresx, int clientresy)
{
	local string fixedsay;
	local string fixedteamsay;
	local string fixedstring;


}

exec function ShowEmoticonMenu ()
{
	local UWindowRootWindow Root;

}

exec function ThrowWeapon ()
{
	local CSHPCheatRI cRI;
	local CSHPCheatRI CRI2;


}

function bool LookForAnemote ()
{
	local Texture testanemote;

}

defaultproperties
{
    MaxSizeEmotes=256
    loadgroups(0)=1
    loadgroups(1)=1
    loadgroups(2)=1
    loadgroups(3)=1
    loadgroups(4)=1
    loadgroups(5)=1
    bSqueezeEmotesWhenChatFull=True
    bChatboxFastExpand=True
    bNoCutLines=True
    DefaultExpandChatboxMidgame=64
    DefaultExpandChatboxEndgame=64
    MaxExpandChatboxMidgame=64
    MaxExpandChatboxEndgame=64
    bCriticalMessageFix=True
    CriticalMessageLifetime=4
    bShowAuthInfo=True
    bFirstRun=True
    bAutoAdjustDefaultChatboxSizeToResolution=True
    CHairScale=1.00
    targetchatboxsize=64
    bAlwaysTick=True
}