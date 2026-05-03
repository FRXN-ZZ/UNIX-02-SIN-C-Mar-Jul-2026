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