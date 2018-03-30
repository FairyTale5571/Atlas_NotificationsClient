/**
 * File: AtlasClient_gui_notification_network_notificationRequest
 * Project: Exile Point
 * Discord: FairyTale#5571
 * E-Mail: a3atlaslife@gmail.com
 * Site: http://forum.exilepoint.club/
 */

private["_notifName","_notifText"];
_notifName = _this select 0;
_notifText = _this select 1;
[_notifName,_notifText] call AtlasClient_gui_notification_event_addNotification;
true