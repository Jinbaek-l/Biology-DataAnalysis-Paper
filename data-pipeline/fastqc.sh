#!/bin/bash

CURRENT=$(pwd)
SPECIES=$(basename $(pwd))

INPUT_DIR_PREFIX="mydir/Livestock"
OUTPUT_DIR_PREFIX="mydir/Fastqc_statistic"

REF_INPUT_DIR=$INPUT_DIR_PREFIX/$SPECIES/1.Data
REF_OUTPUT_DIR=$OUTPUT_DIR_PREFIX/$SPECIES

echo $REF_OUTPUT_DIR
mkdir $REF_OUTPUT_DIR

for file in $REF_INPUT_DIR/*
do
        ref_cmd="fastqc -o $REF_OUTPUT_DIR/ $file"
        echo $ref_cmd
        $ref_cmd
done 

