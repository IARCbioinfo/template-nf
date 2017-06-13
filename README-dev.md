# Best practices and standards for IARC nextflow pipelines

## Common parameter names

- FASTA reference file: `--ref`
- BED interval file: `--bed`
- splitting the input in n pieces: `nsplit`
- FASTQ paired-end 1: `--suffix1`
- FASTQ paired-end 2: `--suffix2`
- Input folder: `--input_folder`
- Output folder: `--output_folder`
- number of CPU: `cpu` of `cpu_process`
- amount of MEM in GB: `mem` or `mem_process`
- tumor normal pairs file: `--TN_pairs`
