FROM bioconductor/bioconductor_docker:RELEASE_3_19

# ENV R_LIBS_SITE=/usr/local/lib/R/site-library

RUN R -e "install.packages('devtools', lib='/usr/local/lib/R/site-library')"
RUN R -e "devtools::install_github('jiabowang/GAPIT3',force=TRUE, lib='/usr/local/lib/R/site-library')"
RUN R -e "BiocManager::install('snpStats', lib='/usr/local/lib/R/site-library')"
COPY packages/LDheatmap_1.0-6.tar.gz /tmp/
RUN R -e "install.packages('/tmp/LDheatmap_1.0-6.tar.gz', repos=NULL, type='source', lib='/usr/local/lib/R/site-library')"
RUN R -e "BiocManager::install('impute', lib='/usr/local/lib/R/site-library')"

# RUN chmod -R a+rX /usr/local/lib/R/site-library
