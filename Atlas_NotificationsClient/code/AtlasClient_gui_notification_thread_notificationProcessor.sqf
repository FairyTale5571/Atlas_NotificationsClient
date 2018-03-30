/**
 * File: AtlasClient_gui_notification_thread_notificationProcessor
 * Project: Exile Point
 * Discord: FairyTale#5571
 * E-Mail: a3atlaslife@gmail.com
 * Site: http://forum.exilepoint.club/
 */

private["_data","_slideID","_display","_message","_icon","_duration","_starTime","_terminationTime"];
if (diag_tickTime - AtlasClientNotificationRun >= 0.25) then
{
	if!(AtlasClientNotificationQueue isEqualTo [])then
	{
		{
			if!(AtlasClientNotificationIsShown)then
			{
				true call AtlasClient_gui_notification_toggle;
			};
			_data = _x;
			if((count _data) < 5)then
			{
				if!(AtlasClientNotificationSlides isEqualTo [])then
				{
					{
						if((count _x) > 4)then
						{
							if((count _x) < 7)then
							{
								[_x select 5,true] call AtlasClient_gui_notification_event_slideUpDown;
							};
						};
					} 
					forEach AtlasClientNotificationQueue;
					_slideID = AtlasClientNotificationSlides select 0;
					AtlasClientNotificationSlides deleteAt 0;
					_data set [4,diag_tickTime];
					_data set [5,_slideID];
					disableSerialization;
					_display = uiNamespace getVariable ["RscAtlasNotification",displayNull];
					_message = _display displayCtrl (4001 + (_slideID * 10));
					_icon = _display displayCtrl (4002 + (_slideID * 10));
					_icon ctrlSetText (_data select 1);
					_message ctrlSetStructuredText parseText (_data select 2);
					_icon ctrlSetTextColor (_data select 3);
					_message ctrlSetTextColor (_data select 3);
					[_slideID,true] call AtlasClient_gui_notification_event_slideLeftRight;
					playSound "HintExpand";
				};
			}
			else
			{
				_duration = _data select 0;
				_starTime = _data select 4;
				_slideID = _data select 5;
				if((count _data) < 7)then
				{
					if((diag_tickTime - _starTime) > _duration)then
					{
						[_slideID,false] call AtlasClient_gui_notification_event_slideLeftRight;
						_data set [6,diag_tickTime];
						playSound "HintCollapse";
					};
				}
				else
				{
					_terminationTime = _data select 6;
					if((diag_tickTime - _terminationTime) > 1)then
					{
						_slideID call AtlasClient_gui_notification_event_slideReset;
						AtlasClientNotificationSlides pushBack _slideID;
						AtlasClientNotificationQueue deleteAt _forEachIndex;
					};
				};
			};
		} 
		forEach AtlasClientNotificationQueue;
	}
	else
	{
		false call AtlasClient_gui_notification_toggle;
	};
	AtlasClientNotificationRun = diag_tickTime;
};