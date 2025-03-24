#!/bin/bash

RG_cmd="wget http://ftp.ensembl.org/pub/release-105/fasta/gallus_gallus/dna/Gallus_gallus.GRCg6a.dna.toplevel.fa.gz"

GN_cmd="wget http://ftp.ensembl.org/pub/release-105/gtf/gallus_gallus/Gallus_gallus.GRCg6a.105.gtf.gz"

unzip_RG="gzip -d Gallus_gallus.GRCg6a.dna.toplevel.fa.gz"

unzip_GN="gzip -d Gallus_gallus.GRCg6a.105.gtf.gz"

indexing="hisat2-build -p 8 Gallus_gallus.GRCg6a.dna.toplevel.fa Ref_index"

final_cmd="$($RG_cmd | $GN_cmd | $unzip_RG | $unzip_GN | $indexing)"
$final_cmd

