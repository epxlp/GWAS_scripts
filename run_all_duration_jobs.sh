#!/bin/bash

i=0
while [ $i -lt 23 ]
do
	i=$(( $i + 1 ))
	qsub  NVP_duration_${i}.sh

done

exit
