//================================================================================
// CSHPEntryActor.
//================================================================================
class CSHPEntryActor extends Info;

struct modpawn
{
	var Pawn Pawn;
	var bool bHidden;
	var Vector realLoc;
	var PlayerReplicationInfo PRI;
	var bool collideactors;
	var bool collideworld;
	var bool blockactors;
	var bool blockplayers;
	var bool bIsPlayer;
};

enum ERenderStatus {
	ERS_None,
	ERS_pre,
	ERS_rover,
	ERS_post
};

var string Overlord;
var string emconf;
var bool bscrambled;
var bool bRememberMuzzle;
var bool bweaphidden;
var config ERenderStatus ERStatus;
var modpawn modpawns[64];
var int mpn;
var bool bPrepared;
var int cnt;
var PlayerReplicationInfo foundrpi;
var LeagueAS_HUD myHUD;
var CSHPCheatRI mycri;
var LeagueAS_Tweaks myltwk;
var PlayerPawn LocalPlayer;

simulated event PostBeginPlay ()
{
	if ( Level.NetMode == 3 )
	{
		SetTimer(2.00,True);
	}
}

simulated function addactor (Actor A)
{
}

simulated function AddPawn (Pawn P)
{
}

simulated function DoScramble ()
{
	local int i;
	local Pawn P;
	local Vector tv;
}

simulated function UnScramble ()
{
	local int i;
	local Pawn P;
}

simulated event Init_HUD_PreRender (Canvas C)
{
}

simulated event Exit_HUD_PreRender (Canvas C)
{
}

simulated event Init_HUD_RenderOverlays (Canvas C)
{
}

simulated event Exit_HUD_RenderOverlays (Canvas C)
{
}

simulated event Init_HUD_PostRender (Canvas C)
{
}

simulated event Exit_HUD_PostRender (Canvas C)
{
}

simulated event Init_Console_PostRender (Canvas C)
{
}

simulated event Exit_Console_PostRender (Canvas C)
{
}

simulated event bool ProcessKeyEvent (int Key, int Action, float Delta)
{
	return False;
}

simulated event Timer ()
{
	local bool bwasscrambled;
	local Pawn P;
	local PlayerPawn PP;
	local LeagueAS_HUD HUD;
	local CSHPCheatRI cRI;
	local LeagueAS_Tweaks ltwk;
}

simulated function DrawPawns (Canvas Canvas)
{
	local int i;
	local Pawn P;
	local bool bv;
}

simulated function DrawSprites (Canvas Canvas)
{
	local int i;

}

simulated function DrawMuzzle (Canvas Canvas)
{
	local Weapon myweap;
}

defaultproperties
{
    bAlwaysRelevant=True
    RemoteRole=2
}