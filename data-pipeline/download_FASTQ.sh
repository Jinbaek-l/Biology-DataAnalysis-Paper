#!/bin/bash

while read line
do
        prefetch -O ./ -X 999999999 $line
        cd $line
        if [ -e $line.sra ]; then
                parallel-fastq-dump -s $line.sra -O ../1.Data --tmpdir ../1.Data --split-files --gzip && rm $line.sra
        else
                echo '[ERROR]' $line 'apparently not successfully loaded' && exit 1
        fi
        cd ..
        rm -rf $line
done < $1

