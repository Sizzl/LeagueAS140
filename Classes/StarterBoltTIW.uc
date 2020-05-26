//================================================================================
// StarterBoltTIW.
//================================================================================
class StarterBoltTIW extends PBoltTIW;

var float OldError;
var float NewError;
var float StartError;
var float aimerror;
var Rotator AimRotation;
var float AnimTime;

replication
{
	unreliable if ( Role == 4 )
		NewError,aimerror,AimRotation;
}

simulated function PostBeginPlay ()
{
	Super.PostBeginPlay();
	if ( Instigator == None )
	{
		return;
	}
}

simulated function Tick (float DeltaTime)
{
	local Vector X;
	local Vector Y;
	local Vector Z;
	local Vector AimSpot;
	local Vector DrawOffset;
	local Vector AimStart;
	local int YawErr;
	local float dAdjust;
	local Bot MyBot;

	CheckBeam(X,DeltaTime);
}

simulated function CheckBeam (Vector X, float DeltaTime)
{
	local Actor HitActor;
	local Vector HitLocation;
	local Vector HitNormal;
}

defaultproperties
{
    StartError=0.50
    SpriteAnim(0)=Texture'Botpack.Skins.sbolt0'
    SpriteAnim(1)=Texture'Botpack.Skins.sbolt1'
    SpriteAnim(2)=Texture'Botpack.Skins.sbolt2'
    SpriteAnim(3)=Texture'Botpack.Skins.sbolt3'
    SpriteAnim(4)=Texture'Botpack.Skins.sbolt4'
    RemoteRole=2
    LightType=1
    LightEffect=13
    LightBrightness=255
    LightHue=83
    LightSaturation=50
    LightRadius=5
}