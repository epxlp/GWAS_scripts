#!/bin/bash
#
#PBS -l walltime=2:00:00
#
cd WORKING/DIRECTORY

for i in {1..23}
do
 grep rs SNPTEST_${i}.out | 
 awk 'NR==1{print "SNPID", "Chr", "position", "coded_all", "noncoded_all", "Beta", "SE", "Pval", "AF_coded_all", "info"}; 
      NR>1 {print $2, $3, $4, $6, $5, $44, $45, $42, ($15+(2*$16))/(2*$18), $9}' |
 gzip > RESULTS.chr${i}.YYYMMDD.gz 
done

zcat RESULTS.chr1.YYYYMMDD.gz | 
head -1 > header.tmp

for i in {1..23}
do
 zcat RESULTS.chr${i}.YYYYMMDD.gz | 
 sed '0,/SNPID/d' > chr${i}.tmp
 cat header.tmp chr${i}.tmp >tmp.tmp
 rm header.tmp
 mv tmp.tmp header.tmp 
done

gzip header.tmp
mv header.tmp.gz RESULTS.YYYYMMDD.gz

# Filter results by MAF 0.01 and INFO 0.3
zcat RESULTS.YYYYMMDD.gz | awk 'NR==1 || ($9>0.01 && $9<0.99 && $10>0.3)' | gzip > RESULTS_filtered.YYYYMMDD.gz

rm *.tmp
