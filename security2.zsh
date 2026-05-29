# View the current primary group
id
id -gn    # only the name of the primary group
# Create a file and see which group it inherits
touch ~/test_inherited_group.txt
ls -la ~/test_inherited_group.txt
# The group is the user's primary group

# Show the current group
id -gn
echo "Current group: $(id -gn)"
# Create a file before using newgrp
touch ~/before_newgrp.txt
ls -la ~/before_newgrp.txt

# Show the current group
id -gn
echo "Current group: $(id -gn)"
# Create a file before newgrp
touch ~/before_newgrp.txt
ls -la ~/before_newgrp.txt

#Installs additional essential system utilities for Linux (such as extra multi-user administration tools).
apt install util-linux-extra 
#Creates a new system group named desarrolladores (developers).
groupadd desarrolladores
#Switches your current shell session's primary group to desarrolladores.
newgrp desarrolladores 
#Prints the name of your newly active primary group.
id -gn
#Outputs a text confirmation showing the active group you just switched to.
echo "New active group: $(id -gn)"

# Displays the PID (Process ID) of the current shell
# Useful to confirm that 'newgrp' spawned a new subshell (different PID than before)
echo $$
# Creates an empty file in the user's home directory to verify
# that newly created files inherit 'desarrolladores' as the owning group
touch ~/after_newgrp.txt
# Lists the detailed attributes of the newly created file (permissions, owner, group, date)
ls -la ~/after_newgrp.txt