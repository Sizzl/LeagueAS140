//================================================================================
// CSHPActorSpawnNotify.
//================================================================================
class CSHPActorSpawnNotify extends SpawnNotify;

var CSHPCheatRI MyRI;

simulated event Actor SpawnNotification (Actor Actor)
{
	return Actor;
}