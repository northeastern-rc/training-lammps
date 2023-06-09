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
#SBATCH --ntasks=4
#SBATCH --mem=8G
#SBATCH --time=00:10:00
#SBATCH --job-name=lammps-bootcamp-exercise-3
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH --array=1-2%1  #execute 10 array jobs, 1 at a time.

# Clean environment and load required modules

module purge
module load discovery
module load openmpi/3.1.2

mpirun -n 4 ../Initial_setup/lammps/src/lmp_mpi -in in.exercise_3_restart_$SLURM_ARRAY_TASK_ID > $SLURM_ARRAY_TASK_ID_restart.log
