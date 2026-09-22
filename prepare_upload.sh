#!/bin/bash

PATH_PROJECT=/var/home/max-inspiron/Workbench/projects/quantitative_GWAS_hordeum_vulgare/
DEST=./

rsync -av \
    --exclude=*.xlsx \
    $PATH_PROJECT \
    $DEST

python anonymous_data.py