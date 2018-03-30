/**
 * File: AtlasClient_gui_notification_event_slideReset
 * Project: Exile Point
 * Discord: FairyTale#5571
 * E-Mail: a3atlaslife@gmail.com
 * Site: http://forum.exilepoint.club/
 */
 
private["_slide","_display","_background","_message","_icon"];
_slide = _this * 10;
_display = uiNamespace getVariable ["RscAtlasNotification",displayNull];
_background = _display displayCtrl (4000 + _slide);
_message = _display displayCtrl (4001 + _slide);
_icon = _display displayCtrl (4002 + _slide);
_background ctrlSetPosition 
[
	1.004167 * safezoneW + safezoneX,
	0.786 * safezoneH + safezoneY
];
_icon ctrlSetPosition
[
	1.009896 * safezoneW + safezoneX,
	0.797 * safezoneH + safezoneY
];
_message ctrlSetPosition
[
	1.05 * safezoneW + safezoneX,
	0.797 * safezoneH + safezoneY
];
_background ctrlCommit 0;
_icon ctrlCommit 0;
_message ctrlCommit 0;
true