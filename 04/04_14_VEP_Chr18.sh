#!/usr/bin/bash


cd /share/pub/likai/Star_protocols
source /share/apps/anaconda/bin/activate /share/apps/anaconda/envs/vep/
vep -i 04_sampleqc/cohort_combine_snpQC_sampleQC_fix.chr18.recode.vcf --offline --cache --dir_cache /share/apps/vep/vep_cache/ --plugin CADD,/share/apps/vep/Plugins/whole_genome_SNVs.tsv.gz,/share/apps/vep/Plugins/InDels.tsv.gz --plugin LoF,loftee_path:/share/apps/vep/Plugins/loftee/loftee/,human_ancestor_fa:/share/apps/vep/Plugins/loftee/human_ancestor.fa.gz,conservation_file:/share/apps/vep/Plugins/loftee/phylocsf_gerp.sql,gerp_file:/share/apps/vep/Plugins/loftee/GERP_scores.final.sorted.txt.gz --plugin SpliceAI,snv=/share/apps/vep/vcf/spliceai_scores.raw.snv.hg19.vcf.gz,indel=/share/apps/vep/vcf/spliceai_scores.raw.indel.hg19.vcf.gz --dir_plugins /share/apps/vep/Plugins --custom /share/apps/vep/vcf/gnomad.genomes.r2.1.1.sites.vcf.gz,gnomADg,vcf,exact,0,AC,AF,AF_afr,AF_amr,AF_asj,AF_eas,AF_fin,AF_nfe,AF_oth --fasta /share/pub/likai/genome/hg19/hg19_1-22_XY.fasta --force_overwrite --sift b --polyphen b --regulatory --numbers --ccds --hgvs --symbol --xref_refseq --canonical --protein --biotype --af --af_1kg --af_esp --af_gnomad --max_af --pick --vcf --output_file 04_sampleqc/cohort_combine_snpQC_sampleQC_fix_vep.chr18.vcf
