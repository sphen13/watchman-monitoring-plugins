# Munki Status

Watchman Monitoring plugin that reports on the status of munki. It will trigger a notification to the user after X amount of days the updates have been ignored. The notifications requires [yo.app](https://github.com/sheagcraig/yo). Notifications are optional.

## Available Preferences

**Preference File**: `/Library/MonitoringClient/PluginSupport/_check_munki_settings.plist`

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
    <td>daysBeforeAlert</td>
    <td>integer</td>
    <td>7</td>
    <td>Number of days updates need to be pending before the first notification</td>
  </tr>
  <tr>
    <td>daysBeforeCritical</td>
    <td>integer</td>
    <td>14</td>
    <td>Number of days updates need to be pending before we classify the alert as CRITICAL</td>
  </tr>
  <tr>
    <td>consecutiveErrorsBeforeAlert</td>
    <td>integer</td>
    <td>3</td>
    <td>How many consecutive munki runs with errors are needed before we trigger a Watchman alert. Sometimes munki repos can be down or a client can try to reach your munki instance when they are not connected. This prevents the plugin from being too chatty.</td>
  </tr>
  <tr>
    <td>notificationAgent</td>
    <td>string</td>
    <td>/Applications/Utilities/yo.app/Contents/MacOS/yo</td>
    <td>Full path (not escaped) to your version of yo</td>
  </tr>
  <tr>
    <td>notificationTitle</td>
    <td>string</td>
    <td>Software Updates Available</td>
    <td>Yo notification title for a user alert</td>
  </tr>
  <tr>
    <td>notificationTitleCritical</td>
    <td>string</td>
    <td>Critical Updates Available</td>
    <td>Yo notification title for a CRITICAL user alert</td>
  </tr>
  <tr>
    <td>PrefPaneVisibility</td>
    <td>boolean</td>
    <td>true</td>
    <td>Visibility within the WM pref-pane</td>
  </tr>
  <tr>
    <td>Initially_Disabled</td>
    <td>boolean</td>
    <td>false</td>
    <td>Whether the plugin is disabled by default</td>
  </tr>
</tbody>
</table>

## Changelog

```
# 2018-09-19  v1.0
# 2018-11-01  v1.1
#              - Change alerting frequency. wait until 3 consecutive errors to trigger (other than pending updates past due)
#              - Nudge user after daysBeforeAlert
#              - Add Apple Updates to the list of pendingInstalls
# 2019-09-30  v1.2
#              - Add more variables to GUI/plist
# 2020-05-26  v1.3.1
#              - Remove Munki from public facing reports
# 2020-06-22  v1.4
#              - Dont alert on certain temp errors
# 2021-01-13  v1.4.1
#             - Alert if using site_default manifest
# 2022-03-10  v1.4.2
#             - Remove reliance on python
```
