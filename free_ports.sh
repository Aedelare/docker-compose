#! /bin/bash

# Steps to install
# Save this script in one of your shares
# Backup /usr/syno/share/nginx/ as follows:
# # cd /usr/syno/share/
# # tar cvf ~/nginx.tar nginx
# Run this script as root
# Reboot and ensure everything is still working
# If not, restore the backup and post a comment on this script's gist page
# If it did, schedule it to run at boot
#   through Control Panel -> Task Scheduler

HTTP_PORT=81
HTTPS_PORT=444

sed -i "s/^\([ \t]\+listen[ \t]\+[]:[]*\)80\([^0-9]\)/\1$HTTP_PORT\2/" /usr/syno/share/nginx/*.mustache
sed -i "s/^\([ \t]\+listen[ \t]\+[]:[]*\)443\([^0-9]\)/\1$HTTPS_PORT\2/" /usr/syno/share/nginx/*.mustache