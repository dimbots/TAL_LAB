#!/bin/bash

for bam in $(ls *.bam)


	do
	bw=$(echo $bam | cut -d "." -f1 | awk '{print $1".bw"}')
	echo $bw

	echo "bamCoverage -b $bam -o $bw -p 8"
	done
	
