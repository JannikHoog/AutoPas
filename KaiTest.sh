#!/bin/bash
#SBATCH -J FirstTestsWithCluster
#SBATCH -o ./%x.%j.%N.out
#SBATCH -D ./build
#SBATCH --get-user-env
#SBATCH --clusters=cm2
//#SBATCH --partition=cm2
//#SBATCH --mem=150MB
#SBATCH --cpus-per-task=1
#SBATCH --export=NONE
#SBATCH --mail-user=jannik.hoog@gmx.de
#SBATCH --mail-type=end
#SBATCH --time=00:01:00

./build/examples/md-flexible/md-flexible --yaml-filename fallingDrop.yaml