//================================================================================
// CSHPBadge.
//================================================================================
class CSHPBadge extends Mutator;

#exec TEXTURE IMPORT FILE="Textures\CSHPShield.pcx" NAME="CSHPShield" MIPS=OFF FLAGS=2

var string Overlord;
var float FadeOut;
var float TotalTime;
var CSHPCheatRI zzMyCheatRI;
var Canvas zzMyCanvas;
var Canvas zzFakeCanvas;
var HUD zzMyHud;
var float zzFadeTimer;
var bool zzbHudOff;
var bool zzbInitialized;
var bool zzbReallyInited;
var Mutator zzNextHud;
var string zzS1;
var string zzS2;
var string zzS3;
var string zzS4;
var string zzS5;
var string zzS6;
var string zzS7;
var string VersionStr;
var string LeagueASVersionStr;

function xxPreDecrypt ()
{
}

simulated function Tick (float Delta)
{
	Super.Tick(Delta);
}

simulated function PostRender (Canvas C)
{
	local float zzx;
	local float zzy;
	local float zzFadeValue;
	local string zzMsg;
	local string zzC1;
	local string zzC2;
	local string zzC3;
	local int zzi;
	local Pawn zzP;

	if ( (zzNextHud != None) && (zzNextHud != self) )
	{
		zzNextHud.PostRender(C);
	}
}

function xxInit ()
{
	zzbInitialized=True;
}

auto state TimeBomb
{
Begin:
	zzFadeTimer=TotalTime;
}

defaultproperties
{
    FadeOut=10.00
    TotalTime=20.00
    VersionStr="Enhanced CSHP"
}