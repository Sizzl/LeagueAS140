//================================================================================
// LeagueAS_Scoreboard.
//================================================================================

class LeagueAS_Scoreboard extends TeamScoreBoard;

var Texture FlagIcon;
var config bool bEnableTournamentFlags;

function string PadOut (string InText)
{
	local string Text;
}
function ShowScores (Canvas Canvas)
{
		local PlayerReplicationInfo PRI;
	local int PlayerCount;
	local int i;
	local float LoopCountTeam[4];
	local float XL;
	local float YL;
	local float YB;
	local float XOffset;
	local float YOffset;
	local float XStart;
	local float Y;
	local float StartTop;
	local int PlayerCounts[4];
	local int LongLists[4];
	local int BottomSlot[4];
	local Font CanvasFont;
	local bool bCompressed;
	local bool Left;
	local float R;
	local int TeamPings[4];
	local int TeamPLs[4];
	local int FortCount;
	local int diff;
	AssaultHUD(OwnerHUD).DrawTimeAt(Canvas,0.50 * Canvas.ClipX - 80 * Canvas.ClipX / 1280,4.00);

}

function DrawNameAndPing (Canvas Canvas, PlayerReplicationInfo PRI, float XOffset, float YOffset, bool bCompressed)
{
		local float XL;
	local float YL;
	local float YB;
	local BotReplicationInfo BRI;
	local string S;
	local string o;
	local string L;
	local Font CanvasFont;
	local bool bAdminPlayer;
	local bool bModeratorPlayer;
	local PlayerPawn PlayerOwner;
	local int Time;
	local int i;
	local LeagueAS_ExtPlayerReplicationInfo epri;
	local bool bSmall;
	DrawScore(Canvas,PRI.Score,XOffset,YOffset);
}