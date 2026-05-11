ls	
# Shows files and folders (Lists).
clear	
# Clears the visual history of the terminal.
id	
#Shows your User and Group IDs (UID/GID).
groups	
#Lists the names of the groups you are in.
cat /etc/passwd
cat
# Displays the contents of a file.
/etc/passwd 
# Linux system file that stores user account information.
cat /etc/passwd | head
cat 
# Displays the contents of a file.
/etc/passwd 
# Linux system file containing user information.
| 
# Sends the output of one command to the next command.
head 
# Shows only the first lines (10 by default).
touch test.txt 
ls- la
# My files and directoris inherit the gid and vid
cat /etc/group | head -10
cat 
# Displays the contents of a file.
/etc/group
#Linux system file that stores group information.
| 
# Sends the output of one command to another command.
head -10 
# Displays the first 10 lines of the file.
groups
# Displays all groups the current user belongs to.
groups USER
groups 
# Displays the groups of a specific user.
USER 
# Replace with an actual username
id -u
# User ID
id -g
# principal group ID
id -G
#All the grups IDS
mkdir ~/proyecto_unix/
mkdir 
# Creates a new directory.
~/proyecto_unix/ 
# Path to the new folder inside the current user’s home directory.
ls -la ~/proyecto_unix/
ls
# Lists files and directories.
-l 
# Shows detailed information such as permissions, owner, size, and modification date.
-a 
# Includes hidden files and directories.
~/proyecto_unix/ 
# Directory being displayed.
groupadd desarolladores
groupadd 
# Creates a new group in Linux.
desarrolladores 
# Name of the new group.
groupadd -g 2000 operadores
groupadd 
# Creates a new group.
-g 2000 
# Assigns a specific Group ID (GID) to the group.
operadores 
# Name of the group.
groupadd --system servicios_web
groupadd 
# Creates a new group.
--system 
# Creates a system group used by services or system processes.
servicios_web 
# Name of the system group.
grep -E "desarolladores|operadores|servicios_web" /etc/group
grep 
# Searches for text patterns inside files.
-E 
# Enables extended regular expressions.
"desarrolladores|operadores|servicios_web" 
# Searches for any of these group names.
| 
# Means OR in the regular expression.
/etc/group 
# Linux system file containing group information.
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs
GID_MIN                  1000
GID_MAX                 60000
#SYS_GID_MIN              101
#SYS_GID_MAX              999
SUB_GID_MIN                100000
SUB_GID_MAX             600100000

grep 
# Searches for specific text patterns inside a file.
"GID_MIN\|GID_MAX\|SYS_GID" 
# Looks for lines containing:
GID_MIN
GID_MAX
SYS_GID
\| 
# OR operator used in basic regular expressions.
/etc/login.defs 
# Linux configuration file that defines account and group settings.
addgroup diseno
addgroup 
# Creates a new group in Linux.
diseno 
# Name of the new group.
addgroup --gid 2100 marketing
addgroup 
# Creates a new group.
--gid 2100 
# Assigns a specific Group ID (GID) to the group.
marketing 
# Name of the new group.
addgroup --system cache_web
addgroup 
# Creates a new group.
--system 
# Creates a system group used by services or system processes.
cache_web 
# Name of the system group.
grep "diseno\|marketing\|cache_web" /etc/group
grep 
# Searches for text patterns inside files.
"diseno\|marketing\|cache_web" 
# Searches for any of these group names.
\| 
# OR operator in basic regular expressions.
/etc/group 
# Linux system file containing group information.
usermod -aG desarolladores root
usermod → Modifies an existing user account.
-aG 
# Adds the user to a supplementary group without removing existing group memberships.
-a 
# Append mode.
-G 
# Specifies supplementary groups.
desarrolladores 
# Name of the group.
root 
# Username being modified.
usermod -aG diseno root
usermod 
# Modifies an existing user account.
-aG 
# Adds the user to an additional group without removing current groups.
diseno 
# Name of the group.
root 
# User being modified.
grep "desarolladores\|diseno" /etc/group
grep 
# searches for text inside files.
"desarolladores\|diseno" 
# search pattern.
/etc/group 
# Linux system file that stores group information.
adduser root marketing
adduser 
# command used to add users or modify group memberships (on some Linux distributions like Ubuntu/Debian).
root 
# the user being added.
marketing 
# grouthe group to which the user is added.
groupadd grupo_temporal
groupadd 
# creates a new group in Linux.
grupo_temporal 
# the name of the new group.
usermod -aG grupo_temporal root
usermod 
# modifies a user account.
-a 
# append (keep existing groups).
-G 
# supplementary groups.
grupo_temporal 
# group to add.
root 
# user being modified.
usermod -G desarolladores root
# If option "a" is not used, the child groups are removed.
usermod -aG diseno,marketing,grupo_temporal root
# return
# prepare the practice setting
mkdir -p ~/lab_chgrp/{proyectos,reportes,scripts}
touch ~/lab_chgrp/proyectos/app.py
touch ~/lab_chgrp/proyectos/config.json
touch ~/lab_chgrp/reportes/informe.txt
touch ~/lab_chgrp/scripts/deploy.sh

# View initial state - everyone has the user group
ls -la ~/lab_chgrp/proyectos/
total 8
drwxr-xr-x 2 root root 4096 may 11 14:58 .
drwxr-xr-x 5 root root 4096 may 11 14:58 ..
-rw-r--r-- 1 root root    0 may 11 14:58 app.py
-rw-r--r-- 1 root root    0 may 11 14:58 config.json
ls 
# lists files and directories.
-l 
# long format (shows permissions, owner, group, size, date, etc.).
-a 
# shows hidden files too (files starting with .).
~/lab_chgrp/proyectos/ 
# target directory.

ls -la ~/lab_chgrp/reportes/
# Shows detailed information about files inside the reportes directory.
total 8
drwxr-xr-x 2 root root 4096 may 11 14:59 .
drwxr-xr-x 5 root root 4096 may 11 14:58 ..
-rw-r--r-- 1 root root    0 may 11 14:59 informe.txt

# Change the group of a file
chgrp desarolladores ~/lab_chgrp/proyectos/app.py
ls -la ~/lab_chgrp/proyectos/
total 8
drwxr-xr-x 2 root root           4096 may 11 14:58 .
drwxr-xr-x 5 root root           4096 may 11 14:58 ..
-rw-r--r-- 1 root desarolladores    0 may 11 14:58 app.py
-rw-r--r-- 1 root root              0 may 11 14:58 config.json
                                                                  
# Change the multiple file group
chgrp diseno ~/lab_chgrp/proyectos/config.json ~/lab_chgrp/reportes/informe.txt  

ls -la ~/lab_chgrp/proyectos/  
# It serves to verify that config.json now belongs to the design group.
total 8
drwxr-xr-x 2 root root           4096 may 11 14:58 .
drwxr-xr-x 5 root root           4096 may 11 14:58 ..
-rw-r--r-- 1 root desarolladores    0 may 11 14:58 app.py
-rw-r--r-- 1 root diseno            0 may 11 14:58 config.json 

ls -la ~/lab_chgrp/reportes/   
# It allows you to verify that report.txt changed to the design group. 
total 8
drwxr-xr-x 2 root root   4096 may 11 14:59 .
drwxr-xr-x 5 root root   4096 may 11 14:58 ..
-rw-r--r-- 1 root diseno    0 may 11 14:59 informe.txt                                                       