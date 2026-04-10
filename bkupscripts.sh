#!/bin/bash

##################

# Script for Backup of user/ system files and transferring backup to remote machine


# Directories being backed up 
bkup_files="/home/user/docker /root /srv /usr/local /var/lib /var/spool /var/backups /var/spool/cron/crontabs"

# Backup file directory
destination="/home/user/Backup/"

# Archive filename
day=$(date +%A)
zipfile="Pi-$day.tgz"

# Passphrase for encryption
phrase=$(cat 5ecure.txt)

# Message saying the backup job started
echo "Backup of files to $zipfile has begun!"
date
echo

# Creation of the archive file through tar. 
tar -czf - "$destination/$zipfile" $bkup_files 
gpg -c --batch --yes --passphrase "$phrase" "$destination/$zipfile"


# Message saying the backup job ended
echo 
echo "Backup job completed"
date 

#SFTP transfer to remote directory
sftp transfer@10.1.1.68:/home/user/pistorage <<EOF
put "$destination/$zipfile" /file_level_bkup
exit
EOF