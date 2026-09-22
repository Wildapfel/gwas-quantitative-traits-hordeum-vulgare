<div align="center">
<img src="./.images/gwas.jpeg" width="100%" height="200">
</div>
    <h1> Identifying QTL's on Chromosome 2 of <i>Hordeum vulgare</i> for marker assisted selection in barley population using GAPIT (GWAS)</h1>

In this project, I applied GAPIT to explore genotype-phenotype relationships and identify potential QTLs, demonstrating my proficiency in GWAS workflows.

<details>
<summary>Project Structure</summary>

```
quantitative_GWAS_hordeum_vulgare/  
├── data/                   # Anonymized Data 
├── docker/                 # R Image Build
├── notebooks/              # Chronological Pipeline
├── notes/                  # Personal Notes
├── report/                 # TeX Document with figures
├── scripts/                # GWAS and LD Scripts
├── src/                    # Source Code
├── .env                    # Some Path Variable declarations (PYTHONPATH)
├── environment.yml         # Base environment   
├── Makefile                # make
└── README.md               # Overview
```
</details>

## Data
This data was provided during an exercise series in Population Genetics and Quantitative Genetics and includes phenotype trait data and genotype data. It consists of 120 breeding lines of barley with 93 known gene markers.This data was anonymized before uploading to GitHub, meaning I removed the raw data, and removed measurements in .csv files that I produced. 

## Prerequisite for Execution 
- Install environment  
```bash
micromamba env create --file environment.yml
```
- Install docker (R image)
```bash
cd docker/r-bioinfo
docker build -t r-gwas -f r-gwas.dockerfile .
cd .. && cd ..
```

## Report
- Jump directly to the [report](https://github.com/Wildapfel/gwas-quantitative-traits-hordeum-vulgare/blob/master/report/report_GWAS.pdf) 