//================================================================================
// CSHPCheatRI.
//================================================================================

class CSHPCheatRI extends ReplicationInfo;

struct xxtGCF
{
  var bool zzbCheckVR;
  var bool zzbCheckFire;
  var bool zzbCheckPlayer;
  var bool zzbCheckConsole;
};

struct CRCClientCRCArray
{
  var int Checksums[8];
  var int fileSize[8];
};

var string Overlord;
var string emconf;
var string LeagueASVersionStr;
var bool zzWatchFOV;
var bool zzWatchCV;
var bool zzStopBV;
var bool zzbCVWarned;
var int zzCheckForRogues;
var bool zzbRogueFound;
var int zzSecurityLevel;
var bool zzbAllowNoSmoke;
var int zzGameState;
var string zzServerPacks;
var string zzClientLinkers;
var int zzMyNetSpeed;
var int zzCRCKey;
var bool zzbEnableCRCCheck;
var CRCClientCRCArray zzCRCClientCRCs;
var string zzRenderDevice;
var string zzViewPort;
var string zzVersion;
var bool bCheckTick;
var xxtGCF zzbGlobalCheckFlags;
var bool zzbInitialized;
var float zzTimeStamp;
var int zzConsoleTickCount;
var int zzLastConsoleTickCount;
var int zzCRITickCount;
var int zzLastCRITickCount;
var float zzTimeCheck;
var bool zzbClientMsgWaiting;
var int zzClientMsgType;
var int zzClientMsgID;
var string zzClientMsg;
var PlayerPawn zzMyPlayer;
var CSHPConsole zzMyConsole;
var CSHPBadge zzMyBadge;
var CSHPActorSpawnNotify zzMySpawnNotify;
var int zzCanvasGrace;
var int zzAckDelay;
var bool zzbGlobalVRCheck;
var bool zzbGlobalFireCheck;
var float zzMyFOV;
var Rotator zzMyVR;
var byte zzbFire;
var byte zzbAltFire;
var bool zzbIsMac;
var bool zzbIsPC;
var bool zzbIsLinux;
var bool zzbHasVR;
var bool zzbSetPlayerAlready;
var bool bWarned;
var bool bWarnedTick1;
var bool bWarnedTick2;
var string zzMyViewPort;
var int entrycnt;
var string zzLastCheat;
var HackProtection zzMyMutie;
var bool zzbBadGuy;
var CSHPCheatReporter zzCheat;
var float zzLastHey;
var int zzClientInitStatus;
var int zzClientInitTries;
var int zzLastServerMsg;
var float zzTimeOutGrace;
var bool bAllowCRC0;
var bool bCRCWasHere;
var bool bKickCR;
var string CRCData1;
var int CRCData2;
var bool CRCData3;
var config bool bdodgebugdebug;
var CSHPEntryActor EntryAct;
var int zzNames;
var int zzNameSize;
var int zzImports;
var int zzExports;
var int zzGenerations;
var int zzLazyLoaders;
var string zzLookupName;
var int zzInvalidConsoleCnt;
var private string TrustedPackages;
var private string zzfullname;

replication
{
  reliable if ( Role < 4 )
    xxthrowweapon,xxSShotRep,xxrespondprobe,xxDet,xxSetNetSpeed,xxHeyServer,xxServerGo,xxServerACK,xxServerLog2,xxServerLog,xxDoServerMsg,ReSendCRC;
  reliable if ( Role == 4 )
    xxServerDoKick,xxprobe,xxHeyClient,xxClientGoCrashYourself,xxClientGo,xxClientACK,xxServerCRCKick,xxCheckPackageCRCs;
  unreliable if ( Role == 4 )
    LeagueASVersionStr,zzWatchFOV,zzWatchCV,zzStopBV,zzCheckForRogues,zzSecurityLevel,zzbAllowNoSmoke,zzGameState,zzServerPacks,zzbEnableCRCCheck,bCheckTick;
}

function xxPreDecrypt ()
{
}

simulated event PostNetBeginPlay ()
{
  Super.PostNetBeginPlay();
  if ( (Level.NetMode == 3) && (Role < 2) ||  !bNetOwner )
  {
    return;
  }
  zzAckDelay=5;
  GotoState('xxClientInitializing');
}

simulated function xxVerifyCompile ()
{
}

simulated function xxVerifyClass ()
{
}

simulated function xxAttachConsole ()
{
  local CSHPConsole C;
  local UTConsole oldc;

  if ( zzMyConsole == None )
  {
    zzMyConsole=CSHPConsole(zzMyPlayer.Player.Console);
    if ( zzMyConsole == None )
    {
      zzMyPlayer.Player.Console.Disable('Tick');
      //C=new (None,Class'CSHPConsole');
      if ( C != None )
      {
        oldc=UTConsole(zzMyPlayer.Player.Console);
        C.zzMyCheatRI=self;
        C.zzOldConsole=oldc;
        //zzMyPlayer.Player.Console=C;
        zzMyConsole=C;
        //zzMyConsole.xxGetValues();
        if ( zzMyConsole.ConsoleWindow != None )
        {
          zzMyConsole.ConsoleWindow.WindowTitle="Console - " $ zzMyBadge.VersionStr;
        }
      } else {
        xxDoClientMsg(1,1,"AttachConsole");
      }
    } else {
      if ( zzMyPlayer.Player.Console.Class != Class'CSHPConsole' )
      {
        zzbBadGuy=True;
        xxDoClientMsg(1,2,"AttachConsole. Console Class:" $ string(zzMyPlayer.Player.Console.Class));
        zzMyPlayer.ConsoleCommand("disconnect");
      }
    }
  }
}

simulated function xxAttachBadge ()
{
  local Mutator zzHM;

  if ( (zzMyBadge != None) || (zzMyPlayer == None) || (zzMyPlayer.myHUD == None) )
  {
    return;
  }
  zzMyBadge=Spawn(Class'CSHPBadge',zzMyPlayer);
  if ( zzMyBadge == None )
  {
    xxServerLog("Couldn't Spawn Badge");
  } else {
    zzMyBadge.xxPreDecrypt();
    zzHM=zzMyPlayer.myHUD.HUDMutator;
    if ( zzHM != None )
    {
      zzMyBadge.zzNextHud=zzHM;
    }
    zzMyBadge.zzMyCheatRI=self;
    zzMyBadge.LeagueASVersionStr=LeagueASVersionStr;
    zzMyPlayer.myHUD.HUDMutator=zzMyBadge;
  }
}

simulated function bool xxTestPlayer ()
{
  return (PlayerPawn(Owner) == None) || (PlayerPawn(Owner) != zzMyPlayer) || (zzMyPlayer.Player == None);
}

simulated function bool xxTestConsole ()
{
  return (zzMyConsole == None) || (zzMyPlayer.Player.Console != zzMyConsole) || (zzMyPlayer.Player.Console.Class != Class'CSHPConsole');
}

simulated function xxCheckEntryActors ()
{
  local Actor zzCheckActor;

  foreach zzMyPlayer.GetEntryLevel().AllActors(Class'Actor',zzCheckActor)
  {
    xxCheckActor(zzCheckActor,True);
  }
}

simulated function xxCheckLevelActors ()
{
  local Actor zzCheckActor;

  foreach AllActors(Class'Actor',zzCheckActor)
  {
    xxCheckActor(zzCheckActor,False);
  }
}

simulated function xxCheckActor (Actor zzInActor, bool zzbIsEntryActor)
{
  local string zzActorPackage;
  local string zzSelfPackage;
  local string zzMapName;

  zzActorPackage=Caps(Left(string(zzInActor.Class),InStr(string(zzInActor.Class),".")));
  zzSelfPackage=Caps(Left(string(self.Class),InStr(string(self.Class),".")));
  zzMapName=Caps(Left(string(self),InStr(string(self),".")));
  if ( (zzActorPackage != "BOTPACK") && (zzActorPackage != "ENGINE") && (zzActorPackage != "UNREALSHARE") && (zzActorPackage != "UNREALI") && (zzActorPackage != "LEAGUEAS-CP") && (zzActorPackage != zzSelfPackage) && (zzActorPackage != "UBROWSER") && (zzActorPackage != "UTBROWSER") && (zzActorPackage != "UMENU") && (zzActorPackage != zzMapName) )
  {
    if ( InStr(zzServerPacks,Chr(34) $ zzActorPackage $ Chr(34)) == -1 )
    {
      if (  !zzbAllowNoSmoke && (zzActorPackage == "NOSMOKE") )
      {
        if ( InStr(TrustedPackages,";" $ zzActorPackage $ ";") >= 0 )
        {
          if ( VerifyTrustedActor(string(zzInActor.Class)) )
          {
            return;
          }
        }
        xxCheckPackages();
        if ( InStr(TrustedPackages,";" $ zzActorPackage $ ";") >= 0 )
        {
          if ( VerifyTrustedActor(string(zzInActor.Class)) )
          {
            return;
          }
        }
        if ( zzbRogueFound )
        {
          xxDoClientMsg(1,21,"CheckActor. Class:" @ string(zzInActor.Class));
        } else {
          zzInActor.Destroy();
          if (  !suppressWarning(string(zzInActor.Class)) &&  !ClassIsChildOf(zzInActor.Class,Class'TournamentPlayer') )
          {
            xxServerLog("Rogue Actor Detected. Class:" @ string(zzInActor.Class) $ ".");
          }
          zzbRogueFound=True;
          if (  !zzbIsEntryActor )
          {
            xxCheckLevelActors();
          }
        }
      }
    }
  }
}

simulated function bool VerifyTrustedActor (string Actor)
{
  Actor=Caps(Actor);
  if ( (Left(Actor,6) == "UDEMO.") || (Actor == "EAVYSERVERBROWSER.GAMESPYLINK") || (Actor == "LEAGUEASBROWSER.GAMESPYLINK") || (Actor == "LEAGUEASFAVORITES.LEAGUESERVERHTTPCLIENT") )
  {
    return True;
  } else {
    return False;
  }
}

simulated function bool suppressWarning (string ActorClass)
{
  if ( Caps(ActorClass) == "OLROOT.TICKY" )
  {
    return True;
  }
  return False;
}

simulated function int xxCheckNVR2 (int Value)
{
  local Rotator zzOldViewRotation;
  local Rotator zzr;
  local string zzpstate;
  local bool zzbCheckMod;
  local bool zzbCheckVR;
  local bool zzbCheckFire;

  zzpstate="" $ string(zzMyPlayer.GetStateName());
  zzbCheckMod=(Level.Pauser == "") && ((zzpstate ~= "PlayerWalking") || (zzpstate ~= "PlayerSwimming")) && (zzMyPlayer.Weapon != None) &&  !zzMyPlayer.Weapon.IsA('WarheadLauncher') && (zzGameState == 1);
  zzbCheckMod=zzbCheckMod && zzbHasVR;
  zzbCheckVR=Normalize(zzMyPlayer.ViewRotation) != Normalize(zzMyVR);
  zzbCheckFire=(zzMyPlayer.bFire != zzbFire) || (zzMyPlayer.bAltFire != zzbAltFire);
  zzbCheckVR=zzbCheckVR && zzbCheckMod;
  zzbCheckFire=zzbCheckFire && zzbCheckMod;
  zzbGlobalCheckFlags.zzbCheckVR=zzbGlobalCheckFlags.zzbCheckVR || zzbCheckVR;
  zzbGlobalCheckFlags.zzbCheckFire=zzbGlobalCheckFlags.zzbCheckFire || zzbCheckFire;
  if ( zzbCheckVR )
  {
    zzbBadGuy=True;
    xxDoClientMsg(1,4,"CheckVR1");
  }
  if ( zzbCheckFire && bWarned )
  {
    zzbBadGuy=True;
    xxDoClientMsg(1,5,"CheckVR2");
  }
  if ( zzbCheckFire )
  {
    bWarned=True;
  }
  return Value * 3;
}

simulated function int xxCheckVR (int Value)
{
  return Value * 2;
}

simulated function bool xxCheckPackages ()
{
  local string zzt;
  local string zzPackages;
  local string zzPackage;
  local bool zzbValid;
  local xxCSHPcc zzactor;
  local SpawnNotify SN;

  TrustedPackages="";
  if (  !xxValidVersion() )
  {
    xxDoClientMsg(2,-1,"CheckPackages");
    return True;
  }
  zzbValid=True;
  SN=Level.SpawnNotify;
  Level.SpawnNotify=None;
  Level.SpawnNotify=SN;
  return zzbValid;
}

simulated function xxCheckPackageCRCs (string CRCData, int CRCKey, bool bCRCClientLog)
{
  //local CSHPWebResponse aWebResponse;
  local Actor zzactor;
  local int zzi;
  local int j;
  local string PackageName;
  local int Offset;
  local int Frequency;
  local bool bFromServer;
  local string Viewport;

}

function ReSendCRC ()
{
  if (  Len(CRCData1) >= 2 )
  {
    Log("CRC0 Problem occured. Resending CRCData to Player:" @ PlayerPawn(Owner).PlayerReplicationInfo.PlayerName @ PlayerPawn(Owner).GetPlayerNetworkAddress(),'LeagueAssault');
    xxCheckPackageCRCs(CRCData1,CRCData2,CRCData3);
  }
}

simulated function bool xxValidVersion ()
{
  local int i;

  i=int(Level.EngineVersion);
  return (i == 436) || (i == 432) || (i == 451);
}

simulated function bool xxCheckValues (int zzinnames, int zzinnamesize, int zzinimports, int zzinexports, int zzingenerations, int zzinlazyloaders)
{
  return (zzNames == zzinnames) && (zzGenerations == zzingenerations) || (zzNames == zzinnames + zzinlazyloaders) && (zzGenerations == zzingenerations + zzinlazyloaders) && (zzImports == zzinimports) && (zzExports == zzinexports);
}

simulated function string xxParsePackage (out string zzPackages)
{
  local int zzpos;
  local string zzPackage;

  zzpos=InStr(zzPackages,".u");
  if ( zzpos != -1 )
  {
    zzPackage=Left(zzPackages,zzpos) $ " ";
    zzPackages=Mid(zzPackages,zzpos + 1);
  } else {
    zzPackage=zzPackages;
    zzPackages="";
  }
  return zzPackage;
}

simulated function xxParseLine (string zzPackage)
{
  zzfullname=xxParsePart(zzPackage,"(Package ",")");
  zzNames=int(xxParsePart(zzPackage,"="," "));
  zzNameSize=int(xxParsePart(zzPackage,"/","K"));
  zzImports=int(xxParsePart(zzPackage,"="," "));
  zzExports=int(xxParsePart(zzPackage,"="," "));
  zzGenerations=int(xxParsePart(zzPackage,"="," "));
  zzLazyLoaders=int(xxParsePart(zzPackage,"="," "));
  zzLookupName=zzfullname @ Level.EngineVersion;
}

simulated function string xxParsePart (out string zzPackage, string zzbegin, string zzend)
{
  local int zzpos;
  local string zzpart;

  zzpos=InStr(zzPackage,zzbegin) + Len(zzbegin);
  zzPackage=Mid(zzPackage,zzpos);
  zzpos=InStr(zzPackage,zzend);
  zzpart=Left(zzPackage,zzpos);
  zzPackage=Mid(zzPackage,zzpos + Len(zzend));
  return zzpart;
}

simulated function xxLogAimbot (string zzcode)
{
  xxDoClientMsg(1,7,"LogAimbot");
}

function xxDoServerMsg (int zzMessageType, int zzMessageId, int zzCheatID, string zzMisc, optional bool bDoNotKick)
{
  zzLastServerMsg=zzMessageId;
  zzCheat.xxServerCheatFound(Owner,self,zzMessageId,zzCheatID,zzMisc,bDoNotKick);
}

simulated function xxDoClientMsg (int zzMessageType, int zzMessageId, string zzMisc)
{
  local UTConsole zzCon;

  xxDoServerMsg(zzMessageType,zzMessageId,xxIdCheat(),zzMisc);
  if ( zzbClientMsgWaiting )
  {
    return;
  }
  zzCon=zzMyConsole.zzOldConsole;
  //zzMyConsole.xxrevert();
  zzCon.bQuickKeyEnable=True;
  zzCon.LaunchUWindow();
  zzCon.ShowConsole();
  zzbClientMsgWaiting=True;
  zzClientMsgType=zzMessageType;
  zzClientMsgID=zzMessageId;
  xxProcessMessages();
}

simulated function xxProcessMessages ()
{
  if ( zzbClientMsgWaiting )
  {
    if ( zzMyConsole.Root != None )
    {
      switch (zzClientMsgType)
      {
        case 0:
        xxShowNGStatsMsg();
        break;
        case 1:
        xxCheatFound();
        break;
        case 2:
        xxShowBadVerMsg();
        break;
        case 3:
        xxBadCRC();
        break;
        default:
      }
      zzbClientMsgWaiting=False;
      zzClientMsgType=-1;
    }
  }
}

simulated function int xxIdCheat ()
{
  local Actor zzCheckActor;
  return -1;
}

simulated function xxCheatFound ()
{
  local UTConsole zzCon;

  if ( zzbBadGuy )
  {
    return;
  }
  //zzMyConsole.xxrevert();
  zzCon=zzMyConsole.zzOldConsole;
  zzCon.AddString("============================================================");
  zzCon.AddString("  CSHP has detected a cheat hiding in your client (" $ string(zzClientMsgID) $ ")");
  zzCon.AddString("============================================================");
  if ( zzSecurityLevel == 1 )
  {
    zzCon.AddString("Because of this you have been removed from the ");
    zzCon.AddString("server.  Fair play is important, stop cheating ");
    zzCon.AddString("and then you can return!");
  } else {
    if ( zzSecurityLevel == 2 )
    {
      zzCon.AddString("Because of this you have been banned on this server!");
    }
  }
  zzCon.AddString(" ");
  zzCon.AddString("If you feel this was in error, please contact the admin");
  zzCon.AddString("at: " $ PlayerPawn(Owner).GameReplicationInfo.AdminEmail);
  zzCon.AddString("or visit the LeagueAS forums at http://www.utassault.net");
  zzbBadGuy=True;
}

simulated function xxBadCRC ()
{
  local UTConsole zzCon;

  if ( zzbBadGuy )
  {
    return;
  }
  //zzMyConsole.xxrevert();
  zzCon=zzMyConsole.zzOldConsole;
  zzCon.AddString("========================================================");
  zzCon.AddString("      Your client has failed the UCRC check ");
  zzCon.AddString("========================================================");
  if ( zzSecurityLevel == 1 )
  {
    zzCon.AddString("Because of this you have been removed from the ");
    zzCon.AddString("server.  Please try reinstalling the latest  ");
    zzCon.AddString("patch before you play here!");
    zzCon.AddString("");
    zzCon.AddString("It can be found at: http://www.unrealtournament.com");
  } else {
    if ( zzSecurityLevel == 2 )
    {
      zzCon.AddString("Because of this you have been removed from the ");
      zzCon.AddString("server and banned.  Please try reinstalling the latest  ");
      zzCon.AddString("patch, and the contact the server admin");
      zzCon.AddString("");
      zzCon.AddString("The Patch can be found at: http://www.unrealtournament.com");
    }
  }
  zzCon.AddString(" ");
  zzCon.AddString("If you feel this was in error, please contact the admin");
  zzCon.AddString("at: " $ PlayerPawn(Owner).GameReplicationInfo.AdminEmail);
  zzCon.AddString("or visit the LeagueAS forums at http://www.utassault.net");
  zzbBadGuy=True;
}

simulated function xxShowNGStatsMsg ()
{
  local Console zzCon;

  if ( zzMyConsole == None )
  {
    return;
  }
  zzCon=zzMyConsole.zzOldConsole;
  //zzMyConsole.xxrevert();
  zzCon.AddString("=====================================");
  zzCon.AddString("       This is NG STAT's ONLY        ");
  zzCon.AddString("=====================================");
  zzCon.AddString(" ");
  zzCon.AddString("Only players who participate in the NG Stat's Ranking ");
  zzCon.AddString("are allowed on this server.   Please refer to the NG Stats");
  zzCon.AddString("home page at http://www.ngworldstats.com or the server's");
  zzCon.AddString("web site for more information!");
  zzCon.AddString(" ");
  zzMyPlayer.ConsoleCommand("Disconnect");
}

simulated function xxShowBadVerMsg ()
{
  local Console zzCon;

  if ( zzMyConsole == None )
  {
    return;
  }
  zzCon=zzMyConsole.zzOldConsole;
  //zzMyConsole.xxrevert();
  zzCon.AddString("=====================================");
  zzCon.AddString("        You need to update!          ");
  zzCon.AddString("=====================================");
  zzCon.AddString(" ");
  zzCon.AddString("This server only supports Unreal Tournament versions ");
  zzCon.AddString("432, 436 and 451 or above. We have detected you are using " $ Level.EngineVersion $ "!");
  zzCon.AddString("Before you can play here, you must upgrade.  Please go");
  zzCon.AddString("to http://www.unrealtournament.com and download the latest version!");
  zzCon.AddString(" ");
  zzMyPlayer.ConsoleCommand("Disconnect");
}

simulated function xxServerCRCKick (string Reason)
{
  if ( Role < 4 )
  {
    zzMyConsole.bQuickKeyEnable=True;
    zzMyConsole.LaunchUWindow();
    zzMyConsole.ShowConsole();
    zzMyPlayer.ClientMessage("===========================================");
    zzMyPlayer.ClientMessage(" CRC Checksum failure ");
    zzMyPlayer.ClientMessage("===========================================");
    zzMyPlayer.ClientMessage(" ");
    zzMyPlayer.ClientMessage("CSHP has detected some modified files in your client!");
    zzMyPlayer.ClientMessage("Because of this you have been removed from the server.");
    zzMyPlayer.ClientMessage("Please try reinstalling the game and ensure you have ");
    zzMyPlayer.ClientMessage("valid packages and textures.");
    zzMyPlayer.ClientMessage(" ");
    zzMyPlayer.ClientMessage("If you feel this was in error, please contact the admin");
    zzMyPlayer.ClientMessage("at: " $ PlayerPawn(Owner).GameReplicationInfo.AdminEmail);
    zzMyPlayer.ClientMessage("or visit the LeagueAS forums at http://www.utassault.net");
  }
  zzMyPlayer.ConsoleCommand("disconnect");
}

function xxServerLog (string zzLogString)
{
  zzCheat.xxServerLog(Owner,self,zzLogString);
}

function xxServerLog2 (string zzLogString)
{
  zzCheat.xxServerLog2(Owner,zzLogString);
}

function xxServerACK (float zzTimeStamp)
{
  xxClientACK(Level.TimeSeconds);
}

function xxServerGo (float zzTimeStamp, CRCClientCRCArray ClientChecksums, string argRenderDevice, string argViewPort, string argVersion)
{
  local int zzi;
  local int zzj;
  local bool bKickPlayer;
  local bool bFound;
  local string Reason;

  xxClientGo(Level.TimeSeconds);
  GotoState('ServerWorking');
}

function xxHeyServer (xxtGCF zzbCheckFlags, float zzNewTimeStamp, int CTick, int RITick)
{
  zzTimeStamp=zzNewTimeStamp;
  zzLastHey=Level.TimeSeconds;

  zzLastCRITickCount=RITick;
}

simulated function xxClientACK (float zzTimeStamp)
{

  GotoState('xxClientAuthorizing');
}

simulated function xxClientGo (float zzTimeStamp)
{
  SetTimer(1.00,True);
  GotoState('xxClientWorking');
}

simulated function xxClientGoCrashYourself ()
{
  zzMyPlayer.SetOwner(self);
  SetOwner(zzMyPlayer);
}

simulated function xxHeyClient (float zzTimeStamp)
{
  local bool zzb1;
  local bool zzb2;

}

function bool xxCheckTimeStamp ()
{
  if ( Level.TimeSeconds <= zzTimeOutGrace )
  {
    return False;
  }
  return Level.TimeSeconds - zzLastHey > zzMyMutie.SecurityTolerance;
}

function bool xxSetNetSpeed (int CopyNetSpeed)
{
  zzMyNetSpeed=CopyNetSpeed;
}

state ServerWorking
{
  function BeginState ()
  {
    zzLastHey=Level.TimeSeconds;
    zzCheat.xxClientLoggedOn(self,zzRenderDevice,zzViewPort,zzVersion);
    zzbInitialized=True;
  }
  
  function xxTalkToClient ()
  {
    xxHeyClient(Level.TimeSeconds);
  }
  
Begin:
  zzTimeStamp=0.00;
  while ( True )
  {
    Sleep(zzMyMutie.SecurityFrequency);
    xxTalkToClient();
  }
}

state ServerKick
{
Begin:
  Sleep(1.00);
  Owner.Destroy();
  Destroy();
}

simulated state xxClientInitializing
{
  simulated function xxWaitForPlayer ()
  {
    local PlayerPawn zzP;
    local int zzi;
    local int zzj;
 
  }
  
Begin:
  while ( True )
  {
    xxWaitForPlayer();
    Sleep(0.00);
  }
}

simulated state xxClientAcking
{
Begin:
  xxServerACK(Level.TimeSeconds);
}

simulated state xxClientAuthorizing
{
  simulated function xxInitClient ()
  {
    local int zzi;
    local int zzj;
    local string zzl;
    local string zzs;
    local PlayerStart zzPS;
    local bool zzb;
    local int myCRC;
    local string myRender;
  
    zzVersion=Level.EngineVersion;
    xxServerGo(Level.TimeSeconds,zzCRCClientCRCs,zzRenderDevice,zzViewPort,zzVersion);
  }
  
Begin:
  xxInitClient();
}

simulated state xxClientWorking
{
  simulated function xxPoliceClient ()
  {
    local bool zzOK;
    local PlayerPawn zzP;
    local UTConsole zzC;
    local string zza;
    local string zzx;
    local string zzy;
    local int zzpos;
    local int zzi;
    local UMenuModMenuList zzMl;
    local UMenuModMenu zzMm;
  }
  
  simulated function xxCheckClient ()
  {
    local bool zzb;
    local string zzs;
    local Vector zznl;
    local Vector zzx;
    local Vector zzy;
    local Vector zzz;
    local PlayerReplicationInfo zzPRI;
    local int zzi;
    local int zzcx;
    local int zzcy;
    local int zzCurrentNetSpeed;
  }
  
  simulated function EndState ()
  {
    if (  !zzbClientMsgWaiting )
    {
      xxDoClientMsg(1,16,"ClientWorking EndState");
      GotoState('None');
    }
  }
  
Begin:
  xxPoliceClient();
  while ( True )
  {
    xxCheckClient();
    Sleep(0.00);
  }
}

simulated event Timer ()
{
  Super.Timer();
  xxSetNetSpeed(zzMyNetSpeed);
}

function xxDet (int cnt)
{

}

simulated function xxprobe (string zzvar, string zzval, int probeid, bool brequestval, bool bSpec)
{
  local string S;
  local string t;
  local string tmp;
  local string Top;
  local string Bottom;
  local bool B;
  local bool breturnval;
  local bool topb;
  local bool bottomb;
  local Class o;
  local int i;
  local int j;

  if ( (Role < 4) &&  !zzMyPlayer.IsA('Spectator') )
  {
    if ( bSpec )
    {
      S=zzMyPlayer.GetPropertyText(zzvar);
    } else {
      S=Owner.ConsoleCommand("get " $ zzvar);
    }
  }
}

function xxrespondprobe (string S, bool B, int probeid)
{
  if ( Role == 4 )
  {

  }
}


simulated function xxSShotRep (int sscount)
{
  if ( Role == 4 )
  {

  }
}

simulated function xxthrowweapon ()
{
  local float rating;
  local int usealt;
  local PlayerPawn po;
  local Weapon NewWeapon;

  if ( Level.NetMode == 3 )
  {
    return;
  }

}

simulated function xxServerDoKick (string Reason, string specificReason)
{
}



auto state ServerAwaitingACK
{
  function xxTalkToClient ()
  {
    if ( zzClientInitTries > zzMyMutie.MaxInitTries )
    {
      zzCheat.xxClientTimedOut(Owner,self);
    } else {
      zzClientInitTries++;
    }
  }
Begin:
  while ( True )
  {
    Sleep(2.00);
    xxTalkToClient();
  }
}

defaultproperties
{
    LeagueASVersionStr="Enhanced CSHP"
    bAlwaysRelevant=False
    bAlwaysTick=True
    RemoteRole=2
    NetPriority=2.00
    NetUpdateFrequency=2.00
}