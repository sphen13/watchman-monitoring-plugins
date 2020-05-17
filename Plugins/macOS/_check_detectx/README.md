# Malware Detection

Watchman Monitoring plugin to report on the results of DetectX

## Available Preferences

**Preference File**: `/Library/MonitoringClient/PluginSupport/_check_detectx_settings.plist`

Key | Type | Default | Description
--- | --- | --- | ---
`DetectXLocation` | string | '/Applications/Utilities/DetectX Swift.app' | Location of DetectX app
`StaleRunTimeDelta` | integer | 86400 | How much time can go by without new DetectX data before we raise an alert (in seconds)
`StaleRunThreshold` | integer | 3 | How many consecutive plugin runs with no new data are ok before raising an alert
`ScanDurationThresh` | integer | 240 | A DetectX scan taking `ScanDurationThresh` amount of seconds or longer is too long
`SlowRunThreshold` | integer | 2 | How many consecutive DetectX scans taking longer than `ScanDurationThresh` are ok before raising an alert
`PrefPaneVisibility` | boolean | true | Visibility within the WM pref-pane

## Process

## Changelog

```
# 2020-05-17    v1.3
#               - Ignore reports when at loginwindow / inactivity tracking
# 2020-03-19    v1.2.1
#               - Only report stale data after 'StaleRunThreshold' stale runs and 'StaleRunTimeDelta' time has elapsed from last report
# 2020-03-19    v1.2
#               - Limit slow scan notifications to 3+ consective slow runs
#               - Fix typos
#               - Add more prefs in the GUI
# 2020-03-17    v1.1
#               - Update reporting because of lack of metadata features
#               - Note: future use of `include_in_warnings` once framework updated
#               - Add prefernce variables
#               - Report DetectX not running or stale data
#               - Report scans that take too long
# 2020-03-02    v1.0
#               - initial version
```
