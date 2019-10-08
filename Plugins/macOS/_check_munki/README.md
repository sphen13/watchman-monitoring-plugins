# Munki Status

Watchman Monitoring plugin that reports on the status of munki. It will trigger a notification to the user after X amount of days the updates have been ignored. The notifications requires [yo.app](https://github.com/sheagcraig/yo). Notifications are optional.

## Available Preferences

**Preference File**: `/Library/MonitoringClient/PluginSupport/_check_munki_settings.plist`

Key | Type | Default | Description
--- | --- | --- | ---
`daysBeforeAlert` | integer | 7 | Number of days updates need to be pending before the first notification
`daysBeforeCritical` | integer | 14 | Number of days updates need to be pending before we classify the alert as CRITICAL
`consecutiveErrorsBeforeAlert` | consecutiveErrorsBeforeAlert | 3 | How many consecutive munki runs with errors are needed before we trigger a Watchman alert. Sometimes munki repos can be down or a client can try to reach your munki instance when they are not connected. This prevents the plugin from being too chatty.
`notificationAgent` | string | /Applications/Utilities/yo.app/Contents/MacOS/yo | Full path (not escaped) to your version of yo
`notificationTitle` | string | Software Updates Available | Yo notification title for a user alert
`notificationTitleCritical` | string | Critical Updates Available | Yo notification title for a CRITICAL user alert
`PrefPaneVisibility` | boolean | true | Visibility within the WM pref-pane
`Initially_Disabled` | boolean | false | Whether the plugin is disabled by default


## Process



## Changelog

```
# 2018-09-19  v1.0
# 2018-11-01  v1.1
#             - Change alerting frequency. wait until 3 consecutive errors to trigger (other than pending updates past due)
#             - Nudge user after daysBeforeAlert
#             - Add Apple Updates to the list of pendingInstalls
# 2019-09-30  v1.2
#             - Add more variables to GUI/plist
```
