Overview
--
This project implements a fully automated, secure backup system for a Raspberry Pi. It uses Bash scripting and scheduled tasks to back up selected directories and transfer them offsite to a Nextcloud server. The goal is to create a reliable, reproducible, and secure backup workflow similar to what a Linux system administrator would deploy in production. The motivation behind it is I am running a jellyfin media server on my Pi and unfortunately disaster has struck before and I lost all my data. So to future proof anything that could happen I decided to set up this project and protect the media and I also get to understand nextcloud and automated pipelines. I am using docker containers for most of this so in the future I plan to migrate the server to a NAS since it will be more powerful than the Pi and will handle the load of streaming better. 



Features
--
- Automated backups using rsync
- Offhost transfer to a Nextcloud server container
- Incremental backups for efficiency
- Configurable retention policy
- Logging of all backup activity
- Email notifications upon completion
- Secure transfer using SFTP
- Script execution through a cron job
- Backup & disaster recovery


Backup Workflow
--
1. Identify directories to back up 
2. Backup and encrypt directories through an automated cron script 
3. Transfer files offhost through sftp
4. Extract files and create incremental backup using rsync 
5. Place files in nextcloud directory
6. Verify transfer integrity  
7. Log results  
8. Send notification on success/failure 

** An SSH key will have to be generated and shared with the remote host so that the script can communicate with it securely and without interruption, otherwise the script will get hung waiting for you to enter your credentials when trying to transfer the files.


Restore Procedures
--
1. Download the desired backup from Nextcloud
2. Extract or sync files back to the Pi
3. Validate file integrity
4. Restart any affected services

______________________________________________________

Future Additions / Improvements
--
- Switch to Bacula instead of rsync
- Add Prometheus metrics for backup status
- Build a small web dashboard for backup history
- Integrate with Ansible for full automation
- Run jellyfin server on a NAS / Nextcloud on the Pi 
