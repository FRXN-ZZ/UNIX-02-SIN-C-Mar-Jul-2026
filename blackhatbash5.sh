#!/bin/bash
#!/user/bin/env bash
touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "the lzl command failed"

echo "Hello World!" > output.txt
cat output.txt
#Hello World!
echo "Goodbye!" >> output.txt
cat output.txt
#Hello World! 
#Goodbye!