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