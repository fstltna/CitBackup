# CitBackup backup script for Citadel groupware (1.0)
Creates a hot backup of your Citadel groupware installation. Run this daily or your logs could get huge.

Official support sites: [Official Github Repo](https://github.com/fstltna/CitBackup) - [Official Forum](https://synchronetbbs.org/index.php/forum/citbackup) - [Official Download Site](https://synchronetbbs.org/index.php/downloads/category/9-groupware) 

---
Make sure you have the "Settings->Automatically delete committed database logs" option disabled!


1. Edit the settings at the top of citbackup.pl if needed
2. create a cron job like this:
        **1 1 * * * /root/citbackup/citbackup.pl**
3. This will back up your citadel installation at 1:01am each day, and keep the last 5 backups.

If you need more help visit https://SynchronetBBS.org/
