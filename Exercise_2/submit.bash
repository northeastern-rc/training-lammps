#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --mem=8G
#SBATCH	--partition=short
#SBATCH --time=00:10:00
#SBATCH --job-name=lammps-bootcamp-exercise-2
#SBATCH --output=%j.out
#SBATCH --error=%j.err

# Clean environment and load required modules

module purge
module load discovery
module load openmpi/3.1.2

mpirun -n 4 ../Initial_setup/lammps/src/lmp_mpi -in in.exercise_2_nve
