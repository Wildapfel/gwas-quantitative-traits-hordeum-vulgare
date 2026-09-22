#! /bin/bash

#
# Pass SNPs, might change that, to also apply for all markers
#
SNPs=$1

IMAGE=r-gwas
VOL=$(pwd)
WD=/mnt

R_SCRIPT=scripts/LD_heatmap.R
GENO_LOCATION=data/genotype/genotype_location.csv
GENO_KNN=data/genotype/genotype_matrix_knn.csv
OUT_DIR=data/LD

#
# Simple docker runner for LD heatmap
#
mkdir -p $OUT_DIR
docker run \
    -v $VOL:/mnt:z \
    -w $WD \
    $IMAGE \
    Rscript $R_SCRIPT \
        $GENO_LOCATION \
        $GENO_KNN \
        $SNPs \
        $OUT_DIR