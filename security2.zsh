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