# BASIC COMMAND SYNTAX
ls
# Description: Lists directory contents.

# COMMANDS WITH ARGUMENTS
Documents
# Description: Lists the contents of the Documents directory.
aptitude moo
# Description: A package management command with a funny easter egg argument.

# COMMANDS WITH OPTIONS 
ls -l
# Description: Lists contents in long format
ls -r
# Description: Lists contents in reverse alphabetical order.

# COMBINING OPTIONS
ls -l -r OR ls -lr
# Description: Long listing in reverse order.

# MULTIPLE OPTIONS WITH ARGUMENTS
aptitude -v moo
# Description: Verbose easter egg response.
aptitude -vv moo
# Description: More verbose response.
aptitude -vvv moo
# Description: Even more verbose response 

# PRINT WORKING DIRECTORY 
pwd
# Description: Displays the full path of the current directory.

# DIRECTORY NAVIGATION (cd)
# Navigation using absolute and relative paths.
# 1. Setup: Creating the directory structure shown in the course
mkdir -p Documents/School/Art
# 2. Relative Path: Move to 'Documents' from the current home directory
cd Documents
pwd
# 3. Absolute Path: Move to the root directory
cd /
pwd
# 4. Absolute Path: Return to the home directory using a full path
cd /home/codespace
# 5. Relative Path: Nested navigation
cd Documents/School/Art
pwd
# 6. Step-by-step Navigation: Achieving the same result with multiple commands
cd /home/codespace/Documents
cd School
cd Art
pwd

# COMMAND LINE SHORTCUTS
# Using shortcuts for parent, current, and home directories.

# 1. Double Dot (..): Move to the parent directory
# If we are in Art, this moves us up to School
cd /home/codespace/Documents/School/Art
cd ..
pwd

# 2. Single Dot (.): Represents the current directory
# Often used with other commands, though less common with just 'cd'
cd .
pwd

# 3. Tilde (~): Represents the user's home directory
# Use it to return home instantly from anywhere
cd ~
pwd

# FILE LISTING AND SORTING (ls)
# Using 'ls' to list directory contents with various sorting options.
# 1. Basic listing: List contents of the current directory
ls
# 2. Long listing: Show detailed information (permissions, owner, size, timestamp)
ls -l /var/log/
# 3. Sort by Time (-t): Show the newest files first
ls -lt /var/log
# 4. Sort by Size (-S): Show the largest files first
ls -l -S /var/log
# 5. Reverse Sort (-r): Invert the order (for exampol, smallest first or oldest first)
ls -lSr /var/log
# 6. Reverse Alphabetical: Basic listing in reverse order
ls -r /var/log

# ADMINISTRATIVE ACCESS (su and sudo)
# Description: Switching to root user or executing commands with elevated privileges.
# 1. Using 'su' to switch to root user (full shell login)
# Use 'exit' to return to sysadmin account
exit 
# 2. Command 'sl' (Steam Locomotive) - requires privileges in the course
sl 
# 3. Running 'sl' as root using 'su'
su -
sl
exit
# 4. Using 'sudo' to run a single command with root privileges
# Advantage: Does not change your current shell/user permanently.
sudo sl
# 5. Switching to another user with sudo -u
sudo -u root sl

# FILE PERMISSIONS (ls -l)
# Viewing and understanding file permissions, ownership, and types.
# 1. Setup: Create a directory and a dummy script for practice
mkdir -p ~/Documents
echo "echo 'Hello!'" > ~/Documents/hello.sh
# 2. Change directory to Documents
cd ~/Documents
# 3. View detailed information and permissions of a specific file
# The output format is: [Type][Owner Perms][Group Perms][Others Perms]
ls -l hello.sh

# CHANGING FILE PERMISSIONS (chmod) 
# Using the symbolic method to change access modes.
# 1. Navigate to the working directory
cd ~/Documents
# 2. Create the hello.sh script as seen in the course
echo "echo 'Hello World!'" > hello.sh
# 3. Check current permissions (Verify it lacks execute 'x' permission)
ls -l hello.sh
# 4. Attempt to run the script without execute permission (This will fail)
./hello.sh || echo "Execution failed as expected: Permission denied"
# 5. Grant execute permission to the owner (u) using the symbolic method (+)
# Symbols used: u (user/owner), + (add), x (execute)
chmod u+x hello.sh
# 6. Verify the change in permissions
ls -l hello.sh
# 7. Run the script from the current directory using ./
./hello.sh

# CHANGING FILE OWNERSHIP (chown) 
# Changing the owner of a file using 'chown'.
# 1. Navigate to the Documents directory
cd ~/Documents
# 2. List all files to verify current ownership (usually sysadmin or codespace user)
ls -l
# 3. Change the owner of 'hello.sh' to 'root'
# Administrative access (sudo) is required to change ownership.
sudo chown root hello.sh
# 4. Verify the owner change in the third column of the output
ls -l hello.sh
# 5. Try to execute the script as a regular user (This will fail now)
# Since the owner is 'root' and permissions were 'u+x', only the owner (root) can execute it.
./hello.sh || echo "Execution failed: Only the owner (now root) has execute permissions"
# 6. Run the script using 'sudo' to act as the root user
sudo ./hello.sh

# FILE VISUALIZATION COMMANDS 
# 1. Setup: Create sample files to visualize
cd ~/Documents
printf "1 retriever\n2 badger\n3 bat\n4 wolf\n5 eagle\n" > animals.txt
# Creating alpha.txt with 26 lines (A to Z) for testing head/tail
echo {A..Z} | tr ' ' '\n' | awk '{print $1 " is for Something"}' > alpha.txt
# 2. Use 'cat' to view small files
# 'cat' (concatenate) displays the entire content of a file.
cat animals.txt
# 3. Use 'head' to view the top of a file
# By default, 'head' shows the first 10 lines.
head alpha.txt
# 4. Use 'tail' to view the bottom of a file
# By default, 'tail' shows the last 10 lines.
tail alpha.txt
# 5. Use the '-n' option to specify a custom number of lines
# Display the first 5 lines
head -n 5 alpha.txt
# Display the last 5 lines
tail -n 5 alpha.txt

# COPYING FILES (cp) 
# Description: Copying files from one location to another.
# 1. Navigate to the Documents directory
cd ~/Documents
# 2. Copy the system password file to the current directory
# Syntax: cp [SOURCE] [DESTINATION]
# The '.' represents the current working directory.
cp /etc/passwd .
# 3. List contents to verify the file was copied successfully
ls

# PERMISSION REQUIREMENTS (Theory) 
# To copy a file, you need:
# - Execute (x) permission on the source directory.
# - Read (r) permission on the file itself.
# - Write (w) and Execute (x) permissions on the destination directory.