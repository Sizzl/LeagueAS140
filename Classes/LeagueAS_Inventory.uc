//================================================================================
// LeagueAS_Inventory.
//================================================================================

class LeagueAS_Inventory extends Inventory;

var Pawn PlayerOwner;
var LeagueAssault LeagueAssaultGame;
var bool SpawnProtectActive;
var bool Initialized;
var bool Initiated;
var Vector OwnerStartPosition;
var int Counter;
var int Count;
var() globalconfig string shortcuts[64];
var config bool bshowmaplisttoall;
var float TimeSinceLastTeleport;
var int AttackerSpawnProt;
var int DefenderSpawnProt;

replication
{
  reliable if ( Role < 4 )
    MapList,ThrowArmor,ThrowArmour,SummonItem,CancelPause,RequestPause,Echo,ChangeTeams,ShowMatchScore,ForceMatchStart,Moderator,ModeratorLogout,ModeratorLogin,NumTeamView,GetPauseState,tiw,istiwminienabled,isbanonmatchmodeenabled;
  reliable if ( Role == 4 )
    TeleportClientSide;
}

event Spawned ()
{
  PlayerOwner = Pawn(Owner);
  LeagueAssaultGame = LeagueAssault(Level.Game);
}

exec function isbanonmatchmodeenabled ()
{
}

exec function istiwminienabled ()
{
}

exec function tiw ()
{
}

simulated exec function Options ()
{
}

exec function GetPauseState ()
{
}

exec function NumTeamView ()
{
  local LeagueAS_ExtPlayerReplicationInfo epri;
  local int i;
}

exec function StartMatch ()
{

}

exec function EndMatch ()
{
}

exec function ResetTeamNames ()
{
}

exec function TogglePracticeMode ()
{
}

exec function SetRedScore (int Score)
{
}

exec function SetBlueScore (int Score)
{
}

exec function ShowMatchLog ()
{
}

exec function ClearMatchLog ()
{
}

exec function ModeratorLogin (string ModPassword)
{
}

exec function ModeratorLogout ()
{
}

exec function Moderator (string CommandLine)
{
  local string Command;
}

exec function StopCountDown ()
{
}

exec function ForceMatchStart ()
{
}

exec function ShowMatchScore ()
{
}

exec function ChangeTeams ()
{
}

simulated exec function ToggleMute ()
{
  local LeagueAS_ExtPlayerReplicationInfo epri;
}

exec function Echo (string EchoStr)
{
  PlayerPawn(PlayerOwner).ClientMessage(EchoStr);
}

exec function RequestPause ()
{
}

exec function CancelPause ()
{
}

exec function SummonItem (string ClassName)
{
  local Class<Actor> NewClass;
}

exec function ThrowArmour (int ArmourType)
{
}

exec function ThrowArmor (int ArmourType)
{
}

function ActivateSpawnProtection ()
{
}

function InventoryTakeDamage (out int actualDamage, Pawn Victim, Pawn instigatedBy, out Vector HitLocation, out Vector Momentum, name DamageType)
{
}

function Timer ()
{
}

function Tick (float Delta)
{
  local PlayerPawn PP;
}

function CheckForSpectatorTeleport (PlayerPawn PP)
{
  local Teleporter SourceT;
  local Teleporter DestT;
}

function Teleporter FindCollideTeleporter (PlayerPawn Sender)
{
  local Teleporter t;
  local float DistanceX;
  local float DistanceY;
  local float DistanceZ;
  local float ADistance;
  return None;
}

function TeleportServerSide (PlayerPawn PP, Teleporter SourceT, Teleporter DestT)
{
  Accept(PP,SourceT,DestT);
}

simulated function TeleportClientSide (PlayerPawn PP, Teleporter SourceT, Teleporter DestT)
{
  Accept(PP,SourceT,DestT);
}

simulated function bool Accept (PlayerPawn Incoming, Teleporter SourceT, Teleporter DestT)
{
  local Rotator NewRot;
  local Rotator OldRot;
  local int oldYaw;
  local float mag;
  local Vector oldDir;

  return True;
}

exec function MapList (string List)
{
}

defaultproperties
{
    shortcuts(0)="ast AS-Asthenosphere.unr"

    shortcuts(1)="aut AS-AutoRIP.unr"

    shortcuts(2)="bal AS-Ballistic.unr"

    shortcuts(3)="bri AS-Bridge.unr"

    shortcuts(4)="dst AS-Desertstorm.unr"

    shortcuts(5)="dso AS-Desolate][.unr"

    shortcuts(6)="fri AS-Frigate.unr"

    shortcuts(7)="gol AS-GolgothaAL.unr"

    shortcuts(8)="gua AS-Guardia.unr"

    shortcuts(9)="gal AS-GuardiaAL.unr"

    shortcuts(10)="his AS-HiSpeed.unr"

    shortcuts(11)="lav AS-Lavafort][.unr"

    shortcuts(12)="maz AS-Mazon.unr"

    shortcuts(13)="oce AS-OceanFloor.unr"

    shortcuts(14)="oal AS-OceanFloorAL.unr"

    shortcuts(15)="ove AS-Overlord.unr"

    shortcuts(16)="riv AS-RiverbedAL.unr"

    shortcuts(17)="rv3 AS-Riverbed]l[AL"

    shortcuts(18)="roo AS-Rook.unr"

    shortcuts(19)="sie AS-Siege][.unr"

    shortcuts(20)="sub AS-SubmarineBase][.unr"

    shortcuts(21)="aal AS-AsthenosphereAL.unr"

    bshowmaplisttoall=True

    AttackerSpawnProt=4

    DefenderSpawnProt=2

    PickupMessage="Spawn protection has worn off."

    PickupMessageClass=Class'Botpack.PickupMessagePlus'

}
