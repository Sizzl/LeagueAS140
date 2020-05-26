//================================================================================
// Emotelist.
//================================================================================
class Emotelist extends Object Config(anemote);

enum EEm_type {
	EEm_double,
	EEm_single,
	EEm_other
};


struct emconf
{
	var string texname;
	var string Code;
	var int dim;
	var int dx;
	var int dy;
	var bool boff;
	var EEm_type etype;
	var int Group;
	var string singletexname;
	var Color col;
};


var emoticon emote[512];
var emoticon nostd[512];
var emoticon short[512];
var emoticon Normal[512];
var emoticon defcolor;
var emoticon normallist[512];
var emoticon shortlist[512];
var emoticon nostdlist[512];
var bool binit;
var config emconf EMlist[512];


static function emoticon gete (int i)
{
    return Default.emote[i];
}

static function initemotes ()
{
    local int i;
    local int ns;
    local int sh;
    local int no;
    local int FC;
    local int itmp;
    local int curp;
    local int lc;
    local int oldlc;
    local string tmp;
    local emoticon cur;
    local bool bsimple;
    local bool bnotstd;
    local Texture tX;

}

static function emoticon getemoticon (out string S, out string t, bool bTeamSay)
{
    local int i;
    local int ns;
    local int sh;
    local int no;
    local int FC;
    local int itmp;
    local int curp;
    local int lc;
    local int oldlc;
    local string tmp;
    local emoticon cur;
    local bool bsimple;
    local bool bnotstd;
    local bool bRemoved;
    local bool bRemoveColors;
}



defaultproperties
{
    EMlist(0)=(texname="anemote1.00_sniper01", Code="sniper", dim=128, dx=76, dy=16, boff=False, etype=0, Group=1, singletexname="anemote1.00_sniperZ", col=(R=0, G=0, B=0, A=0))
    EMlist(1)=(texname="anemote1.01_impact1", Code="impacthammer", dim=32, dx=32, dy=16, boff=False, etype=0, Group=1, singletexname="anemote1.01_impactZ", col=(R=0, G=0, B=0, A=0))
    EMlist(2)=(texname="anemote1.02_enforcer1", Code="enforcer", dim=128, dx=56, dy=16, boff=False, etype=0, Group=1, singletexname="anemote1.02_enforcerZ", col=(R=0, G=0, B=0, A=0))
    EMlist(3)=(texname="anemote1.03_biorifle1", Code="biorifle", dim=128, dx=74, dy=16, boff=False, etype=0, Group=1, singletexname="anemote1.03_biorifleZ", col=(R=0, G=0, B=0, A=0))
    EMlist(4)=(texname="anemote1.04_shock01", Code="shock", dim=128, dx=72, dy=16, boff=False, etype=0, Group=1, singletexname="anemote1.04_shockZ", col=(R=0, G=0, B=0, A=0))
    EMlist(5)=(texname="anemote1.05_pulsegun01", Code="pulsegun", dim=128, dx=74, dy=16, boff=False, etype=0, Group=1, singletexname="anemote1.05_pulsegunZ", col=(R=0, G=0, B=0, A=0))
    EMlist(6)=(texname="anemote1.06_ripper01", Code="ripper", dim=128, dx=74, dy=16, boff=False, etype=0, Group=1, singletexname="anemote1.06_ripperZ", col=(R=0, G=0, B=0, A=0))
    EMlist(7)=(texname="anemote1.07_minigun1", Code="minigun", dim=64, dx=46, dy=16, boff=False, etype=0, Group=1, singletexname="anemote1.07_minigunZ", col=(R=0, G=0, B=0, A=0))
    EMlist(8)=(texname="anemote1.08_flak01", Code="flak", dim=64, dx=46, dy=18, boff=False, etype=0, Group=1, singletexname="anemote1.08_flakZ", col=(R=0, G=0, B=0, A=0))
    EMlist(9)=(texname="anemote1.09_rocket01", Code="rocket", dim=128, dx=100, dy=16, boff=False, etype=0, Group=1, singletexname="anemote1.09_rocketZ", col=(R=0, G=0, B=0, A=0))
    EMlist(10)=(texname="anemote1.0A_redeemer01", Code="redeemer", dim=128, dx=128, dy=24, boff=False, etype=0, Group=1, singletexname="anemote1.0A_redeemerZ", col=(R=0, G=0, B=0, A=0))
    EMlist(11)=(texname="anemote1.0B_chainsaw1", Code="chainsaw", dim=128, dx=78, dy=16, boff=False, etype=0, Group=1, singletexname="anemote1.0B_chainsawZ", col=(R=0, G=0, B=0, A=0))
    EMlist(12)=(texname="anemote1.0C_telefrag01", Code="telefrag", dim=128, dx=76, dy=24, boff=False, etype=0, Group=1, singletexname="anemote1.0C_telefragZ", col=(R=0, G=0, B=0, A=0))
    EMlist(13)=(texname="anemote1.0D_instagib01", Code="instagib", dim=128, dx=128, dy=24, boff=False, etype=0, Group=1, singletexname="anemote1.0D_instagibZ", col=(R=0, G=0, B=0, A=0))
    EMlist(14)=(texname="anemote1.10_smile1", Code=")", dim=16, dx=16, dy=16, boff=False, etype=1, Group=3, singletexname="anemote1.10_smileZ", col=(R=0, G=0, B=0, A=0))
    EMlist(15)=(texname="LASPACKET.11_frown", Code="(", dim=16, dx=16, dy=16, boff=False, etype=1, Group=3, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(16)=(texname="LASPACKET.12_indiffe", Code="|", dim=16, dx=16, dy=16, boff=False, etype=1, Group=3, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(17)=(texname="LASPACKET.13_ohwell", Code="\", dim=16, dx=16, dy=16, boff=False, etype=1, Group=3, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(18)=(texname="LASPACKET.14_block1", Code="]", dim=16, dx=16, dy=16, boff=False, etype=1, Group=3, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(19)=(texname="LASPACKET.15_block2", Code="[[", dim=16, dx=16, dy=16, boff=False, etype=1, Group=3, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(20)=(texname="LASPACKET.16_biggrin", Code="D", dim=16, dx=16, dy=16, boff=False, etype=1, Group=3, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(21)=(texname="anemote1.17_tongue1", Code="P", dim=16, dx=16, dy=16, boff=False, etype=1, Group=3, singletexname="anemote1.17_tongueZ", col=(R=0, G=0, B=0, A=0))
    EMlist(22)=(texname="LASPACKET.18_redface", Code="o", dim=16, dx=16, dy=16, boff=False, etype=1, Group=3, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(23)=(texname="anemote1.19_greenli1", Code="p", dim=16, dx=16, dy=16, boff=False, etype=0, Group=3, singletexname="anemote1.19_greenliZ", col=(R=0, G=0, B=0, A=0))
    EMlist(24)=(texname="LASPACKET.20_sick", Code="x", dim=16, dx=16, dy=16, boff=False, etype=1, Group=3, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(25)=(texname="anemote1.2DA_armor", Code="2darmor", dim=64, dx=64, dy=50, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(26)=(texname="anemote1.2DA_shield", Code="2dshield", dim=64, dx=54, dy=40, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(27)=(texname="anemote1.2DA_thigh", Code="2dthigh", dim=64, dx=40, dy=40, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(28)=(texname="anemote1.2DI_boots", Code="2dboots", dim=64, dx=56, dy=44, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(29)=(texname="anemote1.2DI_health", Code="2dhealth", dim=64, dx=56, dy=28, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(30)=(texname="anemote1.2DI_mhealth", Code="2dkeg", dim=128, dx=80, dy=60, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(31)=(texname="anemote1.2DI_vial", Code="2dvial", dim=64, dx=16, dy=40, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(32)=(texname="anemote1.2DW0_sniper", Code="2dsniper", dim=128, dx=128, dy=32, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(33)=(texname="anemote1.2DW0_sniperammo", Code="2dsniperammo", dim=64, dx=38, dy=38, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(34)=(texname="anemote1.2DW1_hammer", Code="2dhammer", dim=128, dx=128, dy=64, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(35)=(texname="anemote1.2DW2_enf", Code="2denforcer", dim=64, dx=64, dy=40, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(36)=(texname="anemote1.2DW3_bio", Code="2dbio", dim=64, dx=64, dy=40, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(37)=(texname="anemote1.2DW3_bioammo", Code="2dbioammo", dim=64, dx=40, dy=32, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(38)=(texname="anemote1.2DW4_shock", Code="2dshock", dim=128, dx=128, dy=32, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(39)=(texname="anemote1.2DW4_shockammo", Code="2dshockammo", dim=64, dx=26, dy=50, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(40)=(texname="anemote1.2DW5_pulse", Code="2dpulse", dim=128, dx=80, dy=40, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(41)=(texname="anemote1.2DW5_pulseammo", Code="2dpulseammo", dim=64, dx=32, dy=32, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(42)=(texname="anemote1.2DW6_ripper", Code="2dripper", dim=128, dx=116, dy=44, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(43)=(texname="anemote1.2DW6_ripperammo", Code="2dripperammo", dim=64, dx=32, dy=60, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(44)=(texname="anemote1.2DW7_mini", Code="2dmini", dim=128, dx=116, dy=26, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(45)=(texname="anemote1.2DW7_miniammo", Code="2dminiammo", dim=64, dx=64, dy=56, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(46)=(texname="anemote1.2DW8_flak", Code="2dflak", dim=128, dx=84, dy=44, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(47)=(texname="anemote1.2DW8_flakammo", Code="2dflakammo", dim=64, dx=64, dy=32, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(48)=(texname="anemote1.2DW9_eightball", Code="2drl", dim=128, dx=100, dy=32, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(49)=(texname="anemote1.2DW9_eightballammo", Code="2drlammo", dim=64, dx=26, dy=44, boff=False, etype=0, Group=4, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(50)=(texname="anemote1.3A_armor", Code="sarmor", dim=32, dx=32, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(51)=(texname="anemote1.3A_shield", Code="sshield", dim=32, dx=28, dy=20, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(52)=(texname="anemote1.3A_thigh", Code="sthigh", dim=32, dx=20, dy=20, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(53)=(texname="anemote1.3I_boots", Code="sboots", dim=32, dx=28, dy=22, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(54)=(texname="anemote1.3I_health", Code="shealth", dim=32, dx=28, dy=18, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(55)=(texname="anemote1.3I_mhealth", Code="skeg", dim=32, dx=32, dy=28, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(56)=(texname="anemote1.3I_vial", Code="svial", dim=32, dx=16, dy=20, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(57)=(texname="anemote1.3W0_sniper", Code="ssniper", dim=64, dx=68, dy=16, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(58)=(texname="anemote1.3W0_sniperammo", Code="ssniperammo", dim=32, dx=32, dy=20, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(59)=(texname="anemote1.3W1_hammer", Code="shammer", dim=64, dx=68, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(60)=(texname="anemote1.3W2_enf", Code="senforcer", dim=64, dx=64, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(61)=(texname="anemote1.3W3_bio", Code="sbio", dim=64, dx=54, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(62)=(texname="anemote1.3W3_bioammo", Code="sbioammo", dim=32, dx=20, dy=16, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(63)=(texname="anemote1.3W4_shock", Code="sshock", dim=64, dx=72, dy=16, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(64)=(texname="anemote1.3W4_shockammo", Code="sshockammo", dim=32, dx=18, dy=26, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(65)=(texname="anemote1.3W5_pulse", Code="spulse", dim=64, dx=68, dy=38, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(66)=(texname="anemote1.3W5_pulseammo", Code="spulseammo", dim=32, dx=18, dy=18, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(67)=(texname="anemote1.3W6_ripper", Code="sripper", dim=64, dx=72, dy=22, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(68)=(texname="anemote1.3W6_ripperammo", Code="sripperammo", dim=32, dx=20, dy=30, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(69)=(texname="anemote1.3W7_mini", Code="smini", dim=64, dx=68, dy=16, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(70)=(texname="anemote1.3W7_miniammo", Code="sminiammo", dim=32, dx=32, dy=30, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(71)=(texname="anemote1.3W8_flak", Code="sflak", dim=64, dx=60, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(72)=(texname="anemote1.3W8_flakammo", Code="sflakammo", dim=32, dx=32, dy=16, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(73)=(texname="anemote1.3W9_eightball", Code="srl", dim=64, dx=68, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(74)=(texname="anemote1.3W9_eightballammo", Code="srlammo", dim=32, dx=18, dy=22, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(75)=(texname="anemote1.3WG0_sniper", Code="ssniper2", dim=64, dx=68, dy=16, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(76)=(texname="anemote1.3WG1_hammer", Code="shammer2", dim=64, dx=68, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(77)=(texname="anemote1.3WG2_enf", Code="senforcer2", dim=64, dx=64, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(78)=(texname="anemote1.3WG3_bio", Code="sbio2", dim=64, dx=54, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(79)=(texname="anemote1.3WG4_shock", Code="sshock2", dim=64, dx=72, dy=16, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(80)=(texname="anemote1.3WG5_pulse", Code="spulse2", dim=64, dx=68, dy=38, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(81)=(texname="anemote1.3WG6_ripper", Code="sripper2", dim=64, dx=72, dy=22, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(82)=(texname="anemote1.3WG7_mini", Code="smini2", dim=64, dx=68, dy=16, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(83)=(texname="anemote1.3WG8_flak", Code="sflak2", dim=64, dx=60, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(84)=(texname="anemote1.3WG9_eightball", Code="srl2", dim=64, dx=68, dy=24, boff=False, etype=0, Group=2, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(85)=(texname="anemote1.afro", Code="afro", dim=32, dx=28, dy=28, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(86)=(texname="anemote1.angel", Code="angel", dim=64, dx=38, dy=21, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(87)=(texname="anemote1.angry01", Code="angry", dim=32, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.angryZ", col=(R=0, G=0, B=0, A=0))
    EMlist(88)=(texname="anemote1.annoyed", Code="annoyed", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(89)=(texname="anemote1.argue01", Code="argue", dim=64, dx=50, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.argueZ", col=(R=0, G=0, B=0, A=0))
    EMlist(90)=(texname="anemote1.arsemiss01", Code="arsemiss", dim=128, dx=74, dy=32, boff=False, etype=0, Group=5, singletexname="anemote1.arsemissZ", col=(R=0, G=0, B=0, A=0))
    EMlist(91)=(texname="anemote1.bah1", Code="bah", dim=32, dx=32, dy=32, boff=False, etype=0, Group=5, singletexname="anemote1.bahZ", col=(R=0, G=0, B=0, A=0))
    EMlist(92)=(texname="anemote1.balloon", Code="balloon", dim=32, dx=20, dy=24, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(93)=(texname="anemote1.ban", Code="ban", dim=64, dx=42, dy=48, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(94)=(texname="anemote1.banana1", Code="banana", dim=64, dx=32, dy=32, boff=False, etype=0, Group=5, singletexname="anemote1.bananaZ", col=(R=0, G=0, B=0, A=0))
    EMlist(95)=(texname="anemote1.bandit1", Code="bandit", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.banditZ", col=(R=0, G=0, B=0, A=0))
    EMlist(96)=(texname="anemote1.banghead1", Code="banghead", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.bangheadZ", col=(R=0, G=0, B=0, A=0))
    EMlist(97)=(texname="anemote1.barf01", Code="barf", dim=64, dx=64, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.barfZ", col=(R=0, G=0, B=0, A=0))
    EMlist(98)=(texname="anemote1.bawling01", Code="bawling", dim=32, dx=20, dy=16, boff=True, etype=0, Group=5, singletexname="anemote1.bawlingZ", col=(R=0, G=0, B=0, A=0))
    EMlist(99)=(texname="anemote1.bday1", Code="bday", dim=128, dx=80, dy=32, boff=False, etype=0, Group=5, singletexname="anemote1.bdayZ", col=(R=0, G=0, B=0, A=0))
    EMlist(100)=(texname="anemote1.beer1", Code="beer", dim=64, dx=60, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.beerZ", col=(R=0, G=0, B=0, A=0))
    EMlist(101)=(texname="anemote1.bj01", Code="bj", dim=64, dx=42, dy=42, boff=True, etype=0, Group=5, singletexname="anemote1.bjZ", col=(R=0, G=0, B=0, A=0))
    EMlist(102)=(texname="anemote1.blackeye", Code="blackeye", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(103)=(texname="anemote1.boozer01", Code="boozer", dim=64, dx=40, dy=40, boff=False, etype=0, Group=5, singletexname="anemote1.boozerZ", col=(R=0, G=0, B=0, A=0))
    EMlist(104)=(texname="anemote1.bounce01", Code="bounce", dim=32, dx=20, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.bounceZ", col=(R=0, G=0, B=0, A=0))
    EMlist(105)=(texname="anemote1.bow1", Code="bow", dim=32, dx=20, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.bowZ", col=(R=0, G=0, B=0, A=0))
    EMlist(106)=(texname="anemote1.bowdown1", Code="bowdown", dim=32, dx=26, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.bowdownZ", col=(R=0, G=0, B=0, A=0))
    EMlist(107)=(texname="anemote1.boxing1", Code="boxing", dim=64, dx=40, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.boxingZ", col=(R=0, G=0, B=0, A=0))
    EMlist(108)=(texname="anemote1.bunny", Code="bunny", dim=32, dx=16, dy=26, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(109)=(texname="anemote1.burp01", Code="burp", dim=64, dx=40, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.burpZ", col=(R=0, G=0, B=0, A=0))
    EMlist(110)=(texname="anemote1.caek01", Code="caek", dim=64, dx=42, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.caekZ", col=(R=0, G=0, B=0, A=0))
    EMlist(111)=(texname="anemote1.calm", Code="calm", dim=64, dx=40, dy=42, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(112)=(texname="anemote1.chilled1", Code="chilled", dim=32, dx=18, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.chilledZ", col=(R=0, G=0, B=0, A=0))
    EMlist(113)=(texname="anemote1.clap1", Code="clap", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.clapZ", col=(R=0, G=0, B=0, A=0))
    EMlist(114)=(texname="anemote1.confused", Code="confused", dim=32, dx=24, dy=32, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(115)=(texname="anemote1.cool", Code="cool", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(116)=(texname="anemote1.coolfip1", Code="coolfip", dim=32, dx=20, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.coolfipZ", col=(R=0, G=0, B=0, A=0))
    EMlist(117)=(texname="anemote1.copcar", Code="copcar", dim=128, dx=128, dy=36, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(118)=(texname="anemote1.cow", Code="cow", dim=64, dx=48, dy=40, boff=True, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(119)=(texname="anemote1.crap", Code="crap", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(120)=(texname="anemote1.crazy1", Code="crazy", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.crazyZ", col=(R=0, G=0, B=0, A=0))
    EMlist(121)=(texname="anemote1.cuddle01", Code="cuddle", dim=64, dx=40, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.cuddleZ", col=(R=0, G=0, B=0, A=0))
    EMlist(122)=(texname="anemote1.chase01", Code="chase", dim=64, dx=64, dy=20, boff=False, etype=0, Group=5, singletexname="anemote1.chaseZ", col=(R=0, G=0, B=0, A=0))
    EMlist(123)=(texname="anemote1.chicken", Code="chicken", dim=32, dx=20, dy=26, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(124)=(texname="anemote1.deal01", Code="deal", dim=32, dx=24, dy=30, boff=False, etype=0, Group=5, singletexname="anemote1.dealZ", col=(R=0, G=0, B=0, A=0))
    EMlist(125)=(texname="anemote1.devil", Code="devil", dim=32, dx=24, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(126)=(texname="anemote1.dj01", Code="dj", dim=64, dx=44, dy=40, boff=False, etype=0, Group=5, singletexname="anemote1.djZ", col=(R=0, G=0, B=0, A=0))
    EMlist(127)=(texname="anemote1.dog", Code="dog", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(128)=(texname="anemote1.done", Code="done", dim=64, dx=42, dy=48, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(129)=(texname="anemote1.drool001", Code="drool", dim=32, dx=16, dy=18, boff=False, etype=0, Group=5, singletexname="anemote1.droolZ", col=(R=0, G=0, B=0, A=0))
    EMlist(130)=(texname="anemote1.drool201", Code="drool2", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.drool2Z", col=(R=0, G=0, B=0, A=0))
    EMlist(131)=(texname="anemote1.drummer1", Code="drummer", dim=64, dx=40, dy=26, boff=False, etype=0, Group=5, singletexname="anemote1.drummerZ", col=(R=0, G=0, B=0, A=0))
    EMlist(132)=(texname="anemote1.dunce", Code="dunce", dim=32, dx=24, dy=26, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(133)=(texname="anemote1.eek01", Code="eek", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.eekZ", col=(R=0, G=0, B=0, A=0))
    EMlist(134)=(texname="anemote1.evil", Code="evil", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(135)=(texname="anemote1.eyeroll01", Code="eyeroll", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.eyerollZ", col=(R=0, G=0, B=0, A=0))
    EMlist(136)=(texname="anemote1.fart01", Code="fart", dim=64, dx=48, dy=20, boff=False, etype=0, Group=5, singletexname="anemote1.fartZ", col=(R=0, G=0, B=0, A=0))
    EMlist(137)=(texname="anemote1.fight1", Code="fight", dim=32, dx=32, dy=28, boff=False, etype=0, Group=5, singletexname="anemote1.fightZ", col=(R=0, G=0, B=0, A=0))
    EMlist(138)=(texname="anemote1.fingers1", Code="fingers", dim=64, dx=36, dy=16, boff=True, etype=0, Group=5, singletexname="anemote1.fingersZ", col=(R=0, G=0, B=0, A=0))
    EMlist(139)=(texname="anemote1.fish", Code="fish", dim=32, dx=20, dy=20, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(140)=(texname="anemote1.flame01", Code="flame", dim=128, dx=72, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.flameZ", col=(R=0, G=0, B=0, A=0))
    EMlist(141)=(texname="anemote1.flyer01", Code="flyer", dim=64, dx=40, dy=20, boff=False, etype=0, Group=5, singletexname="anemote1.flyerZ", col=(R=0, G=0, B=0, A=0))
    EMlist(142)=(texname="anemote1.footy1", Code="footy", dim=64, dx=48, dy=20, boff=False, etype=0, Group=5, singletexname="anemote1.footyZ", col=(R=0, G=0, B=0, A=0))
    EMlist(143)=(texname="anemote1.freak01", Code="freak", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.freakZ", col=(R=0, G=0, B=0, A=0))
    EMlist(144)=(texname="anemote1.gay", Code="gay", dim=32, dx=32, dy=16, boff=True, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(145)=(texname="anemote1.grouphug", Code="grouphug", dim=64, dx=40, dy=20, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(146)=(texname="anemote1.guitar1", Code="guitar", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.guitarZ", col=(R=0, G=0, B=0, A=0))
    EMlist(147)=(texname="anemote1.hammer1", Code="hammer", dim=32, dx=30, dy=20, boff=False, etype=0, Group=5, singletexname="anemote1.hammerZ", col=(R=0, G=0, B=0, A=0))
    EMlist(148)=(texname="anemote1.hm", Code="hm", dim=64, dx=42, dy=48, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(149)=(texname="anemote1.hump1", Code="hump", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.humpZ", col=(R=0, G=0, B=0, A=0))
    EMlist(150)=(texname="anemote1.imu01", Code="imu", dim=32, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.imuZ", col=(R=0, G=0, B=0, A=0))
    EMlist(151)=(texname="anemote1.jd", Code="jd", dim=128, dx=40, dy=72, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(152)=(texname="anemote1.jester", Code="jester", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(153)=(texname="anemote1.joystick01", Code="joystick", dim=32, dx=22, dy=22, boff=False, etype=0, Group=5, singletexname="anemote1.joystickZ", col=(R=0, G=0, B=0, A=0))
    EMlist(154)=(texname="anemote1.kiss01", Code="kiss", dim=32, dx=32, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.kissZ", col=(R=0, G=0, B=0, A=0))
    EMlist(155)=(texname="anemote1.cat1", Code="cat", dim=32, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.catZ", col=(R=0, G=0, B=0, A=0))
    EMlist(156)=(texname="anemote1.lick01", Code="lick", dim=64, dx=34, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.lickZ", col=(R=0, G=0, B=0, A=0))
    EMlist(157)=(texname="anemote1.loaded", Code="loaded", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(158)=(texname="anemote1.lol1", Code="lol", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.lolZ", col=(R=0, G=0, B=0, A=0))
    EMlist(159)=(texname="anemote1.love1", Code="love", dim=32, dx=28, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.loveZ", col=(R=0, G=0, B=0, A=0))
    EMlist(160)=(texname="anemote1.llama", Code="llama", dim=64, dx=32, dy=38, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(161)=(texname="anemote1.mad", Code="mad", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(162)=(texname="anemote1.martian1", Code="martian", dim=32, dx=26, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.martianZ", col=(R=0, G=0, B=0, A=0))
    EMlist(163)=(texname="anemote1.mic1", Code="mic", dim=32, dx=24, dy=20, boff=False, etype=0, Group=5, singletexname="anemote1.micZ", col=(R=0, G=0, B=0, A=0))
    EMlist(164)=(texname="anemote1.mischief01", Code="mischief", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.mischiefZ", col=(R=0, G=0, B=0, A=0))
    EMlist(165)=(texname="anemote1.moon01", Code="moon", dim=16, dx=16, dy=16, boff=True, etype=0, Group=5, singletexname="anemote1.moonZ", col=(R=0, G=0, B=0, A=0))
    EMlist(166)=(texname="anemote1.moon201", Code="moon2", dim=32, dx=28, dy=24, boff=True, etype=0, Group=5, singletexname="anemote1.moon2Z", col=(R=0, G=0, B=0, A=0))
    EMlist(167)=(texname="anemote1.mosher1", Code="mosher", dim=32, dx=28, dy=28, boff=False, etype=0, Group=5, singletexname="anemote1.mosherZ", col=(R=0, G=0, B=0, A=0))
    EMlist(168)=(texname="anemote1.mushroom1", Code="mushroom", dim=32, dx=20, dy=20, boff=False, etype=0, Group=5, singletexname="anemote1.mushroomZ", col=(R=0, G=0, B=0, A=0))
    EMlist(169)=(texname="anemote1.mwah", Code="", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(170)=(texname="anemote1.nag1", Code="nag", dim=16, dx=16, dy=16, boff=True, etype=0, Group=5, singletexname="anemote1.nagZ", col=(R=0, G=0, B=0, A=0))
    EMlist(171)=(texname="anemote1.nana1", Code="nana", dim=64, dx=34, dy=24, boff=True, etype=0, Group=5, singletexname="anemote1.nanaZ", col=(R=0, G=0, B=0, A=0))
    EMlist(172)=(texname="anemote1.naughty1", Code="naughty", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.naughtyZ", col=(R=0, G=0, B=0, A=0))
    EMlist(173)=(texname="anemote1.nod1", Code="nod", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.nodZ", col=(R=0, G=0, B=0, A=0))
    EMlist(174)=(texname="anemote1.nono1", Code="nono", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.nonoZ", col=(R=0, G=0, B=0, A=0))
    EMlist(175)=(texname="anemote1.nurseoap01", Code="nurseoap", dim=128, dx=92, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.nurseoapZ", col=(R=0, G=0, B=0, A=0))
    EMlist(176)=(texname="anemote1.ola01", Code="!ola", dim=256, dx=234, dy=30, boff=False, etype=0, Group=5, singletexname="anemote1.olaZ", col=(R=0, G=0, B=0, A=0))
    EMlist(177)=(texname="anemote1.paddy", Code="paddy", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(178)=(texname="anemote1.party", Code="party", dim=64, dx=34, dy=30, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(179)=(texname="anemote1.party2", Code="party2", dim=64, dx=38, dy=36, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(180)=(texname="anemote1.paw", Code="paw", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(181)=(texname="anemote1.pig", Code="pig", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(182)=(texname="anemote1.pimp1", Code="pimp", dim=32, dx=22, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.pimpZ", col=(R=0, G=0, B=0, A=0))
    EMlist(183)=(texname="anemote1.poke1", Code="poke", dim=64, dx=54, dy=15, boff=False, etype=0, Group=5, singletexname="anemote1.pokeZ", col=(R=0, G=0, B=0, A=0))
    EMlist(184)=(texname="anemote1.prooap01", Code="prooap", dim=64, dx=56, dy=48, boff=False, etype=0, Group=5, singletexname="anemote1.prooapZ", col=(R=0, G=0, B=0, A=0))
    EMlist(185)=(texname="anemote1.psycho1", Code="psycho", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.psychoZ", col=(R=0, G=0, B=0, A=0))
    EMlist(186)=(texname="anemote1.puke01", Code="puke", dim=64, dx=60, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.pukeZ", col=(R=0, G=0, B=0, A=0))
    EMlist(187)=(texname="anemote1.redeye01", Code="redeye", dim=32, dx=24, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.redeyeZ", col=(R=0, G=0, B=0, A=0))
    EMlist(188)=(texname="anemote1.rodent", Code="rodent", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(189)=(texname="anemote1.rofl01", Code="rofl", dim=64, dx=42, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.roflZ", col=(R=0, G=0, B=0, A=0))
    EMlist(190)=(texname="anemote1.rolleyes01", Code="rolleyes", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.rolleyesZ", col=(R=0, G=0, B=0, A=0))
    EMlist(191)=(texname="anemote1.rolling01", Code="rolling", dim=64, dx=50, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.rollingZ", col=(R=0, G=0, B=0, A=0))
    EMlist(192)=(texname="anemote1.rub01", Code="rub", dim=64, dx=36, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.rubZ", col=(R=0, G=0, B=0, A=0))
    EMlist(193)=(texname="anemote1.satan1", Code="satan", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.satanZ", col=(R=0, G=0, B=0, A=0))
    EMlist(194)=(texname="anemote1.saw01", Code="saw", dim=64, dx=64, dy=16, boff=True, etype=0, Group=5, singletexname="anemote1.sawZ", col=(R=0, G=0, B=0, A=0))
    EMlist(195)=(texname="anemote1.scared01", Code="scared", dim=32, dx=24, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.scaredZ", col=(R=0, G=0, B=0, A=0))
    EMlist(196)=(texname="anemote1.scream1", Code="scream", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.screamZ", col=(R=0, G=0, B=0, A=0))
    EMlist(197)=(texname="anemote1.shake01", Code="shake", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.shakeZ", col=(R=0, G=0, B=0, A=0))
    EMlist(198)=(texname="anemote1.shout1", Code="shout", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.shoutZ", col=(R=0, G=0, B=0, A=0))
    EMlist(199)=(texname="anemote1.smash1", Code="smash", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.smashZ", col=(R=0, G=0, B=0, A=0))
    EMlist(200)=(texname="anemote1.smoke01", Code="smoke", dim=32, dx=18, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.smokeZ", col=(R=0, G=0, B=0, A=0))
    EMlist(201)=(texname="anemote1.smoke201", Code="smoke2", dim=32, dx=20, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.smoke2Z", col=(R=0, G=0, B=0, A=0))
    EMlist(202)=(texname="anemote1.smurf", Code="smurf", dim=32, dx=16, dy=20, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(203)=(texname="anemote1.snore01", Code="snore", dim=32, dx=32, dy=26, boff=False, etype=0, Group=5, singletexname="anemote1.snoreZ", col=(R=0, G=0, B=0, A=0))
    EMlist(204)=(texname="anemote1.snore01", Code="sleep", dim=32, dx=32, dy=26, boff=False, etype=0, Group=5, singletexname="anemote1.snoreZ", col=(R=0, G=0, B=0, A=0))
    EMlist(205)=(texname="anemote1.snowdrunk", Code="snowdrunk", dim=32, dx=16, dy=20, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(206)=(texname="anemote1.snowemb", Code="snowemb", dim=32, dx=16, dy=20, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(207)=(texname="anemote1.snowgrin", Code="snowgrin", dim=32, dx=16, dy=20, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(208)=(texname="anemote1.snowsmil", Code="snowsmil", dim=32, dx=16, dy=20, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(209)=(texname="anemote1.snowton", Code="snowton", dim=32, dx=16, dy=20, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(210)=(texname="anemote1.snowwink", Code="snowwink", dim=32, dx=16, dy=20, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(211)=(texname="anemote1.sofa01", Code="sofa", dim=64, dx=60, dy=40, boff=False, etype=0, Group=5, singletexname="anemote1.sofaZ", col=(R=0, G=0, B=0, A=0))
    EMlist(212)=(texname="anemote1.soon", Code="soon", dim=64, dx=42, dy=48, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(213)=(texname="anemote1.spam", Code="spam", dim=64, dx=40, dy=36, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(214)=(texname="anemote1.spank1", Code="spank", dim=64, dx=40, dy=16, boff=True, etype=0, Group=5, singletexname="anemote1.spankZ", col=(R=0, G=0, B=0, A=0))
    EMlist(215)=(texname="anemote1.sperm1", Code="sperm", dim=64, dx=48, dy=16, boff=True, etype=0, Group=5, singletexname="anemote1.spermZ", col=(R=0, G=0, B=0, A=0))
    EMlist(216)=(texname="anemote1.spider01", Code="spider", dim=128, dx=102, dy=34, boff=False, etype=0, Group=5, singletexname="anemote1.spiderZ", col=(R=0, G=0, B=0, A=0))
    EMlist(217)=(texname="anemote1.spin1", Code="spin", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.spinZ", col=(R=0, G=0, B=0, A=0))
    EMlist(218)=(texname="anemote1.spit01", Code="spit", dim=32, dx=32, dy=18, boff=False, etype=0, Group=5, singletexname="anemote1.spitZ", col=(R=0, G=0, B=0, A=0))
    EMlist(219)=(texname="anemote1.spock1", Code="spock", dim=32, dx=32, dy=26, boff=False, etype=0, Group=5, singletexname="anemote1.spockZ", col=(R=0, G=0, B=0, A=0))
    EMlist(220)=(texname="anemote1.spockfla01", Code="spockfla", dim=128, dx=84, dy=28, boff=False, etype=0, Group=5, singletexname="anemote1.spockflaZ", col=(R=0, G=0, B=0, A=0))
    EMlist(221)=(texname="anemote1.stompa1", Code="stompa", dim=64, dx=32, dy=33, boff=True, etype=0, Group=5, singletexname="anemote1.stompaZ", col=(R=0, G=0, B=0, A=0))
    EMlist(222)=(texname="anemote1.stupid", Code="stupid", dim=62, dx=42, dy=48, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(223)=(texname="anemote1.takeit", Code="takeit", dim=32, dx=16, dy=20, boff=True, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(224)=(texname="anemote1.talk01", Code="talk", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.talkZ", col=(R=0, G=0, B=0, A=0))
    EMlist(225)=(texname="anemote1.tank1", Code="tank", dim=128, dx=82, dy=48, boff=False, etype=0, Group=5, singletexname="anemote1.tankZ", col=(R=0, G=0, B=0, A=0))
    EMlist(226)=(texname="anemote1.tasty01", Code="tasty", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.tastyZ", col=(R=0, G=0, B=0, A=0))
    EMlist(227)=(texname="anemote1.teehee01", Code="teehee", dim=32, dx=20, dy=14, boff=False, etype=0, Group=5, singletexname="anemote1.teeheeZ", col=(R=0, G=0, B=0, A=0))
    EMlist(228)=(texname="anemote1.threesome1", Code="3some", dim=64, dx=34, dy=23, boff=True, etype=0, Group=5, singletexname="anemote1.threesomeZ", col=(R=0, G=0, B=0, A=0))
    EMlist(229)=(texname="anemote1.throw01", Code="throw", dim=128, dx=68, dy=36, boff=False, etype=0, Group=5, singletexname="anemote1.throwZ", col=(R=0, G=0, B=0, A=0))
    EMlist(230)=(texname="anemote1.thumb", Code="thumb", dim=32, dx=26, dy=12, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(231)=(texname="anemote1.tired", Code="tired", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(232)=(texname="anemote1.topic", Code="topic", dim=64, dx=42, dy=48, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(233)=(texname="anemote1.trout01", Code="trout", dim=64, dx=56, dy=40, boff=False, etype=0, Group=5, singletexname="anemote1.troutZ", col=(R=0, G=0, B=0, A=0))
    EMlist(234)=(texname="anemote1.uhh1", Code="uhh", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.uhhZ", col=(R=0, G=0, B=0, A=0))
    EMlist(235)=(texname="", Code="&W", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=255, G=255, B=255, A=0))
    EMlist(236)=(texname="", Code="&LR", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=255, G=0, B=0, A=0))
    EMlist(237)=(texname="", Code="&LG", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=0, G=255, B=0, A=0))
    EMlist(238)=(texname="", Code="&LB", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=0, G=0, B=255, A=0))
    EMlist(239)=(texname="", Code="&LC", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=0, G=255, B=255, A=0))
    EMlist(240)=(texname="", Code="&Y", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=255, G=255, B=0, A=0))
    EMlist(241)=(texname="", Code="&LM", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=255, G=0, B=255, A=0))
    EMlist(242)=(texname="", Code="&R", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=128, G=0, B=0, A=0))
    EMlist(243)=(texname="", Code="&G", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=0, G=128, B=0, A=0))
    EMlist(244)=(texname="", Code="&B", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=0, G=0, B=128, A=0))
    EMlist(245)=(texname="", Code="&C", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=0, G=128, B=255, A=0))
    EMlist(246)=(texname="", Code="&BR", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=128, G=128, B=0, A=0))
    EMlist(247)=(texname="", Code="&M", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=128, G=0, B=128, A=0))
    EMlist(248)=(texname="", Code="&TR", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=255, G=64, B=64, A=0))
    EMlist(249)=(texname="", Code="&TG", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=64, G=255, B=64, A=0))
    EMlist(250)=(texname="", Code="&TB", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=64, G=64, B=255, A=0))
    EMlist(251)=(texname="", Code="&TC", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=64, G=255, B=255, A=0))
    EMlist(252)=(texname="", Code="&O", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=255, G=128, B=0, A=0))
    EMlist(253)=(texname="", Code="&TM", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=255, G=64, B=255, A=0))
    EMlist(254)=(texname="", Code="&BK", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=1, G=1, B=1, A=0))
    EMlist(255)=(texname="", Code="&GY", dim=0, dx=0, dy=0, boff=False, etype=0, Group=0, singletexname="", col=(R=128, G=128, B=128, A=0))
    EMlist(256)=(texname="anemote1.user1", Code="user", dim=64, dx=50, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.userZ", col=(R=0, G=0, B=0, A=0))
    EMlist(257)=(texname="anemote1.wanker01", Code="wanker", dim=64, dx=50, dy=32, boff=True, etype=0, Group=5, singletexname="anemote1.wankerZ", col=(R=0, G=0, B=0, A=0))
    EMlist(258)=(texname="anemote1.wave1", Code="wave", dim=32, dx=28, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.waveZ", col=(R=0, G=0, B=0, A=0))
    EMlist(259)=(texname="anemote1.weirdobeer1", Code="weirdobeer", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.weirdobeerZ", col=(R=0, G=0, B=0, A=0))
    EMlist(260)=(texname="anemote1.whatever", Code="whatever", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="", col=(R=0, G=0, B=0, A=0))
    EMlist(261)=(texname="anemote1.whip01", Code="whip", dim=64, dx=48, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.whipZ", col=(R=0, G=0, B=0, A=0))
    EMlist(262)=(texname="anemote1.wink1", Code="wink", dim=16, dx=16, dy=16, boff=False, etype=2, Group=5, singletexname="anemote1.winkZ", col=(R=0, G=0, B=0, A=0))
    EMlist(263)=(texname="anemote1.wow1", Code="wow", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.wowZ", col=(R=0, G=0, B=0, A=0))
    EMlist(264)=(texname="anemote1.wtf1", Code="wtf", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.wtfZ", col=(R=0, G=0, B=0, A=0))
    EMlist(265)=(texname="anemote1.yawn01", Code="yawn", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.yawnZ", col=(R=0, G=0, B=0, A=0))
    EMlist(266)=(texname="anemote1.yawn201", Code="yawn2", dim=16, dx=16, dy=16, boff=False, etype=0, Group=5, singletexname="anemote1.yawn2Z", col=(R=0, G=0, B=0, A=0))
    EMlist(267)=(texname="anemote1.yipee1", Code="yipee", dim=32, dx=24, dy=24, boff=False, etype=0, Group=5, singletexname="anemote1.yipeeZ", col=(R=0, G=0, B=0, A=0))
}