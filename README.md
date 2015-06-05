# GWAS_scripts

This is where I will post the most recent GWAS scripts

<b>FILE DESCRIPTIONS:<\b>

ALSPAC_mums_GWAS_template.sh    SNPTEST GWAS template script for ALSPAC mums
roll_out_gwas.sh                Script to copy template to all 23 scripts, 1 per chromosome
run_all_gwas.sh                 Script to submit all the individual chr jobs created using roll_out_gwas.sh

FILE DETAILS:

ALSPAC_mums_GWAS_template.sh
STRINGS TO EDIT:
PATH_TO/MOTHERS.sample -> change to relevant path for current .sample phenotype file
PHENO -> change to column name for phenotpye
COVERS -> change to column names for covariates
PATH_TO.log -> change to path where results will be stored
PATH_TO.out -> change to path where SNPTEST output will be stored

roll_out_gwas.sh
STRINGS TO EDIT:
ALSPAC_mums_GWAS_ -> change to new template filename as necessary

run_all_gwas.sh
STRINGS TO EDIT:
ALSPAC_mums_GWAS_ -> change to new filename as necessary
