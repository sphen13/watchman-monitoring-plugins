#!/bin/bash

output="/Library/MonitoringClient/PluginSupport/_check_folder_sizes.txt"

echo -e "Largest 25 folders as of $(date):\n<tt>" > "${output}"
nice -n 20 du -k /Library /Applications /Users /var | awk '$1 > 5242880 { print }' | sort -nr | head -25 | awk '
    function human(x) {
        if (x<1000) {return x} else {x/=1024}
        s="MGT";
        while (x>=1000 && length(s)>1)
            {x/=1024; s=substr(s,2)}
        return int(x+0.5) substr(s,1,1)
    }
    {sub(/^[0-9]+/, human($1)); print}' >> "${output}"
echo -e "</tt>" >> "${output}"
