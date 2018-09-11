#!/bin/bash

output="/Library/MonitoringClient/PluginSupport/_check_folder_sizes.txt"

echo -e "Largest 25 folders as of $(date):\n<pre>" > "${output}"
nice -n 20 du -kh /Library /Applications /Users /var | sort -rh | grep '[0-9][G,T]\>\t' | head -25 >> "${output}"
echo -e "</pre>" >> "${output}"
