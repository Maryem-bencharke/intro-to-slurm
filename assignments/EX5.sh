#!/bin/bash
#SBATCH --job-name=sleep_job
#SBATCH --time=5:00    # Specify the time limit in minutes
#SBATCH --output=sleep_job.out

# Long-running task (sleep for 600 seconds)
sleep 600

#then we are going to execute it using:
sbatch sleep_job.sh
#and then execute :
squeue
