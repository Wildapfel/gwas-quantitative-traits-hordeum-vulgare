#! /bin/bash

#
# Simple docker runner for GAPIT.
# Run that from the project folder.
#
IMAGE=r-gwas
VOL=$(pwd)
WD=/mnt

R_SCRIPT=scripts/GWAS_GAPIT.R
PHENO=data/phenotype/phenotype_matrix.csv
GENO_LOCATION=data/genotype/genotype_location.csv
GENO_KNN=data/genotype/genotype_matrix_knn.csv
OUT_DIR=data/gapit

mkdir -p data/gapit
docker run \
    -v $VOL:/mnt:z \
    -w $WD \
    $IMAGE \
    Rscript $R_SCRIPT \
            $PHENO \
            $GENO_LOCATION \
            $GENO_KNN \
            $OUT_DIR