#!/bin/bash
#SBATCH --cpus-per-task 4  # important settings
#SBATCH -e slurm/output/slurm-%j.err  # files for stderr / stdout
#SBATCH -o slurm/output/slurm-%j.out

# CONDA_BASE=$(conda info --base)  # for some reason necessary with conda
# source $CONDA_BASE/etc/profile.d/conda.sh
# conda activate mmdb

source ../../bachelorthesis/venv/bin/activate

# nvidia-smi  # test if it works
# python -c "import torch; print(torch.cuda.device_count())"

python3 evaluate_results.py  # run your stuff

deactivate
