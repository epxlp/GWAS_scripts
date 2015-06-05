#!/bin/bash
#
#PBS -l walltime=24:00:00
#
module add apps/snptest.2.5.0
snptest_v2.5 -data /panfs/panasas01/shared/alspac/studies/latest/alspac/genetic/variants/arrays/gwas/imputed/1000genomes/released/27Feb2015/data/genotypes/dosage/data_chr0template.gz \
                   PATH_TO/MOTHERS.sample \
             -exclude_samples /panfs/panasas01/shared/alspac/deprecated/alspac_combined_1kg_20140424/docs/Unrelateds/MOTHER_UNRELATED_SNPTEST.txt \
             -assume_chromosome template \
             -frequentist 1 \
             -method expected \
	     -pheno PHENO \
             -cov_names COVARS \
             -sex_column sex \
             -log PATH_TO.log \
             -o PATH_TO.out 
