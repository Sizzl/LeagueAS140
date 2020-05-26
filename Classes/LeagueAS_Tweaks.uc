//================================================================================
// LeagueAS_Tweaks.
//================================================================================
class LeagueAS_Tweaks extends SpawnNotify
	Config(User);

var string Overlord;
var LeagueAS_HUD myHUD;
var config bool bNoSniperEnforcerFlashDynamicLights;
var config bool bNoShockBallDynamicLights;
var config bool bNoOtherProjectileDynamicLights;
var config bool bNoEffectsdynamicLights;
var config bool bNoLeveldynamicLights;
var config bool bNoFirstPersonMuzzleFlash;
var config bool bSimpleThirdPersonMuzzleFlash;
var config bool bNoMiniTracer;
var config bool bNoMiniShells;
var config bool bNoSniperEnforcerShells;
var config bool bSimpleItems;
var config bool bNoSpawnEffects;
var config bool bNoSparks;
var config bool bNoChips;
var config bool blilTweakSmokeReduction;
var config bool blilTweakGreenBlood;
var config bool bNoRocketsRot;
var config bool bNoShockBeamRot;
var config bool bSimpleCombo;
var config bool bSimpleShockBeam;
var config bool bInstaGibUseTeamColor;
var config int FreakyCombo;
var config int FreakyBeam;
var config int KillMsgType;
var config string EnforcerMsg;
var config string BioMsg;
var config string ShockMsg;
var config string PulseMsg;
var config string MiniMsg;
var config string RipperMsg;
var config string FlakMsg;
var config string RLMsg;
var config string SniperMsg;
var config string HammerMsg;
var config string WarHeadMsg;
var config string InstaMsg;
var config string TeleMsg;
var CSHPEntryActor EntryAct;

simulated event Actor SpawnNotification (Actor Actor)
{
	local int j;

	return Actor;
}

static function string getweaponstring (Class<Weapon> C)
{

}

defaultproperties
{
    bInstaGibUseTeamColor=True
    EnforcerMsg="%k riddled %o full of holes with the %w."
    BioMsg="%o drank a glass of %k's dripping green load."
    ShockMsg="%k inflicted mortal damage upon %o with the %w."
    PulseMsg="%o ate %k's burning plasma death."
    MiniMsg="%k's %w turned %o into a leaky piece of meat."
    RipperMsg="%k ripped a chunk of meat out of %o with the %w."
    FlakMsg="%o was ripped to shreds by %k's %w."
    RLMsg="%o was smacked down by %k's %w."
    SniperMsg="%k put a bullet through %o's head."
    HammerMsg="%o got smeared by %k's piston."
    WarHeadMsg="%o was vaporized by %k's %w!!"
    InstaMsg="%k electrified %o with the %w."
    TeleMsg="%k telefragged %o!"
}