#!/usr/bin/bash


cd /share/pub/likai/Star_protocols
software/vcftools/bin/vcftools --vcf 04_sampleqc/cohort_combine_snpQC_sampleQC.recode.vcf --chr chr8 --recode --recode-INFO-all --out 04_sampleqc/cohort_combine_snpQC_sampleQC.chr8

