/**
 * File: AtlasClient_gui_notification_event_addNotification
 * Project: Exile Point
 * Discord: FairyTale#5571
 * E-Mail: a3atlaslife@gmail.com
 * Site: http://forum.exilepoint.club/
 */

private["_notifConfig","_text","_text1","_text2","_text3","_text4","_picture","_duration","_color","_descriptionText"];
_notifConfig = _this select 0;
_text = param [1,[""]];
_text1 = _text param [0,""];
_text2 = _text param [1,""];
_text3 = _text param [2,""];
_text4 = _text param [3,""];
try
{
	if !(isClass(configFile >> "CfgNotifications" >> _notifConfig)) then 
	{
		throw format["Invalid CfgNotification: %1", _notifConfig];
	};
	_picture = getText(configFile >> "CfgNotifications" >> _notifConfig >> "iconPicture");
	_duration = getNumber(configFile >> "CfgNotifications" >> _notifConfig >> "duration");
	_color = getArray(configFile >> "CfgNotifications" >> _notifConfig >> "color");
	_descriptionText = getText(configFile >> "CfgNotifications" >> _notifConfig >> "description");
	if (_text1 isEqualTo "") then
	{
		_text = _descriptionText;
	}
	else
	{
		_text = format [_descriptionText,_text1,_text2,_text3,_text4];
	};
	AtlasClientNotificationQueue pushBack [_duration,_picture,_text,_color];
}
catch
{
	AtlasClientNotificationQueue pushBack [6,"\Atlas_NotificationsClient\ui\fail_ca.paa",_exception,[0.91, 0, 0, 0.6]];
};
true