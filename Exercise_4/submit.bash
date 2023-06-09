#!/bin/bash

#####Use after training##############
##SBATCH -p short
#####################################

#####Use during training###############
#SBATCH --partition=reservation
#SBATCH --reservation=bootcamp_cpu_2023
#######################################

#####Use during &after training######
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem=8G
#SBATCH --time=00:10:00
#SBATCH --job-name=lammps-bootcamp-exercise-4
#SBATCH --output=%j.out
#SBATCH --error=%j.err

# Clean environment and load required modules

module purge
module load discovery
module load openmpi/3.1.2

for num_ntasks in 1 2 4 8 12 16
do
  mpirun -n $num_ntasks ../Initial_setup/lammps/src/lmp_mpi -in in.exercise_4 > output_$num_ntasks.log
done
