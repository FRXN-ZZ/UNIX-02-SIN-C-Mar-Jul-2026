# sudo apt update Use the URLs where I'm going to download the libraries
# sudo apt upgrade This command updates all the software already installed on your system to newer versions
# sudo apt install parted This command installs GNU Parted, which is used to create, delete, and manage disk partitions.
# sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n" It displays detailed information about system disks and partitions, separating the output into sections to make it easier to read.
# parted -l GPT/MBR partition table, exact sizes
# lsblk -f Disk structure, UUIDs, available space
# mount | grep Where each device is mounted
# && Run the next command ONLY if the previous one was successful
# -e Interpret special characters 




