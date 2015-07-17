# GWAS_scripts

This is where I will post my GWAS scripts

<b>FILE DESCRIPTIONS:</b>

<b>ALSPAC_mums_GWAS_template.sh</b>    SNPTEST GWAS template script for ALSPAC mums<br>
<b>roll_out_gwas.sh </b>               Script to copy template to all 23 scripts, 1 per chromosome<br>
<b>run_all_gwas.sh </b>                Script to submit all the individual chr jobs created using roll_out_gwas.sh<br>
<b>SNPTEST_format_output.sh</b>        Example script to convert SNPTEST output to single GWAS summary file<br>
<b>qq_manhattan.R</b>                  R script to make manhattan and qq plot<br>

<b>FILE DETAILS:</b>

<b>ALSPAC_mums_GWAS_template.sh</b><br>
strings to edit:<br>
PATH_TO/MOTHERS.sample -> change to relevant path for current .sample phenotype file<br>
PHENO -> change to column name for phenotpye<br>
COVARS -> change to column names for covariates<br>
PATH_TO.log -> change to path where results will be stored<br>
PATH_TO.out -> change to path where SNPTEST output will be stored<br>

<b>roll_out_gwas.sh</b><br>
strings to edit:<br>
ALSPAC_mums_GWAS_ -> change to new template filename as necessary

<b>run_all_gwas.sh</b><br>
strings to edit:<br>
ALSPAC_mums_GWAS_ -> change to new filename as necessary

<b>SNPTEST_format_output.sh</b><br>
This script is for a particular project and so columns extracted using awk and header names may need changing<br>
This script includes code for generating effect_allele_freq not outputted by SNPTEST as standard<br>
strings to edit:<br>
WORKING/DIRECTORY -> change to working directory that contains SNPTEST output<br>
SNPTEST -> change to name of your SNPTEST output files<br>
RESULTS -> Often analysis plans request a specfic naming convention for files<br>
YYYYMMDD -> its a good idea to include the date in the final file name<br>

<b>qq_manhattan.R</b><br>
This R script uses qqman package.<br>
This package requires R-3.0.0 or later. On bluecrystal3 use: module load languages/R-3.0.2<br>
Install package using: install.package(qqman)<br>
Change read.table file to own filename<br>
Define columns with relevant data in 'DATA' object<br>
Requires X11 tunnel to view plots<br>

