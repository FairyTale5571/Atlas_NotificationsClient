private _path = "\Atlas_NotificationsClient\code";
{
	_x params["_function","_client"];
	missionNamespace setVariable[_function, compileFinal preprocessFileLineNumbers format["%1\%2.sqf",_path,_function]];
} forEach
[
	["AtlasClient_gui_network_notificationRequest"],
	["AtlasClient_gui_notification_event_addNotification"],
	["AtlasClient_gui_notification_event_slideLeftRight"],
	["AtlasClient_gui_notification_event_slideReset"],
	["AtlasClient_gui_notification_event_slideUpDown"],
	["AtlasClient_gui_notification_network_notificationRequest"],
	["AtlasClient_gui_events_notifications_draw3D"],
	["AtlasClient_gui_notification_thread_notificationProcessor"],
	["AtlasClient_gui_notification_toggle"]
];

AtlasClientNotificationQueue = [];
AtlasClientNotificationSlides = [0,1,2,3,4,5,6,7,8,9];
AtlasClientNotificationIsShown = false;
AtlasClientNotificationRun = diag_tickTime;

NotifMissionEVH = addMissionEventHandler ["Draw3D", { _this call AtlasClient_gui_events_notifications_draw3D;}];
true call AtlasClient_gui_notification_toggle;

true