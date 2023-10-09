#!/bin/bash
#SBATCH --job-name=my_job
#SBATCH --output=output.txt

echo "Hello, SLURM!"

sbatch my_job.sh
squeue -u maryem.bencharke
