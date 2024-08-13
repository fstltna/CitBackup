# CitBackup backup script for Citadel groupware (1.3.3)
Creates a hot backup of your Citadel groupware installation. Run this daily or your logs could get huge.

Official support sites: [Official Github Repo](https://github.com/fstltna/CitBackup) - [Official Forum](https://marisa-apps.retro-os.live/index.php/forum) - [![Official Download Site](https://a.fsdn.com/con/app/sf-download-button)](https://sourceforge.net/projects/citbackup/files/latest/download)

---
Make sure you have the "Settings->Automatically delete committed database logs" option disabled!


1. Edit the settings at the top of citbackup.pl if needed
2. create a cron job like this:

	**1 1 * * * /root/CitBackup/citbackup.pl**

This will back up your citadel installation at 1:01am each day, and keep the last 5 backups.

If you need more help visit [The Official Forum](https://marisa-apps.retro-os.live/index.php/forum) 

