//================================================================================
// Minigun2TIW.
//================================================================================
class Minigun2TIW extends minigun2;

var config int TracerInterval;
var float bullettime;
var float bulletcount;
var float miniprimpower;
var float minisecpower;
var bool firstbullet;
var int TracerCounter;
var float MiniPrimPowerFactor;
var float MiniSecondPowerFactor;

simulated event RenderTexture (ScriptedTexture Tex)
{
	local Color C;
	local string temp;
}

defaultproperties
{
    TracerInterval=5
    bulletcount=0.10
    miniprimpower=0.10
    minisecpower=0.07
    MiniPrimPowerFactor=1.00
    MiniSecondPowerFactor=1.00
    PickupMessage="You got the Minigun"
}