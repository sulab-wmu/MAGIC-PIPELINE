#!/usr/bin/bash


cd /share/pub/likai/Star_protocols/scripts/06
for file in $(ls 06_1_SplitVcf_Chr*)
do
        echo $file
        sbatch --mem=20G $file
done