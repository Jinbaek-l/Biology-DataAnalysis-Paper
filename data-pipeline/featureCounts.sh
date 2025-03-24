#!/bin/bash

#### Trinity ####

CURRENT=$(pwd)
TRINITY_GTF_FILE=$(basename $(ls 0.Reference/*.gff3))
REF_GTF_FILE=$(basename $(ls 0.Reference/*.gtf))
SPECIES=$(basename $(pwd))
INPUT_DIR_PREFIX="mydir/Livestock/"

REF_INPUT_DIR=$INPUT_DIR_PREFIX/$SPECIES/3.HISAT/

REF_OUTPUT_DIR=$INPUT_DIR_PREFIX/$SPECIES/4.Quantification/

echo $REF_OUTPUT_DIR
mkdir $REF_OUTPUT_DIR

while read line
do

 ref_cmd="featureCounts -p -a $CURRENT/0.Reference/$REF_GTF_FILE -t exon -g gene_id -T 8 -o $REF_OUTPUT_DIR/$line.txt $REF_INPUT_DIR/$line.sorted.bam"


 echo $ref_cmd
 $ref_cmd
done < $1



