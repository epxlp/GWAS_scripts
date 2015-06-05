#!/bin/bash
	i=0
	while [ $i -lt 9 ]
	do 
		i=$(( $i + 1 ))
                cp ALSPAC_mums_GWAS_template.sh   ALSPAC_mums_GWAS_${i}.sh
                sed -i 's/0template/0'${i}'/g'   ALSPAC_mums_GWAS_${i}.sh
		sed -i 's/template/'${i}'/g'   ALSPAC_mums_GWAS_${i}.sh
	done

	while [ $i -lt 23 ]
        do
                i=$(( $i + 1 ))
                cp  ALSPAC_mums_GWAS_template.sh   ALSPAC_mums_GWAS_${i}.sh
                sed -i 's/0template/'${i}'/g'   ALSPAC_mums_GWAS_${i}.sh
                sed -i 's/template/'${i}'/g'   ALSPAC_mums_GWAS_${i}.sh
        done

exit

