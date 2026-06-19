#!/bin/bash

PUBLISHER="No Starch Press"

print_name() {
    local name
    name="Black Hat Bash"
    echo "${name} by ${PUBLISHER}"
}

print_name

echo "Variable \${name} will not be printed because it is a local variable."

# 1. WHAT'S THE DIFFERENCE BETWEEN GLOBAL AND LOCAL VARIABLES?
# • Global Variables: These are available to the entire program from anywhere. 
#   For example, PUBLISHER' below can be accessed inside or outside functions.
# • Local Variables: These are locked down. By using the 'local' keyword, you restrict 
#   the variable so it's only accessible from within that specific block of code. 
#   If you try to call a local variable outside its function, it just returns empty 
#   because the rest of the script has no idea it exists.
# 2. WHAT'S THE DEAL WITH FUNCTION INVOCATION IN BASH?
# • When you invoke a function (like calling 'print_name' below), Bash executes 
#   the code block and processes any local variables defined inside it. 
#   The big catch here is that once the function finishes running, those local 
#   variables lose their scope entirely. So, any command outside the function 
#   trying to use that local data will just get a blank space.