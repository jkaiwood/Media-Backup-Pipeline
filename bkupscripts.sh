#!/bin/bash

##################

# Backup for NFS user/ system files 


# Directories being backed up 
bkup_files="/home/user/docker /root /srv /usr/local /var/lib /var/spool /var/backups /var/spool/cron/crontabs"

# Backup file directory
destination="/home/user/Backup/"

# Archive filename
day=$(date +%A)
zipfile="Pi-$day.tgz"

# Creation of the archive file through tar. 
tar czf $destination/$bkup_files $backup_files

#Print out end status message 
echo 
echo "Backup job complete successfully"
date 