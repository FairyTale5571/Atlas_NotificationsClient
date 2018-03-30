class CfgPatches
{
	class Atlas_NotificationsClient
	{
		requiredVersion=0.1;
		requiredAddons[]=
		{
			"a3_characters_f"
		};
		units[]={};
		weapons[]={};
		magazines[]={};
		ammo[]={};
	};
};

class CfgFunctions
{
	class Atlas_NotificationsClient
	{
		class Bootstrap
		{
			file="\Atlas_NotificationsClient\bootstrap";
			class preInit {	preInit=1; };
			class postInit { postInit=1; };
		};
	};
};

class CfgNotifications
{
	class SafeIsLockedWarning
	{
		description="You cannot access locked safes.";
		title="SAFE IS LOCKED";
		iconPicture="\Atlas_NotificationsClient\ui\fail_ca.paa";
		iconText="";
		color[]={0.91000003,0,0,1};
		duration=5;
		priority=0;
		difficulty[]={};
	};
	class ProtectionMoneyPaidInformation
	{
		description="Protecton money paid!";
		title="PROTECTION MONEY PAID";
		iconPicture="\Atlas_NotificationsClient\ui\success_ca.paa";
		iconText="";
		color[]={0.69999999,0.93000001,0,1};
		duration=2;
		priority=0;
		difficulty[]={};
	};
	
	class Whoops
	{
		description="%1";
		title="WHOOPS";
		iconPicture="\Atlas_NotificationsClient\ui\fail_ca.paa";
		iconText="";
		color[]={0.91000003,0,0,1};
		duration=3;
		priority=0;
		difficulty[]={};
	};
	class Success
	{
		description="%1";
		title="Success";
		iconPicture="\Atlas_NotificationsClient\ui\success_ca.paa";
		iconText="";
		color[]={0.69999999,0.93000001,0,1};
		duration=3;
		priority=0;
		difficulty[]={};
	};
};
class RscText;
class RscPictureKeepAspect;
class RscStructuredText;
class RscTitles
{
	class RscAtlasNotification
	{
		idd=20020;
		onLoad="uiNamespace setVariable ['RscAtlasNotification', _this select 0];";
		onUnload="uiNamespace setVariable ['RscAtlasNotification', displayNull]";
		duration=999999;
		class controls
		{
			class Background: RscText
			{
				idc=4000;
				x="1.004167 * safezoneW + safezoneX";
				y="0.786 * safezoneH + safezoneY";
				w="0.166146 * safezoneW";
				h="0.077 * safezoneH";
				colorBackground[]=
				{
					"19/255",
					"22/255",
					"27/255",
					0.80000001
				};
			};
			class Icon: RscPictureKeepAspect
			{
				idc=4002;
				text="";
				x="1.009896 * safezoneW + safezoneX";
				y="0.797 * safezoneH + safezoneY";
				w="0.034375 * safezoneW";
				h="0.055 * safezoneH";
			};
			class Message: RscStructuredText
			{
				idc=4001;
				x="1.05 * safezoneW + safezoneX";
				y="0.797 * safezoneH + safezoneY";
				w="0.120313 * safezoneW";
				h="0.055 * safezoneH";
			};
			class Background1: Background
			{
				idc="4000 + 10";
			};
			class Icon1: Icon
			{
				idc="4002 + 10";
			};
			class Message1: Message
			{
				idc="4001 + 10";
			};
			class Background2: Background
			{
				idc="4000 + 20";
			};
			class Icon2: Icon
			{
				idc="4002 + 20";
			};
			class Message2: Message
			{
				idc="4001 + 20";
			};
			class Background3: Background
			{
				idc="4000 + 30";
			};
			class Icon3: Icon
			{
				idc="4002 + 30";
			};
			class Message3: Message
			{
				idc="4001 + 30";
			};
			class Background4: Background
			{
				idc="4000 + 40";
			};
			class Icon4: Icon
			{
				idc="4002 + 40";
			};
			class Message4: Message
			{
				idc="4001 + 40";
			};
			class Background5: Background
			{
				idc="4000 + 50";
			};
			class Icon5: Icon
			{
				idc="4002 + 50";
			};
			class Message5: Message
			{
				idc="4001 + 50";
			};
			class Background6: Background
			{
				idc="4000 + 60";
			};
			class Icon6: Icon
			{
				idc="4002 + 60";
			};
			class Message6: Message
			{
				idc="4001 + 60";
			};
			class Background7: Background
			{
				idc="4000 + 70";
			};
			class Icon7: Icon
			{
				idc="4002 + 70";
			};
			class Message7: Message
			{
				idc="4001 + 70";
			};
			class Background8: Background
			{
				idc="4000 + 80";
			};
			class Icon8: Icon
			{
				idc="4002 + 80";
			};
			class Message8: Message
			{
				idc="4001 + 80";
			};
			class Background9: Background
			{
				idc="4000 + 90";
			};
			class Icon9: Icon
			{
				idc="4002 + 90";
			};
			class Message9: Message
			{
				idc="4001 + 90";
			};
		};
	};
	
};