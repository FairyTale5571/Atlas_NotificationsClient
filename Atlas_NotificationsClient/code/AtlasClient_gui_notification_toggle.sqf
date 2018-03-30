/**
 * File: AtlasClient_gui_notification_toggle
 * Project: Exile Point
 * Discord: FairyTale#5571
 * E-Mail: a3atlaslife@gmail.com
 * Site: http://forum.exilepoint.club/
 */

if(_this)then
{
	("RscAtlasNotificationLayer" call BIS_fnc_rscLayer) cutRsc ["RscAtlasNotification", "PLAIN", 1, false];
	AtlasClientNotificationIsShown = true;
}
else
{
	("RscAtlasNotificationLayer" call BIS_fnc_rscLayer) cutText ["", "PLAIN"]; 
	AtlasClientNotificationIsShown = false;
};
true