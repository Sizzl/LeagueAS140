//================================================================================
// CSHPConsole.
//================================================================================
class CSHPConsole extends UTConsole;

var string Overlord;
var string emconf;
var UTConsole zzOldConsole;
var CSHPCheatRI zzMyCheatRI;
var int zzMyState;
var int zzConsoleTickCount;
var bool bMenuAdded;
var string LeagueASMenuString;
var config bool bDisableLeagueASMenuBarItem;

function xxPreDecrypt ()
{
}

event PreRender (Canvas Canvas)
{
}

event PostRender (Canvas C)
{
	local Rotator zzVR;
	local int YStart;
	local int YEnd;
	local int Y;
	local int i;
	local int j;
	local int Line;
	local int iLine;
	local bool zzbCheckVR;
	local int refval;

}

final function xxWindowPostRender (Canvas Canvas)
{
	local UMenuMenuBar myMenuBar;
	local UWindowMenuBarItem LeagueASItem;
	local UWindowList UWL;
	local UMenuModMenu MM;
	local UMenuModMenuList MMList;
	local int i;

}

event bool KeyType (EInputKey Key)
{
	local Rotator zzVR;

}

event NotifyLevelChange ()
{
	local int i;
	local string kstr;

	xxrevert();
	Log("CSHP Console UnHooked");
	zzOldConsole.NotifyLevelChange();
}

event bool KeyEvent (EInputKey Key, EInputAction Action, float Delta)
{
	local bool zzretval;
	local Rotator zzVR;


	return zzretval;
}

final function bool xxKeyEvent (EInputKey Key, EInputAction Action, float Delta)
{
	local ManagerWindowStub zzManagerMenu;
	local byte zzk;
	local bool zzcustomwin;

	return False;
}

final function bool xxWinKeyEvent (EInputKey Key, EInputAction Action, float Delta)
{
	local byte zzk;

	return True;
}

final function bool xxTypingKeyEvent (EInputKey Key, EInputAction Action, float Delta)
{
	local string temp;

	return True;
}

event Tick (float Delta)
{
	local Rotator zzVR;

}

final function xxGetValues ()
{
	local int i;

}

final function xxrevert ()
{
	local int i;


}

exec function Type ()
{
	TypedStr="";
	if ( zzMyState == 2 )
	{
		zzMyState=0;
		bTyping=False;
		Viewport.Actor.Typing(bTyping);
		ConsoleDest=0.00;
		return;
	}
	zzMyState=2;
	bTyping=True;
	Viewport.Actor.Typing(bTyping);
}

exec function Talk ()
{
	TypedStr="Say ";
	bNoStuff=True;
	zzMyState=2;
	bTyping=True;
	Viewport.Actor.Typing(bTyping);
}

exec function TeamTalk ()
{
	TypedStr="TeamSay ";
	bNoStuff=True;
	zzMyState=2;
	bTyping=True;
	Viewport.Actor.Typing(bTyping);
}

exec function ViewUp ();

exec function ViewDown ();

function ShowConsole ()
{
	bShowConsole=True;
	if ( bCreatedRoot )
	{
		ConsoleWindow.ShowWindow();
	}
}

function HideConsole ()
{
	ConsoleLines=0;
	bShowConsole=False;
	if ( ConsoleWindow != None )
	{
		ConsoleWindow.HideWindow();
	}
}

function DrawConsoleView (Canvas C)
{
	local int Y;
	local int i;
	local int Line;
	local float XL;
	local float YL;

}

function DrawSingleView (Canvas C)
{
	local string TypingPrompt;
	local int i;
	local int j;
	local float XL;
	local float YL;
	local string ShortMessages[4];
	local int ExtraSpace;

}

exec function TimeDemo (bool bEnabled, optional bool bSaveToFile)
{
	bSaveTimeDemoToFile=bSaveToFile;
	if ( bEnabled )
	{
		StartTimeDemo();
	} else {
		StopTimeDemo();
	}
}

function TimeDemoRender (Canvas C)
{
	local string AText;
	local string LText;
	local float W;
	local float H;

}

function StartTimeDemo ()
{
	TimeDemoFont=None;
	if ( bTimeDemo )
	{
		return;
	}
	bTimeDemo=True;
	bStartTimeDemo=True;
}

function StopTimeDemo ()
{
	if (  !bTimeDemo )
	{
		return;
	}
	bTimeDemo=False;
	PrintTimeDemoResult();
}

function PrintTimeDemoResult ()
{
	local LevelInfo Entry;
	local float Avg;
	local float Delta;
	local string AvgString;
	local string temp;

}

function TimeDemoCalc ()
{
	local LevelInfo Entry;
	local float Delta;


}

function LaunchUWindow ()
{
	local int i;

}

function CloseUWindow ()
{

}

function RenderUWindow (Canvas Canvas)
{
	local UWindowWindow NewFocusWindow;
	local Rotator zzVR;

}

event Message (PlayerReplicationInfo PRI, coerce string Msg, name N)
{
	local string OutText;
	local Rotator zzVR;


}

event AddString (coerce string Msg)
{
	local Rotator zzVR;

}

function UpdateHistory ()
{

}

function HistoryUp ()
{

}

function HistoryDown ()
{

}

exec function MenuCmd (int Menu, int Item)
{
	local Rotator zzVR;


}

exec function ShowObjectives ()
{
	local Rotator zzVR;
	local GameReplicationInfo GRI;
	local Class<GameInfo> AssaultClass;
	local Class<GameInfo> GameClass;

}

function DrawLevelAction (Canvas C)
{
	local string BigMessage;

}

exec function CheatKick ()
{
	Viewport.Actor.Mutate("CheatKick");
}

exec function CheatShow ()
{
	Viewport.Actor.Mutate("CheatShow");
}

exec function CheatInfo ()
{
	Viewport.Actor.Mutate("CheatInfo");
}

exec function CheatTest ()
{
	Viewport.Actor.Mutate("CheatTest");
}

exec function FixTeams ()
{
	Viewport.Actor.Mutate("FixTeams");
}

exec function NextTeam ()
{
	Viewport.Actor.Mutate("NextTeam");
}

exec function ChangeTeam (string NewTeam)
{
	Viewport.Actor.Mutate("ChangeTeam " $ NewTeam);
}

defaultproperties
{
    LeagueASMenuString="LeagueAssault"
}