//================================================================================
// NewFormattedMessagePlus.
//================================================================================
class NewFormattedMessagePlus extends NewMsg
	Config(User);

var int linestart[256];
var int linespace[256];
var int emline[512];
var int cxemotes[512];
var int cyemotes[512];
var int cxtext[512];
var int cytext[512];
var int indx;
var int msgindx;
var string slist[512];
var emoticon elist[256];
var int LineSize[256];
var float factor[512];
var int lastindx;

function emoticon getemoticon (out string S, out string t, bool bTeamSay)
{

}

function Initmsg (Canvas Canvas, out float XLinit, out float YLinit, optional Object OptionalObject)
{
	local int i;
	local int pos;
	local int j;
	local int lastspace;
	local string tmp;
	local string Chr;
	local string orgtmp;
	local float sx;
	local float sy;
	local float cx;
	local float cy;
	local float orgcy;
	local float orgcx;
	local int calclinespace;
	local int clinespace;
	local emoticon EM;
	local int clinesize;
	local string MessageString;

}

function RenderMsg (int cx, int cy, Canvas Canvas)
{
	local int i;
	local int pos;
	local int j;
	local string Chr;
	local string orgtmp;
	local float sx;
	local float sy;
	local float orgcy;
	local float orgcx;
	local int indx;
	local int calclinespace;
	local int clinespace;
	local int clinesize;
	local int cline;
	local int startcy;
	local string MessageString;
	local bool bident;

}

defaultproperties
{
    bdisplayplayername=True
}