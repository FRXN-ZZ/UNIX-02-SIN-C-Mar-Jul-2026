#!/usr/bin/bin/env bash
# All this script does is create a directory, create a file
# within the directory, and then list the contents of the directory.
set -x
mkdir mydirectory
touch mydirectory/myfile
ls -1 mydirectory
set +x