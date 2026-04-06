Overview
--
This project implements a fully automated, secure backup system for a Raspberry Pi. It uses Bash scripting and scheduled tasks to back up selected directories and transfer them offsite to a Nextcloud server. The goal is to create a reliable, reproducible, and secure backup workflow similar to what a Linux system administrator would deploy in production. The motivation behind it is I am running a media server on my Pi and unfortunately disaster has struck before and I lost all my data. So to future proof anything that could happen I decided to set up this project and protect the media and I also get to understand nextcloud and automated pipelines. I am using docker containers for most of this so in the future I plan to migrate the server to a NAS since it will be more powerful than the Pi and will handle the load of streaming better. 



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
2. Create incremental backup using rsync  
3. Encrypt backup archive  
4. Transfer backup to Nextcloud via SSH 
5. Verify transfer integrity  
6. Log results  
7. Send notification on success/failure  


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
