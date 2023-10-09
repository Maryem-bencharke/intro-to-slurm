#!/bin/bash
#SBATCH --job-name=my_job
#SBATCH --output=output.txt
#SBATCH --cpus-per-task=4     # Request 4 CPU cores
#SBATCH --mem=4G             # Request 4GB of memory

sbatch my_job2.sh

scontrol show job 5841114
