#!/bin/bach
#SBATCH --job-name=test_job
#SBATCH --time=5:00
#SBATCH --output=test_output.log
#SBATCH --error=test_error.log

# Your job commands go here
sleep 600  # Simulating a long-running task
