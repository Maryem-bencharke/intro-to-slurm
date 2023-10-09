vim config.txt
ArayTaskID   SampleName        Sex
1             Ahmed             M
2             Amine             M
3             Amal              F
4             Samir             M
5             Ali               M
6             Camelia           F
7             Myriam            F
8             Radouan           M
9             Ikram             F
10            Sara              F
vim output.txt
vim process_tasks.sh
#!/bin/bash

# Read the config file and store the data in an array
mapfile -t lines < config.txt

# Function to process a single task
process_task() {
  local line="$1"
  local task_id sex sample_name

  # Split the line into columns
  IFS=$'\t' read -r -a columns <<< "$line"
  task_id="${columns[0]}"
  sample_name="${columns[1]}"
  sex="${columns[2]}"

  # Print the task information to output.txt
  echo "This is array task $task_id, the sample name is $sample_name and the sex is $sex." >> output.txt
}

# Process tasks in parallel with a maximum of 2 tasks at once
for ((i = 1; i <= ${#lines[@]}; i += 2)); do
  # Run tasks in parallel
  process_task "${lines[i-1]}" &
  process_task "${lines[i]}" &

  # Limit the number of parallel tasks to 2
  wait

  # Uncomment the following line to limit the total number of tasks executed
  # if [[ $i -ge 10 ]]; then break; fi
done

# Wait for any remaining background tasks to finish
wait

./process_tasks.sh
cat output.txt

#!/bin/bash

# Define the maximum number of tasks to run at once
max_tasks=2

# Read the config file and store the data in an array
mapfile -t lines < config.txt

# Function to process a single task
process_task() {
  local line="$1"
  local task_id sex sample_name

  # Split the line into columns
  IFS=$'\t' read -r -a columns <<< "$line"
  task_id="${columns[0]}"
  sample_name="${columns[1]}"
  sex="${columns[2]}"

  # Print the task information to output.txt
  echo "This is array task $task_id, the sample name is $sample_name and the sex is $sex." >> output.txt
}

# Loop through tasks and run them in groups of $max_tasks
for ((i = 0; i < ${#lines[@]}; i += max_tasks)); do
  end=$((i + max_tasks - 1))
  for ((j = i; j <= end; j++)); do
    if [[ $j -lt ${#lines[@]} ]]; then
      process_task "${lines[j]}" &
    fi
  done

  # Wait for the current group of tasks to finish
  wait
done
