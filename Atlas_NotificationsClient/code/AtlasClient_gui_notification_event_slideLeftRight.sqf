/**
 * File: AtlasClient_gui_notification_event_slideLeftRight
 * Project: Exile Point
 * Discord: FairyTale#5571
 * E-Mail: a3atlaslife@gmail.com
 * Site: http://forum.exilepoint.club/
 */

private["_slide","_state","_display","_background","_message","_icon","_deployTime","_backgroundPosition","_messagePosition","_iconPosition"];
disableSerialization;
_slide = (_this select 0) * 10;
_state = _this select 1;
_display = uiNamespace getVariable ["RscAtlasNotification",displayNull];
_background = _display displayCtrl (4000 + _slide);
_message = _display displayCtrl (4001 + _slide);
_icon = _display displayCtrl (4002 + _slide);
_deployTime = 0.6;
_backgroundPosition = ((ctrlPosition _background) select 1);
_messagePosition = ((ctrlPosition _message) select 1);
_iconPosition = ((ctrlPosition _icon) select 1);
if(_state)then
{
	_background ctrlSetPosition 
	[
		0.838021 * safezoneW + safezoneX,
		_backgroundPosition
	];
	_icon ctrlSetPosition
	[
		0.84375 * safezoneW + safezoneX,
		_iconPosition
	];
	_message ctrlSetPosition
	[
		0.883854 * safezoneW + safezoneX,
		_messagePosition
	];
}
else
{
	_background ctrlSetPosition 
	[
		1.004167 * safezoneW + safezoneX,
		_backgroundPosition
	];
	_icon ctrlSetPosition
	[
		1.009896 * safezoneW + safezoneX,
		_iconPosition
	];
	_message ctrlSetPosition
	[
		1.05 * safezoneW + safezoneX,
		_messagePosition
	];
};
_background ctrlCommit _deployTime;
_message ctrlCommit _deployTime;
_icon ctrlCommit _deployTime;
true