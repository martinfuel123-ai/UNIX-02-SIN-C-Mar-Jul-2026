#!/bin/bash 
touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "el comando lzl falló"

echo "Hello World!" > output.txt
cat output.txt
echo "Goodbye!" >> output.txt
 cat output.txt