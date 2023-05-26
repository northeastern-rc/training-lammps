# LAMMPS on HPC
This repository contains training material for LAMMPS on HPCs training module. 

## What is in each exercise directory/file
* Exercise_1 - LAMMPS input examples for NVE, NVT, and NPT simulations using Lennard-Jones potential
* Exercise_2 - LAMMPS input examples for computes
* Exercise_3 - LAMMPS input examples for checkpointing with restart and data files
* Exercise_4 - LAMMPS input examples for benchmarking for optimal ntask configuration
* Initial_setup - Installation script for LAMMPS using make
* commands_for_exercises.txt

## Steps to download and use the repository on the HPC
1. Login to a Discovery shell or use the [Discovery OnDemand interface](https://rc-docs.northeastern.edu/en/latest/first_steps/connect_ood.html).

2. Enter your desired directory within Discovery and download the training material. For example:
```bash
cd $HOME
git clone git@github.com:northeastern-rc/training-lammps.git 
cd training-lammps
```
