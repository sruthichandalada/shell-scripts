#To print the arguments passed to the script in reverse order
#!/bin/bash
args=("$@")
count=$#

for ((i=count-1; i>=0; i--))
do
    echo "$((args[i]))"
done
