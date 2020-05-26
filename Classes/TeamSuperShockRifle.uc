//================================================================================
// TeamSuperShockRifle.
//================================================================================
class TeamSuperShockRifle extends SuperShockRifle;

function SetHand (float hand)
{
	if ( (Pawn(Owner).PlayerReplicationInfo.Team != 0) && Class'LeagueAS_Tweaks'.Default.bInstaGibUseTeamColor )
	{
		MultiSkins[0]=Texture'ASMD_t1';
		MultiSkins[2]=Texture'ASMD_t3';
		MultiSkins[3]=Texture'ASMD_t4';
	} else {
		MultiSkins[0]=Texture'SASMD_t1';
		MultiSkins[2]=Texture'SASMD_t3';
		MultiSkins[3]=Texture'SASMD_t4';
	}
	Super.SetHand(hand);
}

function SpawnEffect (Vector HitLocation, Vector SmokeLocation)
{
	local Teamsupershockbeam tsb;
	local Vector DVector;
	local int NumPoints;
	local Rotator SmokeRotation;
}

function ProcessTraceHit (Actor Other, Vector HitLocation, Vector HitNormal, Vector X, Vector Y, Vector Z)
{
	if ( Other == None )
	{
		HitNormal= -X;
		HitLocation=Owner.Location + X * 10000.00;
	}
	SpawnEffect(HitLocation,Owner.Location + CalcDrawOffset() + (FireOffset.X + 20) * X + FireOffset.Y * Y + FireOffset.Z * Z);
	Spawn(Class'ut_Teamsuperring',,,HitLocation + HitNormal * 8,rotator(HitNormal)).TeamInfo=Pawn(Owner).PlayerReplicationInfo.Team;
	if ( (Other != self) && (Other != Owner) && (Other != None) )
	{
		Other.TakeDamage(hitdamage,Pawn(Owner),HitLocation,60000.00 * X,MyDamageType);
	}
}