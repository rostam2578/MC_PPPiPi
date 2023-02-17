#! /bin/bash

######## Part 1 #########
# Script parameters     #
#########################

# Specify the partition name from which resources will be allocated, mandatory option
#SBATCH --partition=cpu

# Specify the QOS, mandatory option
#SBATCH --qos=normal

# Specify which group you belong to, mandatory option
# This is for the accounting, so if you belong to many group,
# write the experiment which will pay for your resource consumption
#SBATCH --account=mlgpu

# Specify your job name, optional option, but strongly recommand to specify some name
#SBATCH --job-name=dump_pppipi

# Specify the output file path of your job
# Attention!! Your afs account must have write access to the path
# Or the job will be FAILED!
#SBATCH --output=/hpcfs/bes/mlgpu/hoseinkk/MLTracking/otherparticles/pppipi/generate/%j.dump.out

# Specify memory to use, or slurm will allocate all available memory in MB
#SBATCH --mem-per-cpu=50000


######## Part 2 ######
# Script workload    #
######################

time(boss.exe dump_pppipi_1.txt)

