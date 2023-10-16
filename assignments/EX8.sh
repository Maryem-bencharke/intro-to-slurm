#Submit a job to a specific partition (if available) using the --partition flag.
#to knwo the exact partition that exist run in your cmd:
sinfo
sbatch --partition=gpu ex6.sh
#Submitted batch job 5842773

#submit node:
sbatch --nodelist=node13 ex6.sh
#Submit a job with excluding nodes node02,node03,node15.
sbatch --exclude=node02,node03,node15 ex6.sh

