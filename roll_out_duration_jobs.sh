#!/bin/bash
	i=0
	while [ $i -lt 9 ]
	do 
		i=$(( $i + 1 ))
                cp NVP_duration_template.sh  NVP_duration_${i}.sh
                sed -i 's/0template/0'${i}'/g'  NVP_duration_${i}.sh
		sed -i 's/template/'${i}'/g'  NVP_duration_${i}.sh
	done

	while [ $i -lt 23 ]
        do
                i=$(( $i + 1 ))
                cp NVP_duration_template.sh  NVP_duration_${i}.sh
                sed -i 's/0template/'${i}'/g'  NVP_duration_${i}.sh
                sed -i 's/template/'${i}'/g'  NVP_duration_${i}.sh
        done

exit

