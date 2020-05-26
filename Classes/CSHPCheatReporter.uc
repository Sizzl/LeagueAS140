//================================================================================
// CSHPCheatReporter.
//================================================================================
class CSHPCheatReporter extends Info;

var string Overlord;
var string emconf;
var HackProtection zzMyMutie;

function xxPreDecrypt ()
{
}

function string ftoa (float zzFloat, int zzPercision)
{
  return Left(string(zzFloat),InStr(string(zzFloat),".") + zzPercision);
}

function string xxDecodeMessageID (int zzMessageId)
{
  switch (zzMessageId)
  {
    default:
    return "Unknown Message sent to Server (" $ string(zzMessageId) $ ")";
    break;
  }
}

function string xxDecodeCheatID (int zzCheatID)
{
  switch (zzCheatID)
  {
    default:
    return "";
    break;
  }
}

function xxServerLog (Actor zzMyOwner, CSHPCheatRI zzMyRI, string zzLogString)
{
  local string zzIP;
}

function xxServerLog2 (Actor zzMyOwner, string zzLogString)
{
}

function xxServerCheatFound (Actor zzMyOwner, CSHPCheatRI zzMyRI, int zzMessageId, int zzCheatID, string zzMisc, optional bool bDoNotKick)
{
  local string zzIP;
  local string zzC;
  local string zzt;
  local int zzj;
  local int zzi;
  local int zza;
  local int zzb;
  local int zzo;
}

function xxClientTimedOut (Actor zzMyOwner, CSHPCheatRI zzMyRI)
{
  local string zzIP;
}

function xxClientLoggedOn (CSHPCheatRI zzMyRI, string zzRenderDevice, string zzViewPort, string zzVersion)
{
  local string zzIP;
}

function xxClientLoggedIn (CSHPCheatRI zzMyRI)
{
  local string zzIP;

}