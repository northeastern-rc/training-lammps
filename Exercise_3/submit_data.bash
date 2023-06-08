#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --mem=8G
#SBATCH	--partition=short
#SBATCH --time=00:10:00
#SBATCH --job-name=lammps-bootcamp-exercise-3
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH --array=1-2%1  #execute 10 array jobs, 1 at a time.

# Clean environment and load required modules

module purge
module load discovery
module load openmpi/3.1.2

mpirun -n 4 ../Initial_setup/lammps/src/lmp_mpi -in in.exercise_3_data_$SLURM_ARRAY_TASK_ID > $SLURM_ARRAY_TASK_ID.log
