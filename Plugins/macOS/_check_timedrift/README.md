# Time Drift

Watchman Monitoring custom plugin to monitor time drift.

## Available Preferences

**Preference File**: `/Library/MonitoringClient/PluginSupport/_check_timedrift_settings.plist`

Key | Type | Default | Description
--- | --- | --- | ---
`ntpServer` | string | us.pool.ntp.org | IP or DNS of time server to check against
`secondsOfAcceptableDrift` | integer | 120 | How far the time drift can get before sending alert _(in seconds)_
`attemptRemediation` | boolean | true | Whether we attempt to resync time or not
`PrefPaneVisibility` | boolean | true | Visibility within the WM pref-pane
`Initially_Disabled` | boolean | true* | Whether the plugin is enabled or not.  If we detect that this is on a **server** it will be enabled by default


## Process

Checks current time against **NTP reference server** time polled via `ntpdate` or `sntp`. If drift is greater than the **acceptable time drift** value, attempt to reload `org.ntp.ntpd` once and report one-time alert back to server. If we have previously **attempted remediation** or do not allow remediation, trigger alert.


## Changelog

```
# 2017-02-23: v1
# 2017-12-19: v1.2
#               add pref for remediation
# 2018-10-29: v1.3
#               default remediation to true
#               switch to us.pool.ntp.org by default
#               change how we resync time on < 10.14
#               enable time sync checks and update on 10.14
# 2018-11-06: v1.3.1
#               fix output for new time drift
# 2019-04-29: v1.4
#               exit with informational status on initial ntp reset attempt
# 2019-12-10: v1.4.2
#               ignore kod_db error - output more details on error
# 2022-03-12: v1.5
#               fix os version logic for bigsur+ (oops a litte late)
#               address sntp output differences
```
