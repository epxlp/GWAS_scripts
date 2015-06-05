#!/bin/bash

i=0
while [ $i -lt 23 ]
do
	i=$(( $i + 1 ))
	qsub  ALSPAC_mums_GWAS_${i}.sh

done

exit
