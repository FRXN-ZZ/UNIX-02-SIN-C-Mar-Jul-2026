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