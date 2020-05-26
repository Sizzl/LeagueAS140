//================================================================================
// NewMsg.
//================================================================================
class NewMsg extends LocalMessagePlus
	Config(User);

var string Msg;
var PlayerReplicationInfo PRI;
var PlayerReplicationInfo PRI2;
var bool binit;
var int topsize;
var int bottomsize;
var float YSZ;
var float YSZsq;
var float XL;
var float YL;
var int totalsizesq;
var float EndOfLife;
var bool bsqueeze;
var int cline;
var bool bdisplayplayername;
var int swit;
var Object OptionalObject;
var bool bTeamSay;
var Font msgfontobj;
var bool bOverrideEmotes;
var bool bNewMessage;
var config float duration;
var config string MessageFont;
var config int DefColorIndex;
var config int DefNameColorIndex;
var config bool bUseTeamColors;
var config int RedColorIndex;
var config int BlueColorIndex;


defaultproperties
{
    duration=4.00
    MessageFont="LadderFonts.UTLadder16"
    DefColorIndex=243
    DefNameColorIndex=237
    bUseTeamColors=True
    RedColorIndex=236
    BlueColorIndex=238
    Lifetime=65535
}