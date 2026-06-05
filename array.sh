#!/bin/bash
#!/user/bin/env bash
# Sets an array 
IP_ADDRESSES=(191.168.1.1 192.168.1.2 192.168.1.3) 
# Prints all elements in the array 
set -x
echo "${IP_ADDRESSES[*]}" 
# Prints only the first element in the array 
set +x
echo "${IP_ADDRESSES[-1]}"
chmod u+x array.sh
#./array.sh