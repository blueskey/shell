#!/bin/sh

#filename:time_take.sh

start=$(date +%s)

du -sh;
sudo find / name 'mysql' > /dev/null

end=$(date +%s)
difference=$((end -start ))
echo Time taken to execute commands is $difference seconds.
