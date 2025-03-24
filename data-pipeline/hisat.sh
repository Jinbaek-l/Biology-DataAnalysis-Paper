#!/bin/bash

left_fix="_1.fastq.gz"
right_fix="_2.fastq.gz"

prefix="hisat"
species_name=$(basename $(pwd))

OUTPUT_PREFIX="mydir/Livestock/$species_name"


DATA_DIR="1.Data"
mkdir -p $OUTPUT_PREFIX

BAM_DIR_REF=$OUTPUT_PREFIX/3.HISAT/

mkdir $BAM_DIR_REF
LOG_DIR=$OUTPUT_PREFIX/Log/


mkdir $LOG_DIR


#### Make index file ####
while read line
do
#### hisat2 using reference genome ####
 cmd="hisat2 -p 16 -x 0.Reference/Ref_index -1 $DATA_DIR/$line$left_fix -2 $DATA_DIR/$line$right_fix 2> $LOG_DIR/$line.log"
 sam_cmd="samtools view -Sb -@ 16"
 sorted_cmd="samtools sort -o $BAM_DIR_REF/$line.sorted.bam -@ 16"
 final_cmd="$($cmd | $sam_cmd | $sorted_cmd)"
 echo $final_cmd


done < $1
