#!/bin/bash

CURRENT=$(pwd)
SPECIES=$(basename $(pwd))

INPUT_DIR_PREFIX="mydir/Livestock/"

REF_INPUT_DIR=$INPUT_DIR_PREFIX/$SPECIES/3.HISAT/

REF_OUTPUT_DIR=$INPUT_DIR_PREFIX/$SPECIES/6.Samtools

echo $REF_OUTPUT_DIR
mkdir $REF_OUTPUT_DIR

while read line
do
       	ref_cmd="samtools stats -@ 32 $REF_INPUT_DIR/$line.sorted.bam"
	echo $ref_cmd
	$ref_cmd > $REF_OUTPUT_DIR/$line.stats
done < $1

