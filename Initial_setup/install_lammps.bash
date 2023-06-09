#!/bin/bash

#####Use after training##############
##SBATCH -p short
#####################################

#####Use during training###############
#SBATCH --partition=reservation
#SBATCH --reservation=bootcamp_cpu_2023
#######################################

#####Use during &after training######
#SBATCH -N 1
#SBATCH -n 12

# Setting up the modules for the build
module purge
module load discovery
module load openmpi/3.1.2

# Setting current directory to be current working directory
cd $PWD 

# Downloading LAMMPS and building mpi version of LAMMPS
wget https://github.com/lammps/lammps/archive/refs/tags/stable_23Jun2022_update4.tar.gz
tar -xvf stable_23Jun2022_update4.tar.gz
rm stable_23Jun2022_update4.tar.gz
mv lammps-stable_23Jun2022_update4/ lammps/
cd lammps
cd src
make -j mpi
