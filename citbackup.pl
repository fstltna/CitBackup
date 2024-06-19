#!/usr/bin/perl

# Set these for your situation
my $CITDIR = "/usr/local/citadel /usr/local/citadel/data/cdb.* /usr/local/citadel/data/log.*";
my $SENDCOMMAND = "/usr/local/citadel/sendcommand";
my $BACKUPDIR = "/root/backups";
my $TARCMD = "/bin/tar czf";

#-------------------
# No changes below here...
#-------------------
my $VERSION = "1.2";

print "CitBackup.pl version $VERSION\n";
print "========================\n";
if (! -d $BACKUPDIR)
{
	print "Backup dir $BACKUPDIR not found, creating...\n";
	system("mkdir -p $BACKUPDIR");
}
print "Moving existing backups: ";

if (-f "$BACKUPDIR/citbackup-5.tgz")
{
	unlink("$BACKUPDIR/citbackup-5.tgz")  or warn "Could not unlink $BACKUPDIR/citbackup-5.tgz: $!";
}
if (-f "$BACKUPDIR/citbackup-4.tgz")
{
	rename("$BACKUPDIR/citbackup-4.tgz", "$BACKUPDIR/citbackup-5.tgz");
}
if (-f "$BACKUPDIR/citbackup-3.tgz")
{
	rename("$BACKUPDIR/citbackup-3.tgz", "$BACKUPDIR/citbackup-4.tgz");
}
if (-f "$BACKUPDIR/citbackup-2.tgz")
{
	rename("$BACKUPDIR/citbackup-2.tgz", "$BACKUPDIR/citbackup-3.tgz");
}
if (-f "$BACKUPDIR/citbackup-1.tgz")
{
	rename("$BACKUPDIR/citbackup-1.tgz", "$BACKUPDIR/citbackup-2.tgz");
}
print "Done\nCreating New Backup: ";
system("$TARCMD $BACKUPDIR/citbackup-1.tgz $CITDIR");
print("\nCulling the log files\n");
system("$SENDCOMMAND \"CULL\"");
print("Done!\n");
exit 0;
