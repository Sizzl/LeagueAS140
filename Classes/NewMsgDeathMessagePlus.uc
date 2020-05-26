//================================================================================
// NewMsgDeathMessagePlus.
//================================================================================
class NewMsgDeathMessagePlus extends NewFormattedMessagePlus Config(User);

var localized string KilledString;
var Object obj;
var int emindx;
var emoticon Rdcolor;
var emoticon Blcolor;
var emoticon Dfcolor;
var emoticon defnamecolor;
var config int SniperEmote;
var config int HammerEmote;
var config int EnforcerEmote;
var config int BioEmote;
var config int ShockEmote;
var config int PulseEmote;
var config int RipperEmote;
var config int MiniEmote;
var config int FlakEmote;
var config int RocketEmote;
var config int WarheadEmote;
var config int ChainsawEmote;
var config int TelefragEmote;
var config int InstaEmote;
var config bool bAlternativeDeathMsgs;

function emoticon getemoticon (out string S, out string t, bool bTeamSay)
{

}

static function ClientReceive (PlayerPawn P, optional int Switch, optional PlayerReplicationInfo RelatedPRI_1, optional PlayerReplicationInfo RelatedPRI_2, optional Object OptionalObject)
{
}
static function string GetString (optional int Switch, optional PlayerReplicationInfo RelatedPRI_1, optional PlayerReplicationInfo RelatedPRI_2, optional Object OptionalObject)
{
}
function Initmsg (Canvas Canvas, out float XLinit, out float YLinit, optional Object OB)
{
    local string col1;
    local string col2;
}

defaultproperties
{
    KilledString="was killed by"
    HammerEmote=1
    EnforcerEmote=2
    BioEmote=3
    ShockEmote=4
    PulseEmote=5
    RipperEmote=6
    MiniEmote=7
    FlakEmote=8
    RocketEmote=9
    WarheadEmote=10
    ChainsawEmote=11
    TelefragEmote=12
    InstaEmote=13
    bdisplayplayername=False
    bTeamSay=True
    DefColorIndex=251
    DefNameColorIndex=236
    ChildMessage=Class'Botpack.KillerMessagePlus'
}