#!/usr/bin/bash


cd /share/pub/likai/Star_protocols
source /share/pub/likai/Software/anaconda3/bin/activate /share/pub/likai/Software/anaconda3/envs/bio/
vcffixup 06_variantannotation/cohort_combine_snpQC_sampleQC.chr5.recode.vcf > 06_variantannotation/cohort_combine_snpQC_sampleQC_fix.chr5.recode.vcf

