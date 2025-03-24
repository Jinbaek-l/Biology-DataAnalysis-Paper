#!/bin/bash

CURRENT=$(pwd)
SPECIES=$(basename $(pwd))

INPUT_DIR_PREFIX="mydir/Livestock/"
REF_INPUT_DIR=$INPUT_DIR_PREFIX/$SPECIES/3.HISAT/
REF_OUTPUT_DIR=$INPUT_DIR_PREFIX/$SPECIES/6.Samtools

while read line
do
    trim_cmd="java -jar /mydir/trimmomatic-0.39.jar PE -trimlog trimlog.txt SRR42_1.fastq.gz SRR42_2.fastq.gz output_forward_paired.fastq.gz output_forward_unpaired.fastq.gz output_reverse_paired.fastq.gz output_reverse_unpaired.fastq.gz ILLUMINACLIP:/mydir/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36"
	$ref_cmd 
done < $1

