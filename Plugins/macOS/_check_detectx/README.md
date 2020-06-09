# Malware Detection

Watchman Monitoring plugin to report on the results of DetectX

## Available Preferences

**Preference File**: `/Library/MonitoringClient/PluginSupport/_check_detectx_settings.plist`

<table>
<thead>
	<tr>
		<th>Key</th>
		<th>Type</th>
		<th>Default</th>
    <th>Description</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td>`DetectXLocation`</td>
		<td>string</td>
		<td>'/Applications/Utilities/DetectX Swift.app'</td>
    <td>Location of DetectX app</td>
	</tr>
  <tr>
    <td>`StaleRunTimeDelta`</td>
    <td>integer</td>
    <td>86400</td>
    <td>How much time can go by without new DetectX data before we raise an alert (in seconds)</td>
  </tr>
  <tr>
    <td>`StaleRunThreshold`</td>
    <td>integer</td>
    <td>3</td>
    <td>How many consecutive plugin runs with no new data are ok before raising an alert</td>
  </tr>
  <tr>
    <td>`ScanDurationThresh`</td>
    <td>integer</td>
    <td>240</td>
    <td>A DetectX scan taking `ScanDurationThresh` amount of seconds or longer is too long</td>
  </tr>
  <tr>
    <td>`SlowRunThreshold`</td>
    <td>integer</td>
    <td>2</td>
    <td>How many consecutive DetectX scans taking longer than `ScanDurationThresh` are ok before raising an alert</td>
  </tr>
  <tr>
    <td>`PrefPaneVisibility`</td>
    <td>boolean</td>
    <td>true</td>
    <td>Visibility within the WM pref-pane</td>
  </tr>
</tbody>
</table>

## Process

## Changelog

```
# 2020-06-09    v1.4
#               - Tweak alert on DetectX Error
#               - Remove sleep debug messages
# 2020-06-08    v1.3.4
#               - Alert on DetectX Error
# 2020-06-08    v1.3.3
#               - Fix sleep predicate for some 10.15
# 2020-06-08    v1.3.2
#               - Account for machine sleeping
#               - Notify on DetectX Error
# 2020-05-18    v1.3.1
#               - Inactivity status - human readable
#               - Print "Good" status for non metadata integrations
#               - Report more often so WM doesnt think we are stale
#               - Check registration status
# 2020-05-17    v1.3
#               - Ignore reports when at loginwindow / inactivity tracking
# 2020-03-19    v1.2.1
#               - Only report stale data after 'StaleRunThreshold' stale runs and 'StaleRunTimeDelta' time has elapsed from last report
# 2020-03-19    v1.2
#               - Limit slow scan notifications to 3+ consecutive slow runs
#               - Fix typos
#               - Add more prefs in the GUI
# 2020-03-17    v1.1
#               - Update reporting because of lack of metadata features
#               - Note: future use of `include_in_warnings` once framework updated
#               - Add preference variables
#               - Report DetectX not running or stale data
#               - Report scans that take too long
# 2020-03-02    v1.0
#               - initial version
```
