#!/bin/sh

#PBS -l walltime=72:00:00
#PBS -l select=1:ncpus=32:mem=128gb:avx2=true

module load anaconda3/personal
source activate fasttree_env

fasttree -gtr -nt < /rds/general/project/fisher-aspergillus-results/live/SNPs/finalSNPs/all_isolates.fa > /rds/general/project/fisher-aspergillus-results/live/SNPs/finalSNPs/tree_all_afum
