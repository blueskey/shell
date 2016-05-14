#!/bin/sh

#列出最使用的10条命令

printf "COMMAND\tCOUNT\n";

cat ~/.bash_history |awk '{ list[$1]++; } \
    END{
        for(i in list)
            {
                printf("%s\t%d\n",i,list[i]);
            }
        }' | sort -nrk 2 | head


