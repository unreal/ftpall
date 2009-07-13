FTPALL
======
Ftpall is a utility for grabbing file backups from all robots available on an FTP connection.

SETUP
-----
*ftpall.dat*
Simple configuration file of the format
	ipaddress robot_name

For example:
	192.168.1.101 rob01
	192.168.1.102 rob02

RUNNING
-------
Just point a cmd prompt to the place where ftpall is installed and call:
	ftpall <some directory name>

FTPALL will create a new directory under ../backups/<some directory name>.  It will then create a directory for each robot name, connect to ftp, and grab an md:\ backup.