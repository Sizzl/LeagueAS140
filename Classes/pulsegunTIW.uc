//================================================================================
// pulsegunTIW.
//================================================================================
class pulsegunTIW extends PulseGun;

state AltFiring 
{
	function Tick (float DeltaTime)
	{
		local Pawn P;
		Finish();
	}
	
}

defaultproperties
{
    AltProjectileClass=Class'StarterBoltTIW'
}