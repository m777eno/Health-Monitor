# Health-Monitor
#Created by Enoch Masih 
Introductions
This is a health monitoring script designed to show server processing, networking and some disk data. As I already have set up a cron job with
a security script that provides a lot of details, this script is designed to provide a semi-snapshot of the health of the system. This will
provide the user a snapshot of activity at the time of execution.
Installation
The installation of the script is similar to my previous security script which also ran as a cron job (see previous lab)
. This script
is set up to be run as a cron job. The permissions of the script would have to be changed so that the admin can run the script. If it is set
up as a cron job please make sure to run it with sudo commands. This script will save the report it creates in the user’s home directory as a
text file. The format of the file name is the ‘date-health.txt’
.
Features
I chose to include tcpdump so that the user can get an idea of what sort of traffic is coming in. I included the pstree command with options
that highlight. I found this command to be really interesting. It quickly provides the sys admin with useful information. I really enjoyed the
visual setup of the output and wished that Microsoft offered something similar. I would like to find out more about it. In addition to these
commands I researched and included some few other commands that I wanted as part of my health monitor system. I included the disk usage and
memory usage as I think that information can also play a vital role especially in a server where space might be an issue. If the server’s
memory is being consumed completely that might indicate issues if the sys admin was not expecting it so. Disk usage also shows mounted disk
along with space, if the sys admin notices an unknown mounted disk it could indicate a security concern and should be investigated further.
