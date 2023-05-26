#!/bin/bash
#SBATCH -N 1
#SBATCH -p short
#SBATCH -n 12

# Setting up the modules for the build
module purge
module load discovery
module load openmpi/4.0.5

Setting current directory to be current working directory
cd $PWD 

# Downloading LAMMPS and building mpi version of LAMMPS
wget https://github.com/lammps/lammps/archive/refs/tags/stable_23Jun2022_update4.tar.gz
tar -xvf stable_23Jun2022_update4.tar.gz
rm stable_23Jun2022_update4.tar.gz
mv lammps-stable_23Jun2022_update4/ lammps/
cd lammps
cd src
make -j mpi
