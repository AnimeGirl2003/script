#!/bin/bash
#PBS -N MyJob
#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:05:00

cd $PBS_O_WORKDIR

# Load required modules
ml icc

./sript.sh