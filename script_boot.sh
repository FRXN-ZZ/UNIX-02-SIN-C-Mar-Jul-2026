cd calculadora 
# relative route
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadora
# absolute route
ls -lai
# l= list a=all i=inode
ls -l -a -i
# the same options but in a separate way
 stat .
File: .
Size: 4096            Blocks: 8          IO Block: 4096   directory
Device: 7,4     Inode: 1573082     Links: 2
Access: (0777/drwxrwxrwx)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
Access: 2026-04-08 21:08:33.033413247 +0000
Modify: 2026-04-08 21:08:31.806413295 +0000
Change: 2026-04-08 21:08:31.806413295 +0000
Birth: 2026-04-08 21:08:31.806413295 +0000
stat .
#This is like asking the directory you're currently in for its full ID.
File: .
#Confirms the name of the file or directory being queried. In this case, the current directory.
Size: 4096 Blocks: 8 IO Block: 4096 directory
#Size: The size occupied by the directory structure (4096 bytes is the standard in Linux).
#Blocks: How many physical disk blocks it is using.
#IO Block: The optimal size for input/output operations.
#Directory: Indicates that the object is a directory and not a regular file.
Device: 7,4 Inode: 1573082 Links: 2
#Device: The identifier of the hardware where the file resides.
#Inode: The unique identification number on the disk.
#Links: How many links point to this location. Since it's a directory, it has at least 2.
Access: (0777/drwxrwxrwx) Uid: (1000/codespace) Gid: (1000/codespace)
#Access: Permissions. 0777 means that everyone can read, write, and execute. It is the most open permission possible.
#Uid/Gid: Shows who the owner is (User ID 1000) and which group it belongs to (Group ID 1000).
Access: 2026-04-08 21:08:33...
#The last time someone accessed the directory or read its contents.
Modify: 2026-04-08 21:08:31...
#The last time the contents were changed
Change: 2026-04-08 21:08:31...
#The last time the metadata
Birth: 2026-04-08 21:08:31...
#The exact date the directory was created.

#first commands
# change directory to home directory from any location of my operative
cd
#change diretory to home directory using absolute route
cd /home/codespace
#change diretory to home directory using ~ shortcut
cd ~
# change directory to home directory using enviroment variable
cd $HOME
