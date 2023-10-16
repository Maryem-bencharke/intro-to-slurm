#!/bin/bash

# Step 1: Create a Python script (e.g., discriminant.py) containing the functions.
cat <<EOL > discriminant.py
# Function to calculate the discriminant
def calculate_discriminant(a, b, c):
    return b**2 - 4*a*c

# Function to print roots based on the discriminant
def print_roots(a, b, c):
    D = calculate_discriminant(a, b, c)
    if D > 0:
        root1 = (-b + D**0.5) / (2*a)
        root2 = (-b - D**0.5) / (2*a)
        print("Two real roots: {} and {}".format(root1, root2))
    elif D == 0:
        root1 = -b / (2*a)
        print("One real root: {}".format(root1))
    else:
        real_part = -b / (2*a)
        imaginary_part = (abs(D)**0.5) / (2*a)
        print("Complex roots: {} + {}i and {} - {}i".format(real_part, imaginary_part, real_part, imaginary_part)
EOL

# Step 2: Submit the batch jobs
# Job A: Calculate the discriminant
job_a_id=$(sbatch --job-name=JobA --output=JobA.out <<EOL
#!/bin/bash
python discriminant.py -c "from discriminant import calculate_discriminant; print(calculate_discriminant(1, 2, 1))"
EOL)
job_a_id=${job_a_id##* }

# Job B: Print roots depending on Job A's completion
sbatch --job-name=JobB --output=JobB.out --dependency=afterany:$job_a_id <<EOL
#!/bin/bash
python discriminant.py -c "from discriminant import print_roots; print_roots(1, 2, 1)"
EOL
