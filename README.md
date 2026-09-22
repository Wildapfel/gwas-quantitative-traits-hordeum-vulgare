<div align="center">
<img src="./.images/gwas.jpeg" width="100%" height="200">

</div>
<h1>
    Identifying QTL's on Chromosome 2 of <i>Hordeum vulgare</i> for marker assisted selection in barley population using GAPIT (GWAS)
</h1>


 
    Identifying QTL's on Chromosome 2 of Hordeum vulgare for marker assisted selection in barley population using GAPIT (GWAS)

Identifying QTL's on Chromosome 2 of Hordeum vulgare for marker assisted selection in barley population using GAPIT (GWAS)
Identifying QTL's on Chromosome 2 of Hordeum vulgare for marker assisted selection in barley population using GAPIT (GWAS)
In this project, I applied GAPIT to explore genotype-phenotype relationships and identify potential QTLs, demonstrating my proficiency in GWAS workflows.

### Data

This data was provided during an exercise series in Population Genetics and Quantitative Genetics and includes phenotype trait data and genotype data. It consists of 120 breedling lines of barley with 93 known gene markers.

## Project Structure

```
quantitative_GWAS_hordeum_vulgare/  
├── data/                   # The data 
├── image/                  # image for the README
├── notebooks/              # Chronological Pipeline
├── notes/                  # Skretchen with xournal
├── report/                 # Tex document, output tables and plots
├── scripts/                # executables
├── environment.yml         # Base environment   
└── README.md               # Just the README  
```
## Install docker (R image)

```bash

cd docker/r-bioinfo
docker build -t r-gwas -f r-gwas.dockerfile .
cd .. && cd ..
```
## Run the GAPIT script using docker image

```bash

```
