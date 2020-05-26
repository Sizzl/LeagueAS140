//================================================================================
// emoticon.
//================================================================================
class emoticon extends Object;

var() string Code;
var() bool bsimple;
var() bool bnotstd;
var() Texture Tex;
var() int dim;
var() int rx;
var() int ry;
var() bool boffensive;
var() bool bColor;
var() Color col;
var emoticon Next;

function DrawIcon (Canvas Canvas, float factor)
{
	local Color temp;

}

defaultproperties
{
    col=(R=255, G=255, B=255, A=0)
}