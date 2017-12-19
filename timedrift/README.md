# timedrift

Watchman Monitoring custom plugin to monitor time drift.

## Available Preferences

- **NTP Reference Server**: By default set to time.apple.com.
- **Acceptable Time Drift** _(in seconds)_: By default set to 120 seconds.
- **Attempt Remediation**: By default set to false

## Process

Checks current time against **NTP reference server** time polled via `ntpdate`. If drift is greater than the **acceptable time drift** value, attempt to reload `org.ntp.ntpd` once and report one-time alert back to server. If we have previously **attempted remediation** or do not allow remediation, trigger alert.
