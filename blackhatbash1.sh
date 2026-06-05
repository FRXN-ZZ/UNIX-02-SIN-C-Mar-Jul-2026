#!/bin/bash
#!/user/bin/env bash
bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
ps -e -f 
ps -ef
df --human-readable
bash -x
# When we execute these commands, we enter a loop
bash -r
bash script.sh
# Runs the script in your current folder
./blackhatbash1.sh
# Gives you permission to execute it.
chmod u+x blackhatbash1.sh
set-x
set+x